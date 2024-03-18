(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1710687285)
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
        (letrec ((_hash-e112576_
                  (lambda (_id112578_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _id112578_))))))
          (let ()
            (declare (not safe))
            (make-hash-table
             'test:
             gx#bound-identifier=?
             'hash:
             _hash-e112576_)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp113934 (list gxc#::void::t))
            (__tmp113932
             (let ((__tmp113933
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp113933 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp113934
         '()
         __tmp113932
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _$args112572_
        (apply make-instance gxc#::collect-bindings::t _$args112572_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp113935
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
        (make-promise __tmp113935)))
    (define gxc#apply-collect-bindings
      (lambda (_stx112564_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_self112567_
                (let ((__obj113908
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj113908))
               (__tmp113936
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112567_ _stx112564_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp113936
           gxc#current-compile-method
           _self112567_))))
    (define gxc#::lift-modules::t
      (let ((__tmp113939 (list gxc#::void::t))
            (__tmp113937
             (let ((__tmp113938
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp113938 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp113939
         '(modules)
         __tmp113937
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _$args112561_
        (apply make-instance gxc#::lift-modules::t _$args112561_)))
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
      (let ((__tmp113940
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
        (make-promise __tmp113940)))
    (define gxc#apply-lift-modules__%
      (lambda (_g113941_ _modules112532112535_ _stx112537_)
        (let ((_modules112540_
               (if (let ()
                     (declare (not safe))
                     (eq? _modules112532112535_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _modules112532112535_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_self112542_
                  (let ((__obj113910
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj113910
                       _modules112540_
                       '1
                       gxc#::lift-modules::t
                       '#f))
                    __obj113910))
                 (__tmp113942
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self112542_ _stx112537_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp113942
             gxc#current-compile-method
             _self112542_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_keys112531112549_ . _args112551_)
        (apply gxc#apply-lift-modules__%
               _keys112531112549_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys112531112549_
                  'modules:
                  absent-value))
               _args112551_)))
    (define gxc#apply-lift-modules
      (lambda _args112533112557_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _args112533112557_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp113945 (list))
            (__tmp113943
             (let ((__tmp113944
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp113944 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp113945
         '()
         __tmp113943
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _$args112527_
        (apply make-instance gxc#::find-runtime-code::t _$args112527_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp113946
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
        (make-promise __tmp113946)))
    (define gxc#apply-find-runtime-code
      (lambda (_stx112519_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_self112522_
                (let ((__obj113912
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj113912))
               (__tmp113947
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112522_ _stx112519_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp113947
           gxc#current-compile-method
           _self112522_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp113950 (list gxc#::false::t))
            (__tmp113948
             (let ((__tmp113949
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp113949 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp113950
         '()
         __tmp113948
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _$args112516_
        (apply make-instance gxc#::find-lambda-expression::t _$args112516_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp113951
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
        (make-promise __tmp113951)))
    (define gxc#apply-find-lambda-expression
      (lambda (_stx112508_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_self112511_
                (let ((__obj113914
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj113914))
               (__tmp113952
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112511_ _stx112508_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp113952
           gxc#current-compile-method
           _self112511_))))
    (define gxc#::count-values::t
      (let ((__tmp113955 (list gxc#::false-expression::t))
            (__tmp113953
             (let ((__tmp113954
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp113954 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp113955
         '()
         __tmp113953
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _$args112505_
        (apply make-instance gxc#::count-values::t _$args112505_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp113956
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
        (make-promise __tmp113956)))
    (define gxc#apply-count-values
      (lambda (_stx112497_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_self112500_
                (let ((__obj113916
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj113916))
               (__tmp113957
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112500_ _stx112497_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp113957
           gxc#current-compile-method
           _self112500_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp113958 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp113958
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _$args112494_
        (apply make-instance gxc#::generate-runtime-empty::t _$args112494_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp113959
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
        (make-promise __tmp113959)))
    (define gxc#::generate-loader::t
      (let ((__tmp113962 (list gxc#::generate-runtime-empty::t))
            (__tmp113960
             (let ((__tmp113961
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp113961 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp113962
         '()
         __tmp113960
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _$args112490_
        (apply make-instance gxc#::generate-loader::t _$args112490_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp113963
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
        (make-promise __tmp113963)))
    (define gxc#apply-generate-loader
      (lambda (_stx112482_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_self112485_
                (let ((__obj113919
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj113919))
               (__tmp113964
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112485_ _stx112482_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp113964
           gxc#current-compile-method
           _self112485_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp113965 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp113965
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _$args112479_
        (apply make-instance gxc#::generate-runtime::t _$args112479_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp113966
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
        (make-promise __tmp113966)))
    (define gxc#apply-generate-runtime
      (lambda (_stx112471_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_self112474_
                (let ((__obj113921
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj113921))
               (__tmp113967
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112474_ _stx112471_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp113967
           gxc#current-compile-method
           _self112474_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp113970 (list gxc#::generate-runtime::t))
            (__tmp113968
             (let ((__tmp113969
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp113969 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp113970
         '()
         __tmp113968
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _$args112468_
        (apply make-instance gxc#::generate-runtime-phi::t _$args112468_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp113971
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
        (make-promise __tmp113971)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_stx112460_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_self112463_
                (let ((__obj113923
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj113923))
               (__tmp113972
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112463_ _stx112460_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp113972
           gxc#current-compile-method
           _self112463_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp113973 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp113973
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _$args112457_
        (apply make-instance gxc#::collect-expression-refs::t _$args112457_)))
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
      (let ((__tmp113974
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
        (make-promise __tmp113974)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_g113975_ _table112428112431_ _stx112433_)
        (let ((_table112436_
               (if (let ()
                     (declare (not safe))
                     (eq? _table112428112431_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _table112428112431_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_self112438_
                  (let ((__obj113925
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj113925
                       _table112436_
                       '1
                       gxc#::collect-expression-refs::t
                       '#f))
                    __obj113925))
                 (__tmp113976
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self112438_ _stx112433_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp113976
             gxc#current-compile-method
             _self112438_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_keys112427112445_ . _args112447_)
        (apply gxc#apply-collect-expression-refs__%
               _keys112427112445_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys112427112445_ 'table: absent-value))
               _args112447_)))
    (define gxc#apply-collect-expression-refs
      (lambda _args112429112453_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _args112429112453_)))
    (define gxc#::generate-meta::t
      (let ((__tmp113979 (list gxc#::void-expression::t))
            (__tmp113977
             (let ((__tmp113978
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp113978 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp113979
         '(state)
         __tmp113977
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _$args112423_
        (apply make-instance gxc#::generate-meta::t _$args112423_)))
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
      (let ((__tmp113980
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
        (make-promise __tmp113980)))
    (define gxc#apply-generate-meta__%
      (lambda (_g113981_ _state112394112397_ _stx112399_)
        (let ((_state112402_
               (if (let ()
                     (declare (not safe))
                     (eq? _state112394112397_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _state112394112397_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_self112404_
                  (let ((__obj113927
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj113927
                       _state112402_
                       '1
                       gxc#::generate-meta::t
                       '#f))
                    __obj113927))
                 (__tmp113982
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self112404_ _stx112399_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp113982
             gxc#current-compile-method
             _self112404_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_keys112393112411_ . _args112413_)
        (apply gxc#apply-generate-meta__%
               _keys112393112411_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys112393112411_ 'state: absent-value))
               _args112413_)))
    (define gxc#apply-generate-meta
      (lambda _args112395112419_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _args112395112419_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp113985 (list))
            (__tmp113983
             (let ((__tmp113984
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp113984 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp113985
         '(state)
         __tmp113983
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _$args112389_
        (apply make-instance gxc#::generate-meta-phi::t _$args112389_)))
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
      (let ((__tmp113986
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
        (make-promise __tmp113986)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_g113987_ _state112360112363_ _stx112365_)
        (let ((_state112368_
               (if (let ()
                     (declare (not safe))
                     (eq? _state112360112363_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _state112360112363_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_self112370_
                  (let ((__obj113929
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj113929
                       _state112368_
                       '1
                       gxc#::generate-meta-phi::t
                       '#f))
                    __obj113929))
                 (__tmp113988
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self112370_ _stx112365_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp113988
             gxc#current-compile-method
             _self112370_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_keys112359112377_ . _args112379_)
        (apply gxc#apply-generate-meta-phi__%
               _keys112359112377_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys112359112377_ 'state: absent-value))
               _args112379_)))
    (define gxc#apply-generate-meta-phi
      (lambda _args112361112385_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _args112361112385_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_self112288_ _stx112289_)
        (let* ((_g112291112308_
                (lambda (_g112292112305_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112292112305_))))
               (_g112290112355_
                (lambda (_g112292112311_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112292112311_))
                      (let ((_e112297112313_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112292112311_))))
                        (let ((_hd112296112316_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112297112313_)))
                              (_tl112295112318_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112297112313_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112295112318_))
                              (let ((_e112300112321_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112295112318_))))
                                (let ((_hd112299112324_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112300112321_)))
                                      (_tl112298112326_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112300112321_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl112298112326_))
                                      (let ((_e112303112329_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl112298112326_))))
                                        (let ((_hd112302112332_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e112303112329_)))
                                              (_tl112301112334_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e112303112329_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl112301112334_))
                                              ((lambda (_L112337_ _L112338_)
                                                 (let ((__tmp113989
                                                        (lambda (_bind112353_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _bind112353_))
                      (let ()
                        (declare (not safe))
                        (gxc#add-module-binding! _bind112353_ '#f))
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp113989
                                                    _L112338_)))
                                               _hd112302112332_
                                               _hd112299112324_)
                                              (let ()
                                                (declare (not safe))
                                                (_g112291112308_
                                                 _g112292112311_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g112291112308_ _g112292112311_)))))
                              (let ()
                                (declare (not safe))
                                (_g112291112308_ _g112292112311_)))))
                      (let ()
                        (declare (not safe))
                        (_g112291112308_ _g112292112311_))))))
          (declare (not safe))
          (_g112290112355_ _stx112289_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_self112220_ _stx112221_)
        (let* ((_g112223112240_
                (lambda (_g112224112237_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112224112237_))))
               (_g112222112285_
                (lambda (_g112224112243_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112224112243_))
                      (let ((_e112229112245_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112224112243_))))
                        (let ((_hd112228112248_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112229112245_)))
                              (_tl112227112250_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112229112245_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112227112250_))
                              (let ((_e112232112253_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112227112250_))))
                                (let ((_hd112231112256_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112232112253_)))
                                      (_tl112230112258_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112232112253_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl112230112258_))
                                      (let ((_e112235112261_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl112230112258_))))
                                        (let ((_hd112234112264_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e112235112261_)))
                                              (_tl112233112266_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e112235112261_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl112233112266_))
                                              ((lambda (_L112269_ _L112270_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#add-module-binding!
                                                    _L112270_
                                                    '#t)))
                                               _hd112234112264_
                                               _hd112231112256_)
                                              (let ()
                                                (declare (not safe))
                                                (_g112223112240_
                                                 _g112224112243_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g112223112240_ _g112224112243_)))))
                              (let ()
                                (declare (not safe))
                                (_g112223112240_ _g112224112243_)))))
                      (let ()
                        (declare (not safe))
                        (_g112223112240_ _g112224112243_))))))
          (declare (not safe))
          (_g112222112285_ _stx112221_))))
    (define gxc#lift-modules-module%
      (lambda (_self112162_ _stx112163_)
        (let* ((_g112165112179_
                (lambda (_g112166112176_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112166112176_))))
               (_g112164112217_
                (lambda (_g112166112182_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112166112182_))
                      (let ((_e112171112184_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112166112182_))))
                        (let ((_hd112170112187_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112171112184_)))
                              (_tl112169112189_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112171112184_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112169112189_))
                              (let ((_e112174112192_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112169112189_))))
                                (let ((_hd112173112195_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112174112192_)))
                                      (_tl112172112197_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112174112192_))))
                                  ((lambda (_L112200_ _L112201_)
                                     (let ((_ctx112214_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _L112201_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0 _self112162_ 'modules))
                                        (let ((__tmp113990
                                               (unbox (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _self112162_
                                                         'modules)))))
                                          (declare (not safe))
                                          (cons _ctx112214_ __tmp113990)))
                                       (let ((__tmp113991
                                              (lambda ()
                                                (let ((__tmp113992
                                                       (##structure-ref
                                                        _ctx112214_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self112162_
                                                   __tmp113992)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp113991
                                          gx#current-expander-context
                                          _ctx112214_))))
                                   _tl112172112197_
                                   _hd112173112195_)))
                              (let ()
                                (declare (not safe))
                                (_g112165112179_ _g112166112182_)))))
                      (let ()
                        (declare (not safe))
                        (_g112165112179_ _g112166112182_))))))
          (declare (not safe))
          (_g112164112217_ _stx112163_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_decls112118112120_ (gxc#current-compile-decls)))
          (if _decls112118112120_
              (let ((_decls112123_ _decls112118112120_))
                (let _lp112125_ ((_rest112127_ _decls112123_))
                  (let* ((_rest112128112136_ _rest112127_)
                         (_else112130112144_ (lambda () '#f))
                         (_K112132112150_
                          (lambda (_decls112147_ _decl112148_)
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _decl112148_ '(not safe)))
                                '#t
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _decl112148_ '(safe)))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_lp112125_ _decls112147_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _rest112128112136_))
                        (let ((_hd112133112153_
                               (let ()
                                 (declare (not safe))
                                 (##car _rest112128112136_)))
                              (_tl112134112155_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _rest112128112136_))))
                          (let* ((_decl112158_ _hd112133112153_)
                                 (_decls112160_ _tl112134112155_))
                            (declare (not safe))
                            (_K112132112150_ _decls112160_ _decl112158_)))
                        (let () (declare (not safe)) (_else112130112144_))))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_id112112_ _syntax?112113_)
        (let ((_eid112115_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _id112112_))
                '1
                gx#binding::t
                '#f))
              (_ht112116_
               (##structure-ref
                (gxc#current-compile-symbol-table)
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _eid112115_))
              '#!void
              (let ((__tmp113993
                     (let ((__tmp113994
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _eid112115_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp113994 _syntax?112113_))))
                (declare (not safe))
                (hash-put! _ht112116_ _eid112115_ __tmp113993))))))
    (define gxc#runtime-identifier=?
      (lambda (_id1112105_ _id2112106_)
        (letrec ((_symbol-e112108_
                  (lambda (_id112110_)
                    (if (let () (declare (not safe)) (symbol? _id112110_))
                        _id112110_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id _id112110_))))))
          (let ((__tmp113996
                 (let () (declare (not safe)) (_symbol-e112108_ _id1112105_)))
                (__tmp113995
                 (let () (declare (not safe)) (_symbol-e112108_ _id2112106_))))
            (declare (not safe))
            (eq? __tmp113996 __tmp113995)))))
    (define gxc#generate-runtime-binding-id
      (lambda (_id112083_)
        (let ((_$e112085_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _id112083_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _id112083_))
                   '#f)))
          (if _$e112085_
              ((lambda (_bind112088_)
                 (let ((_eid112090_
                        (##structure-ref _bind112088_ '1 gx#binding::t '#f))
                       (_ht112091_
                        (##structure-ref
                         (gxc#current-compile-symbol-table)
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (let ()
                         (declare (not safe))
                         (interned-symbol? _eid112090_))
                       _eid112090_
                       (let ((_$e112093_
                              (let ()
                                (declare (not safe))
                                (hash-get _ht112091_ _eid112090_))))
                         (if _$e112093_
                             (values _$e112093_)
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _bind112088_
                                    'gx#local-binding::t))
                                 (let ((_gid112096_
                                        (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-gensym-reference__0
                                           _eid112090_))))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _ht112091_
                                      _eid112090_
                                      _gid112096_))
                                   _gid112096_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _bind112088_
                                        'gx#module-binding::t))
                                     (let ((_gid112103_
                                            (let ((_$e112098_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _bind112088_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _$e112098_
                                                  ((lambda (_ns112101_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _ns112101_
                                                        '"#"
                                                        _eid112090_)))
                                                   _$e112098_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-gensym-reference__0
                                                     _eid112090_))))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _ht112091_
                                          _eid112090_
                                          _gid112103_))
                                       _gid112103_)
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Cannot compile reference to uninterned binding"
                                        _id112083_
                                        _eid112090_
                                        _bind112088_)))))))))
               _$e112085_)
              (if (let ((__tmp113997
                         (let () (declare (not safe)) (gx#stx-e _id112083_))))
                    (declare (not safe))
                    (interned-symbol? __tmp113997))
                  (let () (declare (not safe)) (gx#stx-e _id112083_))
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Cannot compile reference to uninterned identifier"
                     _id112083_)))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_id112081_)
        (if (let () (declare (not safe)) (gx#identifier? _id112081_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _id112081_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-temporary__0)))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_sym112061_ _quote?112062_)
        (let* ((_ht112064_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e112066_
                (let ()
                  (declare (not safe))
                  (hash-get _ht112064_ _sym112061_))))
          (if _$e112066_
              (values _$e112066_)
              (let ((_g112069_
                     (if _quote?112062_
                         (let ((__tmp113998 (gxc#current-compile-timestamp)))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _sym112061_
                            '"__"
                            __tmp113998))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_" _sym112061_ '"_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _ht112064_ _sym112061_ _g112069_))
                _g112069_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_sym112074_)
        (let ((_quote?112076_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-gensym-reference__%
           _sym112074_
           _quote?112076_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g114000_
        (let ((_g113999_ (let () (declare (not safe)) (##length _g114000_))))
          (cond ((let () (declare (not safe)) (##fx= _g113999_ 1))
                 (apply (lambda (_sym112074_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__0
                             _sym112074_)))
                        _g114000_))
                ((let () (declare (not safe)) (##fx= _g113999_ 2))
                 (apply (lambda (_sym112078_ _quote?112079_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__%
                             _sym112078_
                             _quote?112079_)))
                        _g114000_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g114000_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_id112058_)
        (let ((__tmp114001
               (let ()
                 (declare (not safe))
                 (gx#core-identifier-key _id112058_))))
          (declare (not safe))
          (gxc#generate-runtime-identifier-key __tmp114001))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_key112018_)
        (if (let () (declare (not safe)) (interned-symbol? _key112018_))
            _key112018_
            (if (uninterned-symbol? _key112018_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _key112018_))
                (let* ((_key112019112026_ _key112018_)
                       (_E112021112030_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching" _key112019112026_))))
                       (_K112022112046_
                        (lambda (_mark112033_ _eid112034_)
                          (let ((_$e112036_
                                 (##structure-ref
                                  _mark112033_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _$e112036_
                                ((lambda (_ht112039_)
                                   (let ((_$e112041_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _ht112039_
                                             _eid112034_))))
                                     (if _$e112041_
                                         ((lambda (_id112044_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _id112044_))
                                                _id112044_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _id112044_))))
                                          _$e112041_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-identifier-key
                                            _eid112034_)))))
                                 _$e112036_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-identifier-key
                                   _eid112034_)))))))
                  (if (let () (declare (not safe)) (##pair? _key112019112026_))
                      (let ((_hd112023112049_
                             (let ()
                               (declare (not safe))
                               (##car _key112019112026_)))
                            (_tl112024112051_
                             (let ()
                               (declare (not safe))
                               (##cdr _key112019112026_))))
                        (let* ((_eid112054_ _hd112023112049_)
                               (_mark112056_ _tl112024112051_))
                          (declare (not safe))
                          (_K112022112046_ _mark112056_ _eid112054_)))
                      (let () (declare (not safe)) (_E112021112030_))))))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_top112005_)
        (if _top112005_
            (let ((_ns112007_
                   (##structure-ref
                    (let ((__tmp114003 (gx#current-expander-context)))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp114003))
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi112008_ (gx#current-expander-phi)))
              (if _ns112007_
                  (if (fxpositive? _phi112008_)
                      (let ((__tmp114009 (number->string _phi112008_))
                            (__tmp114008 (gensym)))
                        (declare (not safe))
                        (make-symbol__1
                         _ns112007_
                         '"["
                         __tmp114009
                         '"]#_"
                         __tmp114008
                         '"_"))
                      (let ((__tmp114007 (gensym)))
                        (declare (not safe))
                        (make-symbol__1 _ns112007_ '"#_" __tmp114007 '"_")))
                  (if (fxpositive? _phi112008_)
                      (let ((__tmp114006 (number->string _phi112008_))
                            (__tmp114005 (gensym)))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp114006
                         '"]#_"
                         __tmp114005
                         '"_"))
                      (let ((__tmp114004 (gensym)))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp114004 '"_")))))
            (let ((__tmp114002 (gensym)))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp114002 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_top112014_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-temporary__% _top112014_))))
    (define gxc#generate-runtime-temporary
      (lambda _g114011_
        (let ((_g114010_ (let () (declare (not safe)) (##length _g114011_))))
          (cond ((let () (declare (not safe)) (##fx= _g114010_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__0)))
                        _g114011_))
                ((let () (declare (not safe)) (##fx= _g114010_ 1))
                 (apply (lambda (_top112016_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__% _top112016_)))
                        _g114011_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g114011_))))))
    (define gxc#generate-runtime-empty
      (lambda (_self112001_ _stx112002_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_self111848_ _stx111849_)
        (letrec ((_simplify111851_
                  (lambda (_body111899_)
                    (let _lp111901_ ((_rest111903_ _body111899_)
                                     (_r111904_ '()))
                      (let* ((_rest111905111913_ _rest111903_)
                             (_else111907111921_
                              (lambda () (reverse _r111904_)))
                             (_K111909111989_
                              (lambda (_rest111924_ _hd111925_)
                                (let* ((_hd111926111942_ _hd111925_)
                                       (_else111930111950_
                                        (lambda ()
                                          (let ((__tmp114012
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd111925_
                                                         _r111904_))))
                                            (declare (not safe))
                                            (_lp111901_
                                             _rest111924_
                                             __tmp114012)))))
                                  (let ((_K111938111979_
                                         (lambda (_exprs111977_)
                                           (let ((__tmp114013
                                                  (let ()
                                                    (declare (not safe))
                                                    (foldr1 cons
                                                            _rest111924_
                                                            _exprs111977_))))
                                             (declare (not safe))
                                             (_lp111901_
                                              __tmp114013
                                              _r111904_))))
                                        (_K111933111963_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest111924_))
                                               (let ((__tmp114014
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _hd111925_
                                                              _r111904_))))
                                                 (declare (not safe))
                                                 (_lp111901_
                                                  _rest111924_
                                                  __tmp114014))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp111901_
                                                  _rest111924_
                                                  _r111904_)))))
                                        (_K111932111955_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest111924_))
                                               (let ((__tmp114015
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _hd111925_
                                                              _r111904_))))
                                                 (declare (not safe))
                                                 (_lp111901_
                                                  _rest111924_
                                                  __tmp114015))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp111901_
                                                  _rest111924_
                                                  _r111904_))))))
                                    (let ((_try-match111929111958_
                                           (lambda ()
                                             (if (let ()
                                                   (declare (not safe))
                                                   (symbol? _hd111926111942_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_K111932111955_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_else111930111950_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd111926111942_))
                                          (let ((_tl111940111984_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd111926111942_)))
                                                (_hd111939111982_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd111926111942_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd111939111982_
                                                         'begin))
                                                (let ((_exprs111987_
                                                       _tl111940111984_))
                                                  (declare (not safe))
                                                  (_K111938111979_
                                                   _exprs111987_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd111939111982_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl111940111984_))
                                                        (let ((_tl111937111971_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl111940111984_))))
                  (if (let () (declare (not safe)) (##null? _tl111937111971_))
                      (let () (declare (not safe)) (_K111933111963_))
                      (let () (declare (not safe)) (_try-match111929111958_))))
                (let () (declare (not safe)) (_try-match111929111958_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_try-match111929111958_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_try-match111929111958_)))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest111905111913_))
                            (let ((_hd111910111992_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest111905111913_)))
                                  (_tl111911111994_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest111905111913_))))
                              (let* ((_hd111997_ _hd111910111992_)
                                     (_rest111999_ _tl111911111994_))
                                (declare (not safe))
                                (_K111909111989_ _rest111999_ _hd111997_)))
                            (let ()
                              (declare (not safe))
                              (_else111907111921_))))))))
          (let* ((_g111853111863_
                  (lambda (_g111854111860_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g111854111860_))))
                 (_g111852111896_
                  (lambda (_g111854111866_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g111854111866_))
                        (let ((_e111858111868_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g111854111866_))))
                          (let ((_hd111857111871_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e111858111868_)))
                                (_tl111856111873_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e111858111868_))))
                            ((lambda (_L111876_)
                               (let* ((_body111891_
                                       (map (lambda (_g111886111888_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self111848_
                                                 _g111886111888_)))
                                            _L111876_))
                                      (_body111893_
                                       (let ()
                                         (declare (not safe))
                                         (_simplify111851_ _body111891_))))
                                 (if (fx= (length _body111893_) '1)
                                     (car _body111893_)
                                     (let ()
                                       (declare (not safe))
                                       (cons 'begin _body111893_)))))
                             _tl111856111873_)))
                        (let ()
                          (declare (not safe))
                          (_g111853111863_ _g111854111866_))))))
            (declare (not safe))
            (_g111852111896_ _stx111849_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_self111809_ _stx111810_)
        (let* ((_g111812111822_
                (lambda (_g111813111819_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g111813111819_))))
               (_g111811111845_
                (lambda (_g111813111825_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g111813111825_))
                      (let ((_e111817111827_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g111813111825_))))
                        (let ((_hd111816111830_
                               (let ()
                                 (declare (not safe))
                                 (##car _e111817111827_)))
                              (_tl111815111832_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e111817111827_))))
                          ((lambda (_L111835_)
                             (let ((__tmp114016
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax->datum _L111835_))))
                               (declare (not safe))
                               (cons 'begin __tmp114016)))
                           _tl111815111832_)))
                      (let ()
                        (declare (not safe))
                        (_g111812111822_ _g111813111825_))))))
          (declare (not safe))
          (_g111811111845_ _stx111810_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_self111573_ _stx111574_)
        (let* ((___stx112601112602_ _stx111574_)
               (_g111578111630_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx112601112602_)))))
          (let ((___kont112603112604_
                 (lambda (_L111791_ _L111792_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self111573_ _L111791_))))
                (___kont112605112606_
                 (lambda (_L111739_ _L111740_ _L111741_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self111573_ _L111739_))))
                (___kont112609112610_
                 (lambda (_L111659_ _L111660_)
                   (let ((_decls111675_ (map gx#syntax->datum _L111660_)))
                     (let ((__tmp114019
                            (lambda ()
                              (let ((__tmp114020
                                     (let ((__tmp114023
                                            (let ()
                                              (declare (not safe))
                                              (cons 'declare _decls111675_)))
                                           (__tmp114021
                                            (let ((__tmp114022
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self111573_
                                                      _L111659_))))
                                              (declare (not safe))
                                              (cons __tmp114022 '()))))
                                       (declare (not safe))
                                       (cons __tmp114023 __tmp114021))))
                                (declare (not safe))
                                (cons 'begin __tmp114020))))
                           (__tmp114017
                            (let ((__tmp114018 (gxc#current-compile-decls)))
                              (declare (not safe))
                              (foldr1 cons __tmp114018 _decls111675_))))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp114019
                        gxc#current-compile-decls
                        __tmp114017))))))
            (let* ((___match112656112657_
                    (lambda (_e111596111683_
                             _hd111595111686_
                             _tl111594111688_
                             _e111599111691_
                             _hd111598111694_
                             _tl111597111696_
                             _e111602111699_
                             _hd111601111702_
                             _tl111600111704_
                             ___splice112607112608_
                             _target111603111707_
                             _tl111605111709_)
                      (letrec ((_loop111606111712_
                                (lambda (_hd111604111715_ _param111610111717_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd111604111715_))
                                      (let ((_e111607111720_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd111604111715_))))
                                        (let ((_lp-tl111609111725_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e111607111720_)))
                                              (_lp-hd111608111723_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e111607111720_))))
                                          (let ((__tmp114025
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd111608111723_
                                                         _param111610111717_))))
                                            (declare (not safe))
                                            (_loop111606111712_
                                             _lp-tl111609111725_
                                             __tmp114025))))
                                      (let ((_param111611111728_
                                             (reverse _param111610111717_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl111597111696_))
                                            (let ((_e111614111731_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl111597111696_))))
                                              (let ((_tl111612111736_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e111614111731_)))
                                                    (_hd111613111734_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e111614111731_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl111612111736_))
                                                    (let ((_L111739_
                                                           _hd111613111734_)
                                                          (_L111740_
                                                           _param111611111728_)
                                                          (_L111741_
                                                           _hd111601111702_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _L111741_))
                       (let ((__tmp114024
                              (memq (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L111741_))
                                    gxc#gambit-annotations)))
                         (declare (not safe))
                         (not __tmp114024)))
                  (___kont112605112606_ _L111739_ _L111740_ _L111741_)
                  (___kont112609112610_ _hd111613111734_ _hd111598111694_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g111578111630_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g111578111630_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop111606111712_ _target111603111707_ '())))))
                   (___match112630112631_
                    (lambda (_e111584111767_
                             _hd111583111770_
                             _tl111582111772_
                             _e111587111775_
                             _hd111586111778_
                             _tl111585111780_
                             _e111590111783_
                             _hd111589111786_
                             _tl111588111788_)
                      (let ((_L111791_ _hd111589111786_)
                            (_L111792_ _hd111586111778_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L111792_))
                            (___kont112603112604_ _L111791_ _L111792_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd111586111778_))
                                (let ((_e111602111699_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd111586111778_))))
                                  (let ((_tl111600111704_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e111602111699_)))
                                        (_hd111601111702_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e111602111699_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl111600111704_))
                                        (let ((___splice112607112608_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl111600111704_
                                                  '0))))
                                          (let ((_tl111605111709_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice112607112608_
                                                    '1)))
                                                (_target111603111707_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice112607112608_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl111605111709_))
                                                (___match112656112657_
                                                 _e111584111767_
                                                 _hd111583111770_
                                                 _tl111582111772_
                                                 _e111587111775_
                                                 _hd111586111778_
                                                 _tl111585111780_
                                                 _e111602111699_
                                                 _hd111601111702_
                                                 _tl111600111704_
                                                 ___splice112607112608_
                                                 _target111603111707_
                                                 _tl111605111709_)
                                                (___kont112609112610_
                                                 _hd111589111786_
                                                 _hd111586111778_))))
                                        (___kont112609112610_
                                         _hd111589111786_
                                         _hd111586111778_))))
                                (___kont112609112610_
                                 _hd111589111786_
                                 _hd111586111778_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx112601112602_))
                  (let ((_e111584111767_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx112601112602_))))
                    (let ((_tl111582111772_
                           (let ()
                             (declare (not safe))
                             (##cdr _e111584111767_)))
                          (_hd111583111770_
                           (let ()
                             (declare (not safe))
                             (##car _e111584111767_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl111582111772_))
                          (let ((_e111587111775_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl111582111772_))))
                            (let ((_tl111585111780_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e111587111775_)))
                                  (_hd111586111778_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e111587111775_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl111585111780_))
                                  (let ((_e111590111783_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl111585111780_))))
                                    (let ((_tl111588111788_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e111590111783_)))
                                          (_hd111589111786_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e111590111783_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl111588111788_))
                                          (___match112630112631_
                                           _e111584111767_
                                           _hd111583111770_
                                           _tl111582111772_
                                           _e111587111775_
                                           _hd111586111778_
                                           _tl111585111780_
                                           _e111590111783_
                                           _hd111589111786_
                                           _tl111588111788_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd111586111778_))
                                              (let ((_e111602111699_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd111586111778_))))
                                                (let ((_tl111600111704_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e111602111699_)))
                                                      (_hd111601111702_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e111602111699_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl111600111704_))
                                                      (let ((___splice112607112608_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl111600111704_ '0))))
                (let ((_tl111605111709_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice112607112608_ '1)))
                      (_target111603111707_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice112607112608_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl111605111709_))
                      (___match112656112657_
                       _e111584111767_
                       _hd111583111770_
                       _tl111582111772_
                       _e111587111775_
                       _hd111586111778_
                       _tl111585111780_
                       _e111602111699_
                       _hd111601111702_
                       _tl111600111704_
                       ___splice112607112608_
                       _target111603111707_
                       _tl111605111709_)
                      (let () (declare (not safe)) (_g111578111630_)))))
              (let () (declare (not safe)) (_g111578111630_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g111578111630_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd111586111778_))
                                      (let ((_e111602111699_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd111586111778_))))
                                        (let ((_tl111600111704_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e111602111699_)))
                                              (_hd111601111702_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e111602111699_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl111600111704_))
                                              (let ((___splice112607112608_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl111600111704_
                                                        '0))))
                                                (let ((_tl111605111709_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice112607112608_
                                                          '1)))
                                                      (_target111603111707_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice112607112608_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl111605111709_))
                                                      (___match112656112657_
                                                       _e111584111767_
                                                       _hd111583111770_
                                                       _tl111582111772_
                                                       _e111587111775_
                                                       _hd111586111778_
                                                       _tl111585111780_
                                                       _e111602111699_
                                                       _hd111601111702_
                                                       _tl111600111704_
                                                       ___splice112607112608_
                                                       _target111603111707_
                                                       _tl111605111709_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g111578111630_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g111578111630_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g111578111630_))))))
                          (let () (declare (not safe)) (_g111578111630_)))))
                  (let () (declare (not safe)) (_g111578111630_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_self111532_ _stx111533_)
        (let* ((_g111535111545_
                (lambda (_g111536111542_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g111536111542_))))
               (_g111534111570_
                (lambda (_g111536111548_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g111536111548_))
                      (let ((_e111540111550_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g111536111548_))))
                        (let ((_hd111539111553_
                               (let ()
                                 (declare (not safe))
                                 (##car _e111540111550_)))
                              (_tl111538111555_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e111540111550_))))
                          ((lambda (_L111558_)
                             (let ((_decls111568_
                                    (map gx#syntax->datum _L111558_)))
                               (gxc#current-compile-decls
                                (let ((__tmp114026
                                       (gxc#current-compile-decls)))
                                  (declare (not safe))
                                  (foldr1 cons __tmp114026 _decls111568_)))
                               (let ()
                                 (declare (not safe))
                                 (cons 'declare _decls111568_))))
                           _tl111538111555_)))
                      (let ()
                        (declare (not safe))
                        (_g111535111545_ _g111536111548_))))))
          (declare (not safe))
          (_g111534111570_ _stx111533_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_self111278_ _stx111279_)
        (let* ((_g111281111298_
                (lambda (_g111282111295_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g111282111295_))))
               (_g111280111529_
                (lambda (_g111282111301_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g111282111301_))
                      (let ((_e111287111303_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g111282111301_))))
                        (let ((_hd111286111306_
                               (let ()
                                 (declare (not safe))
                                 (##car _e111287111303_)))
                              (_tl111285111308_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e111287111303_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl111285111308_))
                              (let ((_e111290111311_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl111285111308_))))
                                (let ((_hd111289111314_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e111290111311_)))
                                      (_tl111288111316_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e111290111311_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl111288111316_))
                                      (let ((_e111293111319_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl111288111316_))))
                                        (let ((_hd111292111322_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e111293111319_)))
                                              (_tl111291111324_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e111293111319_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl111291111324_))
                                              ((lambda (_L111327_ _L111328_)
                                                 (let* ((___stx112709112710_
                                                         _L111328_)
                                                        (_g111345111359_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx112709112710_)))))
                                                   (let ((___kont112711112712_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self111278_
                                                               _L111327_))))
                                                         (___kont112713112714_
                                                          (lambda (_L111491_)
                                                            (let ((_eid111500_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _L111491_))))
                      (let ((_lambda-expr111501111503_
                             (let ()
                               (declare (not safe))
                               (gxc#apply-find-lambda-expression _L111327_))))
                        (if _lambda-expr111501111503_
                            (let* ((_lambda-expr111506_
                                    _lambda-expr111501111503_)
                                   (__tmp114027
                                    (gxc#current-compile-runtime-names)))
                              (declare (not safe))
                              (hash-put!
                               __tmp114027
                               _lambda-expr111506_
                               _eid111500_))
                            '#f))
                      (let ((__tmp114028
                             (let ((__tmp114029
                                    (let ((__tmp114030
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self111278_
                                              _L111327_))))
                                      (declare (not safe))
                                      (cons __tmp114030 '()))))
                               (declare (not safe))
                               (cons _eid111500_ __tmp114029))))
                        (declare (not safe))
                        (cons 'define __tmp114028)))))
                 (___kont112715112716_
                  (lambda ()
                    (let* ((_tmp111366_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_body111475_
                            (let _lp111368_ ((_rest111370_ _L111328_)
                                             (_k111371_ '0)
                                             (_r111372_ '()))
                              (let* ((___stx112679112680_ _rest111370_)
                                     (_g111377111394_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx112679112680_)))))
                                (let ((___kont112681112682_
                                       (lambda (_L111462_)
                                         (let ((__tmp114031
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _k111371_ '1))))
                                           (declare (not safe))
                                           (_lp111368_
                                            _L111462_
                                            __tmp114031
                                            _r111372_))))
                                      (___kont112683112684_
                                       (lambda (_L111435_ _L111436_)
                                         (let ((__tmp114038
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _k111371_ '1)))
                                               (__tmp114032
                                                (let ((__tmp114033
                                                       (let ((__tmp114034
                                                              (let ((__tmp114037
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-binding-id _L111436_)))
                            (__tmp114035
                             (let ((__tmp114036
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-values-ref
                                       _tmp111366_
                                       _k111371_
                                       _L111435_))))
                               (declare (not safe))
                               (cons __tmp114036 '()))))
                        (declare (not safe))
                        (cons __tmp114037 __tmp114035))))
                 (declare (not safe))
                 (cons 'define __tmp114034))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp114033
                                                        _r111372_))))
                                           (declare (not safe))
                                           (_lp111368_
                                            _L111435_
                                            __tmp114038
                                            __tmp114032))))
                                      (___kont112685112686_
                                       (lambda (_L111406_)
                                         (let ((__tmp114039
                                                (let ((__tmp114040
                                                       (let ((__tmp114041
                                                              (let ((__tmp114044
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-binding-id _L111406_)))
                            (__tmp114042
                             (let ((__tmp114043
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-values->list
                                       _tmp111366_
                                       _k111371_))))
                               (declare (not safe))
                               (cons __tmp114043 '()))))
                        (declare (not safe))
                        (cons __tmp114044 __tmp114042))))
                 (declare (not safe))
                 (cons 'define __tmp114041))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp114040 '()))))
                                           (declare (not safe))
                                           (foldl1 cons
                                                   __tmp114039
                                                   _r111372_))))
                                      (___kont112687112688_
                                       (lambda () (reverse _r111372_))))
                                  (let ((_g111375111422_
                                         (lambda ()
                                           (let ((_L111406_
                                                  ___stx112679112680_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier? _L111406_))
                                                 (___kont112685112686_
                                                  _L111406_)
                                                 (___kont112687112688_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx112679112680_))
                                        (let ((_e111382111451_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx112679112680_))))
                                          (let ((_tl111380111456_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e111382111451_)))
                                                (_hd111381111454_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e111382111451_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd111381111454_))
                                                (let ((_e111383111459_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd111381111454_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e111383111459_
                                                                '#f))
                                                      (___kont112681112682_
                                                       _tl111380111456_)
                                                      (___kont112683112684_
                                                       _tl111380111456_
                                                       _hd111381111454_)))
                                                (___kont112683112684_
                                                 _tl111380111456_
                                                 _hd111381111454_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g111375111422_)))))))))
                      (let ((__tmp114045
                             (let ((__tmp114048
                                    (let ((__tmp114049
                                           (let ((__tmp114050
                                                  (let ((__tmp114051
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self111278_
                                                            _L111327_))))
                                                    (declare (not safe))
                                                    (cons __tmp114051 '()))))
                                             (declare (not safe))
                                             (cons _tmp111366_ __tmp114050))))
                                      (declare (not safe))
                                      (cons 'define __tmp114049)))
                                   (__tmp114046
                                    (let ((__tmp114047
                                           (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-check-values
                                              _tmp111366_
                                              _L111328_
                                              _L111327_))))
                                      (declare (not safe))
                                      (cons __tmp114047 _body111475_))))
                               (declare (not safe))
                               (cons __tmp114048 __tmp114046))))
                        (declare (not safe))
                        (cons 'begin __tmp114045))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx112709112710_))
                                                         (let ((_e111349111513_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx112709112710_))))
                   (let ((_tl111347111518_
                          (let ()
                            (declare (not safe))
                            (##cdr _e111349111513_)))
                         (_hd111348111516_
                          (let ()
                            (declare (not safe))
                            (##car _e111349111513_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _hd111348111516_))
                         (let ((_e111350111521_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd111348111516_))))
                           (if (let ()
                                 (declare (not safe))
                                 (equal? _e111350111521_ '#f))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl111347111518_))
                                   (___kont112711112712_)
                                   (___kont112715112716_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl111347111518_))
                                   (___kont112713112714_ _hd111348111516_)
                                   (___kont112715112716_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl111347111518_))
                             (___kont112713112714_ _hd111348111516_)
                             (___kont112715112716_)))))
                 (___kont112715112716_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd111292111322_
                                               _hd111289111314_)
                                              (let ()
                                                (declare (not safe))
                                                (_g111281111298_
                                                 _g111282111301_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g111281111298_ _g111282111301_)))))
                              (let ()
                                (declare (not safe))
                                (_g111281111298_ _g111282111301_)))))
                      (let ()
                        (declare (not safe))
                        (_g111281111298_ _g111282111301_))))))
          (declare (not safe))
          (_g111280111529_ _stx111279_))))
    (define gxc#generate-runtime-check-values
      (lambda (_vals111254_ _hd111255_ _expr111256_)
        (let ((_$e111258_
               (let ()
                 (declare (not safe))
                 (gxc#apply-count-values _expr111256_))))
          (if _$e111258_
              ((lambda (_count111261_)
                 (let ((_len111263_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _hd111255_)))
                       (_cmp111264_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _hd111255_))
                            fx=
                            fx>=)))
                   (if (or (fx= _len111263_ '0)
                           (_cmp111264_ _count111261_ _len111263_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _expr111256_
                          _hd111255_)))))
               _$e111258_)
              (let* ((_len111269_
                      (let () (declare (not safe)) (gx#stx-length _hd111255_)))
                     (_cmp111271_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _hd111255_))
                          '##fx=
                          '##fx>=))
                     (_errmsg111273_
                      (string-append
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-list? _hd111255_))
                           '"Context expects "
                           '"Context expects at least ")
                       (number->string _len111269_)
                       '" values"))
                     (_count111275_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (and (let ((__tmp114075
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _hd111255_))))
                           (declare (not safe))
                           (not __tmp114075))
                         (fx= _len111269_ '0))
                    '#!void
                    (let ((__tmp114052
                           (let ((__tmp114071
                                  (let ((__tmp114072
                                         (let ((__tmp114073
                                                (let ((__tmp114074
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-values-count
                                                          _vals111254_))))
                                                  (declare (not safe))
                                                  (cons __tmp114074 '()))))
                                           (declare (not safe))
                                           (cons _count111275_ __tmp114073))))
                                    (declare (not safe))
                                    (cons __tmp114072 '())))
                                 (__tmp114053
                                  (let ((__tmp114054
                                         (let ((__tmp114055
                                                (let ((__tmp114060
                                                       (let ((__tmp114061
                                                              (let ((__tmp114062
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-decls-unsafe?))
                                 (let ((__tmp114069
                                        (let ((__tmp114070
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _len111269_ '()))))
                                          (declare (not safe))
                                          (cons _count111275_ __tmp114070))))
                                   (declare (not safe))
                                   (cons _cmp111271_ __tmp114069))
                                 (let ((__tmp114063
                                        (let ((__tmp114064
                                               (let ((__tmp114065
                                                      (let ((__tmp114066
                                                             (let ((__tmp114067
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114068
                                   (let ()
                                     (declare (not safe))
                                     (cons _len111269_ '()))))
                              (declare (not safe))
                              (cons _count111275_ __tmp114068))))
                       (declare (not safe))
                       (cons _cmp111271_ __tmp114067))))
                (declare (not safe))
                (cons __tmp114066 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '(declare (not safe))
                                                       __tmp114065))))
                                          (declare (not safe))
                                          (cons '() __tmp114064))))
                                   (declare (not safe))
                                   (cons 'let __tmp114063)))))
                        (declare (not safe))
                        (cons __tmp114062 '()))))
                 (declare (not safe))
                 (cons 'not __tmp114061)))
              (__tmp114056
               (let ((__tmp114057
                      (let ((__tmp114058
                             (let ((__tmp114059
                                    (let ()
                                      (declare (not safe))
                                      (cons _count111275_ '()))))
                               (declare (not safe))
                               (cons _errmsg111273_ __tmp114059))))
                        (declare (not safe))
                        (cons 'error __tmp114058))))
                 (declare (not safe))
                 (cons __tmp114057 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp114060
                                                        __tmp114056))))
                                           (declare (not safe))
                                           (cons 'if __tmp114055))))
                                    (declare (not safe))
                                    (cons __tmp114054 '()))))
                             (declare (not safe))
                             (cons __tmp114071 __tmp114053))))
                      (declare (not safe))
                      (cons 'let __tmp114052))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_var111249_)
        (letrec ((_generate-inline111251_
                  (lambda ()
                    (let ((__tmp114076
                           (let ((__tmp114081
                                  (let ((__tmp114082
                                         (let ()
                                           (declare (not safe))
                                           (cons _var111249_ '()))))
                                    (declare (not safe))
                                    (cons '##values? __tmp114082)))
                                 (__tmp114077
                                  (let ((__tmp114079
                                         (let ((__tmp114080
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _var111249_ '()))))
                                           (declare (not safe))
                                           (cons '##vector-length
                                                 __tmp114080)))
                                        (__tmp114078
                                         (let ()
                                           (declare (not safe))
                                           (cons '1 '()))))
                                    (declare (not safe))
                                    (cons __tmp114079 __tmp114078))))
                             (declare (not safe))
                             (cons __tmp114081 __tmp114077))))
                      (declare (not safe))
                      (cons 'if __tmp114076)))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline111251_))
              (let ((__tmp114083
                     (let ((__tmp114084
                            (let ((__tmp114085
                                   (let ((__tmp114086
                                          (let ()
                                            (declare (not safe))
                                            (_generate-inline111251_))))
                                     (declare (not safe))
                                     (cons __tmp114086 '()))))
                              (declare (not safe))
                              (cons '(declare (not safe)) __tmp114085))))
                       (declare (not safe))
                       (cons '() __tmp114084))))
                (declare (not safe))
                (cons 'let __tmp114083))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_var111242_ _i111243_ _rest111244_)
        (letrec ((_generate-inline111246_
                  (lambda ()
                    (if (and (fx= _i111243_ '0)
                             (let ((__tmp114097
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _rest111244_))))
                               (declare (not safe))
                               (not __tmp114097)))
                        (let ((__tmp114089
                               (let ((__tmp114095
                                      (let ((__tmp114096
                                             (let ()
                                               (declare (not safe))
                                               (cons _var111242_ '()))))
                                        (declare (not safe))
                                        (cons '##values? __tmp114096)))
                                     (__tmp114090
                                      (let ((__tmp114092
                                             (let ((__tmp114093
                                                    (let ((__tmp114094
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '0 '()))))
                                                      (declare (not safe))
                                                      (cons _var111242_
                                                            __tmp114094))))
                                               (declare (not safe))
                                               (cons '##vector-ref
                                                     __tmp114093)))
                                            (__tmp114091
                                             (let ()
                                               (declare (not safe))
                                               (cons _var111242_ '()))))
                                        (declare (not safe))
                                        (cons __tmp114092 __tmp114091))))
                                 (declare (not safe))
                                 (cons __tmp114095 __tmp114090))))
                          (declare (not safe))
                          (cons 'if __tmp114089))
                        (let ((__tmp114087
                               (let ((__tmp114088
                                      (let ()
                                        (declare (not safe))
                                        (cons _i111243_ '()))))
                                 (declare (not safe))
                                 (cons _var111242_ __tmp114088))))
                          (declare (not safe))
                          (cons '##vector-ref __tmp114087))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline111246_))
              (let ((__tmp114098
                     (let ((__tmp114099
                            (let ((__tmp114100
                                   (let ((__tmp114101
                                          (let ()
                                            (declare (not safe))
                                            (_generate-inline111246_))))
                                     (declare (not safe))
                                     (cons __tmp114101 '()))))
                              (declare (not safe))
                              (cons '(declare (not safe)) __tmp114100))))
                       (declare (not safe))
                       (cons '() __tmp114099))))
                (declare (not safe))
                (cons 'let __tmp114098))))))
    (define gxc#generate-runtime-values->list
      (lambda (_var111239_ _i111240_)
        (if (fx= _i111240_ '0)
            (if (let ()
                  (declare (not safe))
                  (gxc#current-compile-decls-unsafe?))
                (let ((__tmp114149
                       (let ((__tmp114156
                              (let ((__tmp114157
                                     (let ()
                                       (declare (not safe))
                                       (cons _var111239_ '()))))
                                (declare (not safe))
                                (cons '##values? __tmp114157)))
                             (__tmp114150
                              (let ((__tmp114154
                                     (let ((__tmp114155
                                            (let ()
                                              (declare (not safe))
                                              (cons _var111239_ '()))))
                                       (declare (not safe))
                                       (cons '##vector->list __tmp114155)))
                                    (__tmp114151
                                     (let ((__tmp114152
                                            (let ((__tmp114153
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _var111239_ '()))))
                                              (declare (not safe))
                                              (cons 'list __tmp114153))))
                                       (declare (not safe))
                                       (cons __tmp114152 '()))))
                                (declare (not safe))
                                (cons __tmp114154 __tmp114151))))
                         (declare (not safe))
                         (cons __tmp114156 __tmp114150))))
                  (declare (not safe))
                  (cons 'if __tmp114149))
                (let ((__tmp114136
                       (let ((__tmp114137
                              (let ((__tmp114138
                                     (let ((__tmp114139
                                            (let ((__tmp114140
                                                   (let ((__tmp114147
                                                          (let ((__tmp114148
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _var111239_ '()))))
                    (declare (not safe))
                    (cons '##values? __tmp114148)))
                 (__tmp114141
                  (let ((__tmp114145
                         (let ((__tmp114146
                                (let ()
                                  (declare (not safe))
                                  (cons _var111239_ '()))))
                           (declare (not safe))
                           (cons '##vector->list __tmp114146)))
                        (__tmp114142
                         (let ((__tmp114143
                                (let ((__tmp114144
                                       (let ()
                                         (declare (not safe))
                                         (cons _var111239_ '()))))
                                  (declare (not safe))
                                  (cons 'list __tmp114144))))
                           (declare (not safe))
                           (cons __tmp114143 '()))))
                    (declare (not safe))
                    (cons __tmp114145 __tmp114142))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114147
                                                           __tmp114141))))
                                              (declare (not safe))
                                              (cons 'if __tmp114140))))
                                       (declare (not safe))
                                       (cons __tmp114139 '()))))
                                (declare (not safe))
                                (cons '(declare (not safe)) __tmp114138))))
                         (declare (not safe))
                         (cons '() __tmp114137))))
                  (declare (not safe))
                  (cons 'let __tmp114136)))
            (if (fx= _i111240_ '1)
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (let ((__tmp114127
                           (let ((__tmp114134
                                  (let ((__tmp114135
                                         (let ()
                                           (declare (not safe))
                                           (cons _var111239_ '()))))
                                    (declare (not safe))
                                    (cons '##values? __tmp114135)))
                                 (__tmp114128
                                  (let ((__tmp114130
                                         (let ((__tmp114131
                                                (let ((__tmp114132
                                                       (let ((__tmp114133
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _var111239_ '()))))
                 (declare (not safe))
                 (cons '##vector->list __tmp114133))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp114132 '()))))
                                           (declare (not safe))
                                           (cons '##cdr __tmp114131)))
                                        (__tmp114129
                                         (let ()
                                           (declare (not safe))
                                           (cons ''() '()))))
                                    (declare (not safe))
                                    (cons __tmp114130 __tmp114129))))
                             (declare (not safe))
                             (cons __tmp114134 __tmp114128))))
                      (declare (not safe))
                      (cons 'if __tmp114127))
                    (let ((__tmp114114
                           (let ((__tmp114115
                                  (let ((__tmp114116
                                         (let ((__tmp114117
                                                (let ((__tmp114118
                                                       (let ((__tmp114125
                                                              (let ((__tmp114126
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _var111239_ '()))))
                        (declare (not safe))
                        (cons '##values? __tmp114126)))
                     (__tmp114119
                      (let ((__tmp114121
                             (let ((__tmp114122
                                    (let ((__tmp114123
                                           (let ((__tmp114124
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _var111239_ '()))))
                                             (declare (not safe))
                                             (cons '##vector->list
                                                   __tmp114124))))
                                      (declare (not safe))
                                      (cons __tmp114123 '()))))
                               (declare (not safe))
                               (cons '##cdr __tmp114122)))
                            (__tmp114120
                             (let () (declare (not safe)) (cons ''() '()))))
                        (declare (not safe))
                        (cons __tmp114121 __tmp114120))))
                 (declare (not safe))
                 (cons __tmp114125 __tmp114119))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'if __tmp114118))))
                                           (declare (not safe))
                                           (cons __tmp114117 '()))))
                                    (declare (not safe))
                                    (cons '(declare (not safe)) __tmp114116))))
                             (declare (not safe))
                             (cons '() __tmp114115))))
                      (declare (not safe))
                      (cons 'let __tmp114114)))
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (let ((__tmp114110
                           (let ((__tmp114112
                                  (let ((__tmp114113
                                         (let ()
                                           (declare (not safe))
                                           (cons _var111239_ '()))))
                                    (declare (not safe))
                                    (cons '##vector->list __tmp114113)))
                                 (__tmp114111
                                  (let ()
                                    (declare (not safe))
                                    (cons _i111240_ '()))))
                             (declare (not safe))
                             (cons __tmp114112 __tmp114111))))
                      (declare (not safe))
                      (cons '##list-tail __tmp114110))
                    (let ((__tmp114102
                           (let ((__tmp114103
                                  (let ((__tmp114104
                                         (let ((__tmp114105
                                                (let ((__tmp114106
                                                       (let ((__tmp114108
                                                              (let ((__tmp114109
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _var111239_ '()))))
                        (declare (not safe))
                        (cons '##vector->list __tmp114109)))
                     (__tmp114107
                      (let () (declare (not safe)) (cons _i111240_ '()))))
                 (declare (not safe))
                 (cons __tmp114108 __tmp114107))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '##list-tail
                                                        __tmp114106))))
                                           (declare (not safe))
                                           (cons __tmp114105 '()))))
                                    (declare (not safe))
                                    (cons '(declare (not safe)) __tmp114104))))
                             (declare (not safe))
                             (cons '() __tmp114103))))
                      (declare (not safe))
                      (cons 'let __tmp114102)))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_self111171_ _stx111172_)
        (let* ((_g111174111191_
                (lambda (_g111175111188_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g111175111188_))))
               (_g111173111236_
                (lambda (_g111175111194_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g111175111194_))
                      (let ((_e111180111196_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g111175111194_))))
                        (let ((_hd111179111199_
                               (let ()
                                 (declare (not safe))
                                 (##car _e111180111196_)))
                              (_tl111178111201_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e111180111196_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl111178111201_))
                              (let ((_e111183111204_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl111178111201_))))
                                (let ((_hd111182111207_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e111183111204_)))
                                      (_tl111181111209_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e111183111204_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl111181111209_))
                                      (let ((_e111186111212_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl111181111209_))))
                                        (let ((_hd111185111215_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e111186111212_)))
                                              (_tl111184111217_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e111186111212_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl111184111217_))
                                              ((lambda (_L111220_ _L111221_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-lambda-form
                                                    _self111171_
                                                    _L111221_
                                                    _L111220_)))
                                               _hd111185111215_
                                               _hd111182111207_)
                                              (let ()
                                                (declare (not safe))
                                                (_g111174111191_
                                                 _g111175111194_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g111174111191_ _g111175111194_)))))
                              (let ()
                                (declare (not safe))
                                (_g111174111191_ _g111175111194_)))))
                      (let ()
                        (declare (not safe))
                        (_g111174111191_ _g111175111194_))))))
          (declare (not safe))
          (_g111173111236_ _stx111172_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_self111130_ _hd111131_ _body111132_)
        (let* ((_hd111134_
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-lambda-head _hd111131_)))
               (_body111136_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _self111130_ _body111132_)))
               (_body111168_
                (let* ((_body111137111145_ _body111136_)
                       (_else111139111153_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (cons _body111136_ '()))))
                       (_K111141111158_
                        (lambda (_exprs111156_) _exprs111156_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _body111137111145_))
                      (let ((_hd111142111161_
                             (let ()
                               (declare (not safe))
                               (##car _body111137111145_)))
                            (_tl111143111163_
                             (let ()
                               (declare (not safe))
                               (##cdr _body111137111145_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _hd111142111161_ 'begin))
                            (let ((_exprs111166_ _tl111143111163_))
                              (declare (not safe))
                              (_K111141111158_ _exprs111166_))
                            (let ()
                              (declare (not safe))
                              (_else111139111153_))))
                      (let () (declare (not safe)) (_else111139111153_))))))
          (let ((__tmp114158
                 (let () (declare (not safe)) (cons _hd111134_ _body111168_))))
            (declare (not safe))
            (cons 'lambda __tmp114158)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_hd111128_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _hd111128_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_self109670_ _stx109671_)
        (letrec ((_dispatch-case?109673_
                  (lambda (_hd110358_ _body110359_)
                    (let* ((_form110361_
                            (let ((__tmp114159
                                   (let ()
                                     (declare (not safe))
                                     (cons _body110359_ '()))))
                              (declare (not safe))
                              (cons _hd110358_ __tmp114159)))
                           (___stx112741112742_ _form110361_)
                           (_g110366110523_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx112741112742_)))))
                      (let ((___kont112743112744_
                             (lambda (_L111048_ _L111049_ _L111050_) '#t))
                            (___kont112749112750_
                             (lambda (_L110836_
                                      _L110837_
                                      _L110838_
                                      _L110839_
                                      _L110840_
                                      _L110841_)
                               '#t))
                            (___kont112755112756_
                             (lambda (_L110631_ _L110632_ _L110633_ _L110634_)
                               '#t))
                            (___kont112757112758_ (lambda () '#f)))
                        (let* ((___match112882112883_
                                (lambda (_e110485110535_
                                         _hd110484110538_
                                         _tl110483110540_
                                         _e110488110543_
                                         _hd110487110546_
                                         _tl110486110548_
                                         _e110491110551_
                                         _hd110490110554_
                                         _tl110489110556_
                                         _e110494110559_
                                         _hd110493110562_
                                         _tl110492110564_
                                         _e110497110567_
                                         _hd110496110570_
                                         _tl110495110572_
                                         _e110500110575_
                                         _hd110499110578_
                                         _tl110498110580_
                                         _e110503110583_
                                         _hd110502110586_
                                         _tl110501110588_
                                         _e110506110591_
                                         _hd110505110594_
                                         _tl110504110596_
                                         _e110509110599_
                                         _hd110508110602_
                                         _tl110507110604_
                                         _e110512110607_
                                         _hd110511110610_
                                         _tl110510110612_
                                         _e110515110615_
                                         _hd110514110618_
                                         _tl110513110620_
                                         _e110518110623_
                                         _hd110517110626_
                                         _tl110516110628_)
                                  (let ((_L110631_ _hd110517110626_)
                                        (_L110632_ _hd110508110602_)
                                        (_L110633_ _hd110499110578_)
                                        (_L110634_ _hd110484110538_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _L110634_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _L110633_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L110634_
                                                _L110631_))
                                             (let ((__tmp114160
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#free-identifier=?
                                                       _L110632_
                                                       _L110634_))))
                                               (declare (not safe))
                                               (not __tmp114160)))
                                        (___kont112755112756_
                                         _L110631_
                                         _L110632_
                                         _L110633_
                                         _L110634_)
                                        (___kont112757112758_)))))
                               (___match112854112855_
                                (lambda (_e110485110535_
                                         _hd110484110538_
                                         _tl110483110540_
                                         _e110488110543_
                                         _hd110487110546_
                                         _tl110486110548_
                                         _e110491110551_
                                         _hd110490110554_
                                         _tl110489110556_
                                         _e110494110559_
                                         _hd110493110562_
                                         _tl110492110564_
                                         _e110497110567_
                                         _hd110496110570_
                                         _tl110495110572_
                                         _e110500110575_
                                         _hd110499110578_
                                         _tl110498110580_
                                         _e110503110583_
                                         _hd110502110586_
                                         _tl110501110588_
                                         _e110506110591_
                                         _hd110505110594_
                                         _tl110504110596_
                                         _e110509110599_
                                         _hd110508110602_
                                         _tl110507110604_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl110501110588_))
                                      (let ((_e110512110607_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl110501110588_))))
                                        (let ((_tl110510110612_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e110512110607_)))
                                              (_hd110511110610_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e110512110607_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd110511110610_))
                                              (let ((_e110515110615_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd110511110610_))))
                                                (let ((_tl110513110620_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e110515110615_)))
                                                      (_hd110514110618_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e110515110615_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd110514110618_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _hd110514110618_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl110513110620_))
                      (let ((_e110518110623_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl110513110620_))))
                        (let ((_tl110516110628_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110518110623_)))
                              (_hd110517110626_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110518110623_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl110516110628_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl110510110612_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl110486110548_))
                                      (___match112882112883_
                                       _e110485110535_
                                       _hd110484110538_
                                       _tl110483110540_
                                       _e110488110543_
                                       _hd110487110546_
                                       _tl110486110548_
                                       _e110491110551_
                                       _hd110490110554_
                                       _tl110489110556_
                                       _e110494110559_
                                       _hd110493110562_
                                       _tl110492110564_
                                       _e110497110567_
                                       _hd110496110570_
                                       _tl110495110572_
                                       _e110500110575_
                                       _hd110499110578_
                                       _tl110498110580_
                                       _e110503110583_
                                       _hd110502110586_
                                       _tl110501110588_
                                       _e110506110591_
                                       _hd110505110594_
                                       _tl110504110596_
                                       _e110509110599_
                                       _hd110508110602_
                                       _tl110507110604_
                                       _e110512110607_
                                       _hd110511110610_
                                       _tl110510110612_
                                       _e110515110615_
                                       _hd110514110618_
                                       _tl110513110620_
                                       _e110518110623_
                                       _hd110517110626_
                                       _tl110516110628_)
                                      (___kont112757112758_))
                                  (___kont112757112758_))
                              (___kont112757112758_))))
                      (___kont112757112758_))
                  (___kont112757112758_))
              (___kont112757112758_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont112757112758_))))
                                      (___kont112757112758_))))
                               (___match112784112785_
                                (lambda (_e110421110676_
                                         _hd110420110679_
                                         _tl110419110681_
                                         ___splice112751112752_
                                         _target110422110684_
                                         _tl110424110686_)
                                  (letrec ((_loop110425110689_
                                            (lambda (_hd110423110692_
                                                     _arg110429110694_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110423110692_))
                                                  (let ((_e110426110697_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110423110692_))))
                                                    (let ((_lp-tl110428110702_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110426110697_)))
                                                          (_lp-hd110427110700_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110426110697_))))
                                                      (let ((__tmp114175
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd110427110700_ _arg110429110694_))))
                (declare (not safe))
                (_loop110425110689_ _lp-tl110428110702_ __tmp114175))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg110430110705_
                                                         (reverse _arg110429110694_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl110419110681_))
                                                        (let ((_e110433110708_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl110419110681_))))
                  (let ((_tl110431110713_
                         (let () (declare (not safe)) (##cdr _e110433110708_)))
                        (_hd110432110711_
                         (let ()
                           (declare (not safe))
                           (##car _e110433110708_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd110432110711_))
                        (let ((_e110436110716_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd110432110711_))))
                          (let ((_tl110434110721_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110436110716_)))
                                (_hd110435110719_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110436110716_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110435110719_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd110435110719_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110434110721_))
                                        (let ((_e110439110724_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110434110721_))))
                                          (let ((_tl110437110729_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110439110724_)))
                                                (_hd110438110727_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110439110724_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd110438110727_))
                                                (let ((_e110442110732_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd110438110727_))))
                                                  (let ((_tl110440110737_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e110442110732_)))
                                                        (_hd110441110735_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e110442110732_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd110441110735_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd110441110735_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl110440110737_))
                        (let ((_e110445110740_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl110440110737_))))
                          (let ((_tl110443110745_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110445110740_)))
                                (_hd110444110743_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110445110740_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl110443110745_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl110437110729_))
                                    (let ((_e110448110748_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl110437110729_))))
                                      (let ((_tl110446110753_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e110448110748_)))
                                            (_hd110447110751_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e110448110748_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd110447110751_))
                                            (let ((_e110451110756_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd110447110751_))))
                                              (let ((_tl110449110761_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110451110756_)))
                                                    (_hd110450110759_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110451110756_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd110450110759_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd110450110759_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl110449110761_))
                                                            (let ((_e110454110764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl110449110761_))))
                      (let ((_tl110452110769_
                             (let ()
                               (declare (not safe))
                               (##cdr _e110454110764_)))
                            (_hd110453110767_
                             (let ()
                               (declare (not safe))
                               (##car _e110454110764_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl110452110769_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl110446110753_))
                                (if (fx>= (let ()
                                            (declare (not safe))
                                            (gx#stx-length _tl110446110753_))
                                          '1)
                                    (let ((___splice112753112754_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl110446110753_
                                              '1))))
                                      (let ((_tl110457110774_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice112753112754_
                                                '1)))
                                            (_target110455110772_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice112753112754_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl110457110774_))
                                            (let ((_e110466110777_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl110457110774_))))
                                              (let ((_tl110464110782_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110466110777_)))
                                                    (_hd110465110780_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110466110777_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd110465110780_))
                                                    (let ((_e110469110785_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd110465110780_))))
                                                      (let ((_tl110467110790_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e110469110785_)))
                    (_hd110468110788_
                     (let () (declare (not safe)) (##car _e110469110785_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd110468110788_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd110468110788_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl110467110790_))
                            (let ((_e110472110793_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl110467110790_))))
                              (let ((_tl110470110798_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e110472110793_)))
                                    (_hd110471110796_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e110472110793_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl110470110798_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl110464110782_))
                                        (letrec ((_loop110458110801_
                                                  (lambda (_hd110456110804_
                                                           _xarg110462110806_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd110456110804_))
                                                        (let ((_e110459110809_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd110456110804_))))
                  (let ((_lp-tl110461110814_
                         (let () (declare (not safe)) (##cdr _e110459110809_)))
                        (_lp-hd110460110812_
                         (let ()
                           (declare (not safe))
                           (##car _e110459110809_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd110460110812_))
                        (let ((_e110475110817_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd110460110812_))))
                          (let ((_tl110473110822_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110475110817_)))
                                (_hd110474110820_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110475110817_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110474110820_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd110474110820_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110473110822_))
                                        (let ((_e110478110825_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110473110822_))))
                                          (let ((_tl110476110830_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110478110825_)))
                                                (_hd110477110828_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110478110825_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl110476110830_))
                                                (let ((__tmp114174
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd110477110828_
                                                               _xarg110462110806_))))
                                                  (declare (not safe))
                                                  (_loop110458110801_
                                                   _lp-tl110461110814_
                                                   __tmp114174))
                                                (___match112854112855_
                                                 _e110421110676_
                                                 _hd110420110679_
                                                 _tl110419110681_
                                                 _e110433110708_
                                                 _hd110432110711_
                                                 _tl110431110713_
                                                 _e110436110716_
                                                 _hd110435110719_
                                                 _tl110434110721_
                                                 _e110439110724_
                                                 _hd110438110727_
                                                 _tl110437110729_
                                                 _e110442110732_
                                                 _hd110441110735_
                                                 _tl110440110737_
                                                 _e110445110740_
                                                 _hd110444110743_
                                                 _tl110443110745_
                                                 _e110448110748_
                                                 _hd110447110751_
                                                 _tl110446110753_
                                                 _e110451110756_
                                                 _hd110450110759_
                                                 _tl110449110761_
                                                 _e110454110764_
                                                 _hd110453110767_
                                                 _tl110452110769_))))
                                        (___match112854112855_
                                         _e110421110676_
                                         _hd110420110679_
                                         _tl110419110681_
                                         _e110433110708_
                                         _hd110432110711_
                                         _tl110431110713_
                                         _e110436110716_
                                         _hd110435110719_
                                         _tl110434110721_
                                         _e110439110724_
                                         _hd110438110727_
                                         _tl110437110729_
                                         _e110442110732_
                                         _hd110441110735_
                                         _tl110440110737_
                                         _e110445110740_
                                         _hd110444110743_
                                         _tl110443110745_
                                         _e110448110748_
                                         _hd110447110751_
                                         _tl110446110753_
                                         _e110451110756_
                                         _hd110450110759_
                                         _tl110449110761_
                                         _e110454110764_
                                         _hd110453110767_
                                         _tl110452110769_))
                                    (___match112854112855_
                                     _e110421110676_
                                     _hd110420110679_
                                     _tl110419110681_
                                     _e110433110708_
                                     _hd110432110711_
                                     _tl110431110713_
                                     _e110436110716_
                                     _hd110435110719_
                                     _tl110434110721_
                                     _e110439110724_
                                     _hd110438110727_
                                     _tl110437110729_
                                     _e110442110732_
                                     _hd110441110735_
                                     _tl110440110737_
                                     _e110445110740_
                                     _hd110444110743_
                                     _tl110443110745_
                                     _e110448110748_
                                     _hd110447110751_
                                     _tl110446110753_
                                     _e110451110756_
                                     _hd110450110759_
                                     _tl110449110761_
                                     _e110454110764_
                                     _hd110453110767_
                                     _tl110452110769_))
                                (___match112854112855_
                                 _e110421110676_
                                 _hd110420110679_
                                 _tl110419110681_
                                 _e110433110708_
                                 _hd110432110711_
                                 _tl110431110713_
                                 _e110436110716_
                                 _hd110435110719_
                                 _tl110434110721_
                                 _e110439110724_
                                 _hd110438110727_
                                 _tl110437110729_
                                 _e110442110732_
                                 _hd110441110735_
                                 _tl110440110737_
                                 _e110445110740_
                                 _hd110444110743_
                                 _tl110443110745_
                                 _e110448110748_
                                 _hd110447110751_
                                 _tl110446110753_
                                 _e110451110756_
                                 _hd110450110759_
                                 _tl110449110761_
                                 _e110454110764_
                                 _hd110453110767_
                                 _tl110452110769_))))
                        (___match112854112855_
                         _e110421110676_
                         _hd110420110679_
                         _tl110419110681_
                         _e110433110708_
                         _hd110432110711_
                         _tl110431110713_
                         _e110436110716_
                         _hd110435110719_
                         _tl110434110721_
                         _e110439110724_
                         _hd110438110727_
                         _tl110437110729_
                         _e110442110732_
                         _hd110441110735_
                         _tl110440110737_
                         _e110445110740_
                         _hd110444110743_
                         _tl110443110745_
                         _e110448110748_
                         _hd110447110751_
                         _tl110446110753_
                         _e110451110756_
                         _hd110450110759_
                         _tl110449110761_
                         _e110454110764_
                         _hd110453110767_
                         _tl110452110769_))))
                (let ((_xarg110463110833_ (reverse _xarg110462110806_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl110431110713_))
                      (let ((_L110836_ _hd110471110796_)
                            (_L110837_ _xarg110463110833_)
                            (_L110838_ _hd110453110767_)
                            (_L110839_ _hd110444110743_)
                            (_L110840_ _tl110424110686_)
                            (_L110841_ _arg110430110705_))
                        (if (and (let ((__tmp114172
                                        (let ((__tmp114173
                                               (lambda (_g110884110887_
                                                        _g110885110889_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g110884110887_
                                                         _g110885110889_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp114173 '() _L110841_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp114172))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L110840_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L110839_ 'apply))
                                 (fx= (length (let ((__tmp114170
                                                     (lambda (_g110891110894_
                                                              _g110892110896_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g110891110894_
                                                               _g110892110896_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp114170
                                                        '()
                                                        _L110841_)))
                                      (length (let ((__tmp114171
                                                     (lambda (_g110898110901_
                                                              _g110899110903_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g110898110901_
                                                               _g110899110903_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp114171
                                                        '()
                                                        _L110837_))))
                                 (let ((__tmp114168
                                        (let ((__tmp114169
                                               (lambda (_g110905110908_
                                                        _g110906110910_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g110905110908_
                                                         _g110906110910_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp114169 '() _L110841_)))
                                       (__tmp114166
                                        (let ((__tmp114167
                                               (lambda (_g110912110915_
                                                        _g110913110917_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g110912110915_
                                                         _g110913110917_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp114167 '() _L110837_))))
                                   (declare (not safe))
                                   (andmap2 gx#free-identifier=?
                                            __tmp114168
                                            __tmp114166))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L110840_ _L110836_))
                                 (let ((__tmp114161
                                        (let ((__tmp114165
                                               (lambda (_g110919110921_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#free-identifier=?
                                                    _g110919110921_
                                                    _L110838_))))
                                              (__tmp114162
                                               (let ((__tmp114164
                                                      (lambda (_g110923110926_
                                                               _g110924110928_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g110923110926_
                                                                _g110924110928_))))
                                                     (__tmp114163
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L110840_ '()))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp114164
                                                         __tmp114163
                                                         _L110841_))))
                                          (declare (not safe))
                                          (find __tmp114165 __tmp114162))))
                                   (declare (not safe))
                                   (not __tmp114161)))
                            (___kont112749112750_
                             _L110836_
                             _L110837_
                             _L110838_
                             _L110839_
                             _L110840_
                             _L110841_)
                            (___match112854112855_
                             _e110421110676_
                             _hd110420110679_
                             _tl110419110681_
                             _e110433110708_
                             _hd110432110711_
                             _tl110431110713_
                             _e110436110716_
                             _hd110435110719_
                             _tl110434110721_
                             _e110439110724_
                             _hd110438110727_
                             _tl110437110729_
                             _e110442110732_
                             _hd110441110735_
                             _tl110440110737_
                             _e110445110740_
                             _hd110444110743_
                             _tl110443110745_
                             _e110448110748_
                             _hd110447110751_
                             _tl110446110753_
                             _e110451110756_
                             _hd110450110759_
                             _tl110449110761_
                             _e110454110764_
                             _hd110453110767_
                             _tl110452110769_)))
                      (___match112854112855_
                       _e110421110676_
                       _hd110420110679_
                       _tl110419110681_
                       _e110433110708_
                       _hd110432110711_
                       _tl110431110713_
                       _e110436110716_
                       _hd110435110719_
                       _tl110434110721_
                       _e110439110724_
                       _hd110438110727_
                       _tl110437110729_
                       _e110442110732_
                       _hd110441110735_
                       _tl110440110737_
                       _e110445110740_
                       _hd110444110743_
                       _tl110443110745_
                       _e110448110748_
                       _hd110447110751_
                       _tl110446110753_
                       _e110451110756_
                       _hd110450110759_
                       _tl110449110761_
                       _e110454110764_
                       _hd110453110767_
                       _tl110452110769_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop110458110801_
                                             _target110455110772_
                                             '())))
                                        (___match112854112855_
                                         _e110421110676_
                                         _hd110420110679_
                                         _tl110419110681_
                                         _e110433110708_
                                         _hd110432110711_
                                         _tl110431110713_
                                         _e110436110716_
                                         _hd110435110719_
                                         _tl110434110721_
                                         _e110439110724_
                                         _hd110438110727_
                                         _tl110437110729_
                                         _e110442110732_
                                         _hd110441110735_
                                         _tl110440110737_
                                         _e110445110740_
                                         _hd110444110743_
                                         _tl110443110745_
                                         _e110448110748_
                                         _hd110447110751_
                                         _tl110446110753_
                                         _e110451110756_
                                         _hd110450110759_
                                         _tl110449110761_
                                         _e110454110764_
                                         _hd110453110767_
                                         _tl110452110769_))
                                    (___match112854112855_
                                     _e110421110676_
                                     _hd110420110679_
                                     _tl110419110681_
                                     _e110433110708_
                                     _hd110432110711_
                                     _tl110431110713_
                                     _e110436110716_
                                     _hd110435110719_
                                     _tl110434110721_
                                     _e110439110724_
                                     _hd110438110727_
                                     _tl110437110729_
                                     _e110442110732_
                                     _hd110441110735_
                                     _tl110440110737_
                                     _e110445110740_
                                     _hd110444110743_
                                     _tl110443110745_
                                     _e110448110748_
                                     _hd110447110751_
                                     _tl110446110753_
                                     _e110451110756_
                                     _hd110450110759_
                                     _tl110449110761_
                                     _e110454110764_
                                     _hd110453110767_
                                     _tl110452110769_))))
                            (___match112854112855_
                             _e110421110676_
                             _hd110420110679_
                             _tl110419110681_
                             _e110433110708_
                             _hd110432110711_
                             _tl110431110713_
                             _e110436110716_
                             _hd110435110719_
                             _tl110434110721_
                             _e110439110724_
                             _hd110438110727_
                             _tl110437110729_
                             _e110442110732_
                             _hd110441110735_
                             _tl110440110737_
                             _e110445110740_
                             _hd110444110743_
                             _tl110443110745_
                             _e110448110748_
                             _hd110447110751_
                             _tl110446110753_
                             _e110451110756_
                             _hd110450110759_
                             _tl110449110761_
                             _e110454110764_
                             _hd110453110767_
                             _tl110452110769_))
                        (___match112854112855_
                         _e110421110676_
                         _hd110420110679_
                         _tl110419110681_
                         _e110433110708_
                         _hd110432110711_
                         _tl110431110713_
                         _e110436110716_
                         _hd110435110719_
                         _tl110434110721_
                         _e110439110724_
                         _hd110438110727_
                         _tl110437110729_
                         _e110442110732_
                         _hd110441110735_
                         _tl110440110737_
                         _e110445110740_
                         _hd110444110743_
                         _tl110443110745_
                         _e110448110748_
                         _hd110447110751_
                         _tl110446110753_
                         _e110451110756_
                         _hd110450110759_
                         _tl110449110761_
                         _e110454110764_
                         _hd110453110767_
                         _tl110452110769_))
                    (___match112854112855_
                     _e110421110676_
                     _hd110420110679_
                     _tl110419110681_
                     _e110433110708_
                     _hd110432110711_
                     _tl110431110713_
                     _e110436110716_
                     _hd110435110719_
                     _tl110434110721_
                     _e110439110724_
                     _hd110438110727_
                     _tl110437110729_
                     _e110442110732_
                     _hd110441110735_
                     _tl110440110737_
                     _e110445110740_
                     _hd110444110743_
                     _tl110443110745_
                     _e110448110748_
                     _hd110447110751_
                     _tl110446110753_
                     _e110451110756_
                     _hd110450110759_
                     _tl110449110761_
                     _e110454110764_
                     _hd110453110767_
                     _tl110452110769_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match112854112855_
                                                     _e110421110676_
                                                     _hd110420110679_
                                                     _tl110419110681_
                                                     _e110433110708_
                                                     _hd110432110711_
                                                     _tl110431110713_
                                                     _e110436110716_
                                                     _hd110435110719_
                                                     _tl110434110721_
                                                     _e110439110724_
                                                     _hd110438110727_
                                                     _tl110437110729_
                                                     _e110442110732_
                                                     _hd110441110735_
                                                     _tl110440110737_
                                                     _e110445110740_
                                                     _hd110444110743_
                                                     _tl110443110745_
                                                     _e110448110748_
                                                     _hd110447110751_
                                                     _tl110446110753_
                                                     _e110451110756_
                                                     _hd110450110759_
                                                     _tl110449110761_
                                                     _e110454110764_
                                                     _hd110453110767_
                                                     _tl110452110769_))))
                                            (___match112854112855_
                                             _e110421110676_
                                             _hd110420110679_
                                             _tl110419110681_
                                             _e110433110708_
                                             _hd110432110711_
                                             _tl110431110713_
                                             _e110436110716_
                                             _hd110435110719_
                                             _tl110434110721_
                                             _e110439110724_
                                             _hd110438110727_
                                             _tl110437110729_
                                             _e110442110732_
                                             _hd110441110735_
                                             _tl110440110737_
                                             _e110445110740_
                                             _hd110444110743_
                                             _tl110443110745_
                                             _e110448110748_
                                             _hd110447110751_
                                             _tl110446110753_
                                             _e110451110756_
                                             _hd110450110759_
                                             _tl110449110761_
                                             _e110454110764_
                                             _hd110453110767_
                                             _tl110452110769_))))
                                    (___match112854112855_
                                     _e110421110676_
                                     _hd110420110679_
                                     _tl110419110681_
                                     _e110433110708_
                                     _hd110432110711_
                                     _tl110431110713_
                                     _e110436110716_
                                     _hd110435110719_
                                     _tl110434110721_
                                     _e110439110724_
                                     _hd110438110727_
                                     _tl110437110729_
                                     _e110442110732_
                                     _hd110441110735_
                                     _tl110440110737_
                                     _e110445110740_
                                     _hd110444110743_
                                     _tl110443110745_
                                     _e110448110748_
                                     _hd110447110751_
                                     _tl110446110753_
                                     _e110451110756_
                                     _hd110450110759_
                                     _tl110449110761_
                                     _e110454110764_
                                     _hd110453110767_
                                     _tl110452110769_))
                                (___match112854112855_
                                 _e110421110676_
                                 _hd110420110679_
                                 _tl110419110681_
                                 _e110433110708_
                                 _hd110432110711_
                                 _tl110431110713_
                                 _e110436110716_
                                 _hd110435110719_
                                 _tl110434110721_
                                 _e110439110724_
                                 _hd110438110727_
                                 _tl110437110729_
                                 _e110442110732_
                                 _hd110441110735_
                                 _tl110440110737_
                                 _e110445110740_
                                 _hd110444110743_
                                 _tl110443110745_
                                 _e110448110748_
                                 _hd110447110751_
                                 _tl110446110753_
                                 _e110451110756_
                                 _hd110450110759_
                                 _tl110449110761_
                                 _e110454110764_
                                 _hd110453110767_
                                 _tl110452110769_))
                            (___kont112757112758_))))
                    (___kont112757112758_))
                (___kont112757112758_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont112757112758_))))
                                            (___kont112757112758_))))
                                    (___kont112757112758_))
                                (___kont112757112758_))))
                        (___kont112757112758_))
                    (___kont112757112758_))
                (___kont112757112758_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont112757112758_))))
                                        (___kont112757112758_))
                                    (___kont112757112758_))
                                (___kont112757112758_))))
                        (___kont112757112758_))))
                (___kont112757112758_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop110425110689_
                                       _target110422110684_
                                       '())))))
                               (___match112772112773_
                                (lambda (_e110373110936_
                                         _hd110372110939_
                                         _tl110371110941_
                                         ___splice112745112746_
                                         _target110374110944_
                                         _tl110376110946_)
                                  (letrec ((_loop110377110949_
                                            (lambda (_hd110375110952_
                                                     _arg110381110954_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110375110952_))
                                                  (let ((_e110378110957_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110375110952_))))
                                                    (let ((_lp-tl110380110962_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110378110957_)))
                                                          (_lp-hd110379110960_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110378110957_))))
                                                      (let ((__tmp114189
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd110379110960_ _arg110381110954_))))
                (declare (not safe))
                (_loop110377110949_ _lp-tl110380110962_ __tmp114189))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg110382110965_
                                                         (reverse _arg110381110954_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl110371110941_))
                                                        (let ((_e110385110968_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl110371110941_))))
                  (let ((_tl110383110973_
                         (let () (declare (not safe)) (##cdr _e110385110968_)))
                        (_hd110384110971_
                         (let ()
                           (declare (not safe))
                           (##car _e110385110968_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd110384110971_))
                        (let ((_e110388110976_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd110384110971_))))
                          (let ((_tl110386110981_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110388110976_)))
                                (_hd110387110979_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110388110976_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110387110979_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd110387110979_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110386110981_))
                                        (let ((_e110391110984_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110386110981_))))
                                          (let ((_tl110389110989_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110391110984_)))
                                                (_hd110390110987_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110391110984_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd110390110987_))
                                                (let ((_e110394110992_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd110390110987_))))
                                                  (let ((_tl110392110997_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e110394110992_)))
                                                        (_hd110393110995_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e110394110992_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd110393110995_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd110393110995_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl110392110997_))
                        (let ((_e110397111000_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl110392110997_))))
                          (let ((_tl110395111005_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110397111000_)))
                                (_hd110396111003_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110397111000_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl110395111005_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl110389110989_))
                                    (let ((___splice112747112748_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl110389110989_
                                              '0))))
                                      (let ((_tl110400111010_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice112747112748_
                                                '1)))
                                            (_target110398111008_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice112747112748_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl110400111010_))
                                            (letrec ((_loop110401111013_
                                                      (lambda (_hd110399111016_
                                                               _xarg110405111018_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _hd110399111016_))
                                                            (let ((_e110402111021_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd110399111016_))))
                      (let ((_lp-tl110404111026_
                             (let ()
                               (declare (not safe))
                               (##cdr _e110402111021_)))
                            (_lp-hd110403111024_
                             (let ()
                               (declare (not safe))
                               (##car _e110402111021_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _lp-hd110403111024_))
                            (let ((_e110409111029_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _lp-hd110403111024_))))
                              (let ((_tl110407111034_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e110409111029_)))
                                    (_hd110408111032_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e110409111029_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd110408111032_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#ref _hd110408111032_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl110407111034_))
                                            (let ((_e110412111037_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl110407111034_))))
                                              (let ((_tl110410111042_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110412111037_)))
                                                    (_hd110411111040_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110412111037_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl110410111042_))
                                                    (let ((__tmp114188
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd110411111040_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xarg110405111018_))))
              (declare (not safe))
              (_loop110401111013_ _lp-tl110404111026_ __tmp114188))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match112784112785_
                                                     _e110373110936_
                                                     _hd110372110939_
                                                     _tl110371110941_
                                                     ___splice112745112746_
                                                     _target110374110944_
                                                     _tl110376110946_))))
                                            (___match112784112785_
                                             _e110373110936_
                                             _hd110372110939_
                                             _tl110371110941_
                                             ___splice112745112746_
                                             _target110374110944_
                                             _tl110376110946_))
                                        (___match112784112785_
                                         _e110373110936_
                                         _hd110372110939_
                                         _tl110371110941_
                                         ___splice112745112746_
                                         _target110374110944_
                                         _tl110376110946_))
                                    (___match112784112785_
                                     _e110373110936_
                                     _hd110372110939_
                                     _tl110371110941_
                                     ___splice112745112746_
                                     _target110374110944_
                                     _tl110376110946_))))
                            (___match112784112785_
                             _e110373110936_
                             _hd110372110939_
                             _tl110371110941_
                             ___splice112745112746_
                             _target110374110944_
                             _tl110376110946_))))
                    (let ((_xarg110406111045_ (reverse _xarg110405111018_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl110383110973_))
                          (let ((_L111048_ _xarg110406111045_)
                                (_L111049_ _hd110396111003_)
                                (_L111050_ _arg110382110965_))
                            (if (and (let ((__tmp114186
                                            (let ((__tmp114187
                                                   (lambda (_g111078111081_
                                                            _g111079111083_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g111078111081_
                                                             _g111079111083_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp114187
                                                      '()
                                                      _L111050_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp114186))
                                     (fx= (length (let ((__tmp114184
                                                         (lambda (_g111085111088_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g111086111090_)
                   (let ()
                     (declare (not safe))
                     (cons _g111085111088_ _g111086111090_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp114184
                                                            '()
                                                            _L111050_)))
                                          (length (let ((__tmp114185
                                                         (lambda (_g111092111095_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g111093111097_)
                   (let ()
                     (declare (not safe))
                     (cons _g111092111095_ _g111093111097_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp114185
                                                            '()
                                                            _L111048_))))
                                     (let ((__tmp114182
                                            (let ((__tmp114183
                                                   (lambda (_g111099111102_
                                                            _g111100111104_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g111099111102_
                                                             _g111100111104_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp114183
                                                      '()
                                                      _L111050_)))
                                           (__tmp114180
                                            (let ((__tmp114181
                                                   (lambda (_g111106111109_
                                                            _g111107111111_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g111106111109_
                                                             _g111107111111_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp114181
                                                      '()
                                                      _L111048_))))
                                       (declare (not safe))
                                       (andmap2 gx#free-identifier=?
                                                __tmp114182
                                                __tmp114180))
                                     (let ((__tmp114176
                                            (let ((__tmp114179
                                                   (lambda (_g111113111115_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _g111113111115_
                                                        _L111049_))))
                                                  (__tmp114177
                                                   (let ((__tmp114178
                                                          (lambda (_g111117111120_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g111118111122_)
                    (let ()
                      (declare (not safe))
                      (cons _g111117111120_ _g111118111122_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr1 __tmp114178
                                                             '()
                                                             _L111050_))))
                                              (declare (not safe))
                                              (find __tmp114179 __tmp114177))))
                                       (declare (not safe))
                                       (not __tmp114176)))
                                (___kont112743112744_
                                 _L111048_
                                 _L111049_
                                 _L111050_)
                                (___match112784112785_
                                 _e110373110936_
                                 _hd110372110939_
                                 _tl110371110941_
                                 ___splice112745112746_
                                 _target110374110944_
                                 _tl110376110946_)))
                          (___match112784112785_
                           _e110373110936_
                           _hd110372110939_
                           _tl110371110941_
                           ___splice112745112746_
                           _target110374110944_
                           _tl110376110946_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop110401111013_
                                                 _target110398111008_
                                                 '())))
                                            (___match112784112785_
                                             _e110373110936_
                                             _hd110372110939_
                                             _tl110371110941_
                                             ___splice112745112746_
                                             _target110374110944_
                                             _tl110376110946_))))
                                    (___match112784112785_
                                     _e110373110936_
                                     _hd110372110939_
                                     _tl110371110941_
                                     ___splice112745112746_
                                     _target110374110944_
                                     _tl110376110946_))
                                (___match112784112785_
                                 _e110373110936_
                                 _hd110372110939_
                                 _tl110371110941_
                                 ___splice112745112746_
                                 _target110374110944_
                                 _tl110376110946_))))
                        (___match112784112785_
                         _e110373110936_
                         _hd110372110939_
                         _tl110371110941_
                         ___splice112745112746_
                         _target110374110944_
                         _tl110376110946_))
                    (___match112784112785_
                     _e110373110936_
                     _hd110372110939_
                     _tl110371110941_
                     ___splice112745112746_
                     _target110374110944_
                     _tl110376110946_))
                (___match112784112785_
                 _e110373110936_
                 _hd110372110939_
                 _tl110371110941_
                 ___splice112745112746_
                 _target110374110944_
                 _tl110376110946_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match112784112785_
                                                 _e110373110936_
                                                 _hd110372110939_
                                                 _tl110371110941_
                                                 ___splice112745112746_
                                                 _target110374110944_
                                                 _tl110376110946_))))
                                        (___match112784112785_
                                         _e110373110936_
                                         _hd110372110939_
                                         _tl110371110941_
                                         ___splice112745112746_
                                         _target110374110944_
                                         _tl110376110946_))
                                    (___match112784112785_
                                     _e110373110936_
                                     _hd110372110939_
                                     _tl110371110941_
                                     ___splice112745112746_
                                     _target110374110944_
                                     _tl110376110946_))
                                (___match112784112785_
                                 _e110373110936_
                                 _hd110372110939_
                                 _tl110371110941_
                                 ___splice112745112746_
                                 _target110374110944_
                                 _tl110376110946_))))
                        (___match112784112785_
                         _e110373110936_
                         _hd110372110939_
                         _tl110371110941_
                         ___splice112745112746_
                         _target110374110944_
                         _tl110376110946_))))
                (___match112784112785_
                 _e110373110936_
                 _hd110372110939_
                 _tl110371110941_
                 ___splice112745112746_
                 _target110374110944_
                 _tl110376110946_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop110377110949_
                                       _target110374110944_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx112741112742_))
                              (let ((_e110373110936_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx112741112742_))))
                                (let ((_tl110371110941_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110373110936_)))
                                      (_hd110372110939_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110373110936_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd110372110939_))
                                      (let ((___splice112745112746_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd110372110939_
                                                '0))))
                                        (let ((_tl110376110946_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice112745112746_
                                                  '1)))
                                              (_target110374110944_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice112745112746_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl110376110946_))
                                              (___match112772112773_
                                               _e110373110936_
                                               _hd110372110939_
                                               _tl110371110941_
                                               ___splice112745112746_
                                               _target110374110944_
                                               _tl110376110946_)
                                              (___match112784112785_
                                               _e110373110936_
                                               _hd110372110939_
                                               _tl110371110941_
                                               ___splice112745112746_
                                               _target110374110944_
                                               _tl110376110946_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl110371110941_))
                                          (let ((_e110488110543_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl110371110941_))))
                                            (let ((_tl110486110548_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e110488110543_)))
                                                  (_hd110487110546_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e110488110543_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110487110546_))
                                                  (let ((_e110491110551_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110487110546_))))
                                                    (let ((_tl110489110556_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110491110551_)))
                                                          (_hd110490110554_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110491110551_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd110490110554_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _hd110490110554_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl110489110556_))
                          (let ((_e110494110559_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl110489110556_))))
                            (let ((_tl110492110564_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e110494110559_)))
                                  (_hd110493110562_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e110494110559_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd110493110562_))
                                  (let ((_e110497110567_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd110493110562_))))
                                    (let ((_tl110495110572_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e110497110567_)))
                                          (_hd110496110570_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e110497110567_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd110496110570_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd110496110570_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl110495110572_))
                                                  (let ((_e110500110575_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl110495110572_))))
                                                    (let ((_tl110498110580_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110500110575_)))
                                                          (_hd110499110578_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110500110575_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl110498110580_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl110492110564_))
                      (let ((_e110503110583_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl110492110564_))))
                        (let ((_tl110501110588_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110503110583_)))
                              (_hd110502110586_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110503110583_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd110502110586_))
                              (let ((_e110506110591_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd110502110586_))))
                                (let ((_tl110504110596_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110506110591_)))
                                      (_hd110505110594_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110506110591_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd110505110594_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd110505110594_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl110504110596_))
                                              (let ((_e110509110599_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl110504110596_))))
                                                (let ((_tl110507110604_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e110509110599_)))
                                                      (_hd110508110602_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e110509110599_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl110507110604_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl110501110588_))
                                                          (let ((_e110512110607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl110501110588_))))
                    (let ((_tl110510110612_
                           (let ()
                             (declare (not safe))
                             (##cdr _e110512110607_)))
                          (_hd110511110610_
                           (let ()
                             (declare (not safe))
                             (##car _e110512110607_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd110511110610_))
                          (let ((_e110515110615_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd110511110610_))))
                            (let ((_tl110513110620_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e110515110615_)))
                                  (_hd110514110618_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e110515110615_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd110514110618_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd110514110618_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl110513110620_))
                                          (let ((_e110518110623_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl110513110620_))))
                                            (let ((_tl110516110628_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e110518110623_)))
                                                  (_hd110517110626_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e110518110623_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl110516110628_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl110510110612_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl110486110548_))
                                                          (___match112882112883_
                                                           _e110373110936_
                                                           _hd110372110939_
                                                           _tl110371110941_
                                                           _e110488110543_
                                                           _hd110487110546_
                                                           _tl110486110548_
                                                           _e110491110551_
                                                           _hd110490110554_
                                                           _tl110489110556_
                                                           _e110494110559_
                                                           _hd110493110562_
                                                           _tl110492110564_
                                                           _e110497110567_
                                                           _hd110496110570_
                                                           _tl110495110572_
                                                           _e110500110575_
                                                           _hd110499110578_
                                                           _tl110498110580_
                                                           _e110503110583_
                                                           _hd110502110586_
                                                           _tl110501110588_
                                                           _e110506110591_
                                                           _hd110505110594_
                                                           _tl110504110596_
                                                           _e110509110599_
                                                           _hd110508110602_
                                                           _tl110507110604_
                                                           _e110512110607_
                                                           _hd110511110610_
                                                           _tl110510110612_
                                                           _e110515110615_
                                                           _hd110514110618_
                                                           _tl110513110620_
                                                           _e110518110623_
                                                           _hd110517110626_
                                                           _tl110516110628_)
                                                          (___kont112757112758_))
                                                      (___kont112757112758_))
                                                  (___kont112757112758_))))
                                          (___kont112757112758_))
                                      (___kont112757112758_))
                                  (___kont112757112758_))))
                          (___kont112757112758_))))
                  (___kont112757112758_))
              (___kont112757112758_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont112757112758_))
                                          (___kont112757112758_))
                                      (___kont112757112758_))))
                              (___kont112757112758_))))
                      (___kont112757112758_))
                  (___kont112757112758_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont112757112758_))
                                              (___kont112757112758_))
                                          (___kont112757112758_))))
                                  (___kont112757112758_))))
                          (___kont112757112758_))
                      (___kont112757112758_))
                  (___kont112757112758_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont112757112758_))))
                                          (___kont112757112758_)))))
                              (___kont112757112758_)))))))
                 (_dispatch-case-e109674_
                  (lambda (_hd109822_ _body109823_)
                    (let* ((_form109825_
                            (let ((__tmp114190
                                   (let ()
                                     (declare (not safe))
                                     (cons _body109823_ '()))))
                              (declare (not safe))
                              (cons _hd109822_ __tmp114190)))
                           (___stx112885112886_ _form109825_)
                           (_g109829109953_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx112885112886_)))))
                      (let ((___kont112887112888_
                             (lambda (_L110324_ _L110325_ _L110326_)
                               (let ((__tmp114191
                                      (let ((__tmp114193
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp114192
                                             (let ()
                                               (declare (not safe))
                                               (cons _L110325_ '()))))
                                        (declare (not safe))
                                        (cons __tmp114193 __tmp114192))))
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self109670_ __tmp114191))))
                            (___kont112893112894_
                             (lambda (_L110172_ _L110173_ _L110174_ _L110175_)
                               (let ((__tmp114194
                                      (let ((__tmp114196
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp114195
                                             (let ()
                                               (declare (not safe))
                                               (cons _L110172_ '()))))
                                        (declare (not safe))
                                        (cons __tmp114196 __tmp114195))))
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self109670_ __tmp114194))))
                            (___kont112897112898_
                             (lambda (_L110038_ _L110039_ _L110040_)
                               (let ((__tmp114197
                                      (let ((__tmp114199
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp114198
                                             (let ()
                                               (declare (not safe))
                                               (cons _L110038_ '()))))
                                        (declare (not safe))
                                        (cons __tmp114199 __tmp114198))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _self109670_
                                  __tmp114197)))))
                        (let* ((___match112994112995_
                                (lambda (_e109921109958_
                                         _hd109920109961_
                                         _tl109919109963_
                                         _e109924109966_
                                         _hd109923109969_
                                         _tl109922109971_
                                         _e109927109974_
                                         _hd109926109977_
                                         _tl109925109979_
                                         _e109930109982_
                                         _hd109929109985_
                                         _tl109928109987_
                                         _e109933109990_
                                         _hd109932109993_
                                         _tl109931109995_
                                         _e109936109998_
                                         _hd109935110001_
                                         _tl109934110003_
                                         _e109939110006_
                                         _hd109938110009_
                                         _tl109937110011_
                                         _e109942110014_
                                         _hd109941110017_
                                         _tl109940110019_
                                         _e109945110022_
                                         _hd109944110025_
                                         _tl109943110027_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl109937110011_))
                                      (let ((_e109948110030_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl109937110011_))))
                                        (let ((_tl109946110035_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e109948110030_)))
                                              (_hd109947110033_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e109948110030_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl109946110035_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl109922109971_))
                                                  (___kont112897112898_
                                                   _hd109944110025_
                                                   _hd109935110001_
                                                   _hd109920109961_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g109829109953_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g109829109953_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g109829109953_)))))
                               (___match112924112925_
                                (lambda (_e109882110076_
                                         _hd109881110079_
                                         _tl109880110081_
                                         ___splice112895112896_
                                         _target109883110084_
                                         _tl109885110086_)
                                  (letrec ((_loop109886110089_
                                            (lambda (_hd109884110092_
                                                     _arg109890110094_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd109884110092_))
                                                  (let ((_e109887110097_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd109884110092_))))
                                                    (let ((_lp-tl109889110102_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e109887110097_)))
                                                          (_lp-hd109888110100_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e109887110097_))))
                                                      (let ((__tmp114200
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd109888110100_ _arg109890110094_))))
                (declare (not safe))
                (_loop109886110089_ _lp-tl109889110102_ __tmp114200))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg109891110105_
                                                         (reverse _arg109890110094_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl109880110081_))
                                                        (let ((_e109894110108_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl109880110081_))))
                  (let ((_tl109892110113_
                         (let () (declare (not safe)) (##cdr _e109894110108_)))
                        (_hd109893110111_
                         (let ()
                           (declare (not safe))
                           (##car _e109894110108_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd109893110111_))
                        (let ((_e109897110116_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd109893110111_))))
                          (let ((_tl109895110121_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e109897110116_)))
                                (_hd109896110119_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e109897110116_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd109896110119_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd109896110119_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl109895110121_))
                                        (let ((_e109900110124_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl109895110121_))))
                                          (let ((_tl109898110129_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e109900110124_)))
                                                (_hd109899110127_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e109900110124_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd109899110127_))
                                                (let ((_e109903110132_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd109899110127_))))
                                                  (let ((_tl109901110137_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e109903110132_)))
                                                        (_hd109902110135_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e109903110132_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd109902110135_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd109902110135_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl109901110137_))
                        (let ((_e109906110140_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl109901110137_))))
                          (let ((_tl109904110145_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e109906110140_)))
                                (_hd109905110143_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e109906110140_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl109904110145_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl109898110129_))
                                    (let ((_e109909110148_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl109898110129_))))
                                      (let ((_tl109907110153_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e109909110148_)))
                                            (_hd109908110151_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e109909110148_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd109908110151_))
                                            (let ((_e109912110156_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd109908110151_))))
                                              (let ((_tl109910110161_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e109912110156_)))
                                                    (_hd109911110159_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e109912110156_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd109911110159_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd109911110159_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl109910110161_))
                                                            (let ((_e109915110164_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl109910110161_))))
                      (let ((_tl109913110169_
                             (let ()
                               (declare (not safe))
                               (##cdr _e109915110164_)))
                            (_hd109914110167_
                             (let ()
                               (declare (not safe))
                               (##car _e109915110164_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl109913110169_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl109892110113_))
                                (___kont112893112894_
                                 _hd109914110167_
                                 _hd109905110143_
                                 _tl109885110086_
                                 _arg109891110105_)
                                (___match112994112995_
                                 _e109882110076_
                                 _hd109881110079_
                                 _tl109880110081_
                                 _e109894110108_
                                 _hd109893110111_
                                 _tl109892110113_
                                 _e109897110116_
                                 _hd109896110119_
                                 _tl109895110121_
                                 _e109900110124_
                                 _hd109899110127_
                                 _tl109898110129_
                                 _e109903110132_
                                 _hd109902110135_
                                 _tl109901110137_
                                 _e109906110140_
                                 _hd109905110143_
                                 _tl109904110145_
                                 _e109909110148_
                                 _hd109908110151_
                                 _tl109907110153_
                                 _e109912110156_
                                 _hd109911110159_
                                 _tl109910110161_
                                 _e109915110164_
                                 _hd109914110167_
                                 _tl109913110169_))
                            (let () (declare (not safe)) (_g109829109953_)))))
                    (let () (declare (not safe)) (_g109829109953_)))
                (let () (declare (not safe)) (_g109829109953_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g109829109953_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g109829109953_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g109829109953_)))
                                (let ()
                                  (declare (not safe))
                                  (_g109829109953_)))))
                        (let () (declare (not safe)) (_g109829109953_)))
                    (let () (declare (not safe)) (_g109829109953_)))
                (let () (declare (not safe)) (_g109829109953_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g109829109953_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g109829109953_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g109829109953_)))
                                (let ()
                                  (declare (not safe))
                                  (_g109829109953_)))))
                        (let () (declare (not safe)) (_g109829109953_)))))
                (let () (declare (not safe)) (_g109829109953_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop109886110089_
                                       _target109883110084_
                                       '())))))
                               (___match112912112913_
                                (lambda (_e109836110212_
                                         _hd109835110215_
                                         _tl109834110217_
                                         ___splice112889112890_
                                         _target109837110220_
                                         _tl109839110222_)
                                  (letrec ((_loop109840110225_
                                            (lambda (_hd109838110228_
                                                     _arg109844110230_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd109838110228_))
                                                  (let ((_e109841110233_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd109838110228_))))
                                                    (let ((_lp-tl109843110238_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e109841110233_)))
                                                          (_lp-hd109842110236_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e109841110233_))))
                                                      (let ((__tmp114202
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd109842110236_ _arg109844110230_))))
                (declare (not safe))
                (_loop109840110225_ _lp-tl109843110238_ __tmp114202))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg109845110241_
                                                         (reverse _arg109844110230_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl109834110217_))
                                                        (let ((_e109848110244_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl109834110217_))))
                  (let ((_tl109846110249_
                         (let () (declare (not safe)) (##cdr _e109848110244_)))
                        (_hd109847110247_
                         (let ()
                           (declare (not safe))
                           (##car _e109848110244_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd109847110247_))
                        (let ((_e109851110252_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd109847110247_))))
                          (let ((_tl109849110257_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e109851110252_)))
                                (_hd109850110255_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e109851110252_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd109850110255_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd109850110255_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl109849110257_))
                                        (let ((_e109854110260_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl109849110257_))))
                                          (let ((_tl109852110265_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e109854110260_)))
                                                (_hd109853110263_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e109854110260_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd109853110263_))
                                                (let ((_e109857110268_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd109853110263_))))
                                                  (let ((_tl109855110273_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e109857110268_)))
                                                        (_hd109856110271_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e109857110268_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd109856110271_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd109856110271_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl109855110273_))
                        (let ((_e109860110276_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl109855110273_))))
                          (let ((_tl109858110281_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e109860110276_)))
                                (_hd109859110279_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e109860110276_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl109858110281_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl109852110265_))
                                    (let ((___splice112891112892_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl109852110265_
                                              '0))))
                                      (let ((_tl109863110286_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice112891112892_
                                                '1)))
                                            (_target109861110284_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice112891112892_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl109863110286_))
                                            (letrec ((_loop109864110289_
                                                      (lambda (_hd109862110292_
                                                               _xarg109868110294_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _hd109862110292_))
                                                            (let ((_e109865110297_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd109862110292_))))
                      (let ((_lp-tl109867110302_
                             (let ()
                               (declare (not safe))
                               (##cdr _e109865110297_)))
                            (_lp-hd109866110300_
                             (let ()
                               (declare (not safe))
                               (##car _e109865110297_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _lp-hd109866110300_))
                            (let ((_e109872110305_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _lp-hd109866110300_))))
                              (let ((_tl109870110310_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e109872110305_)))
                                    (_hd109871110308_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e109872110305_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd109871110308_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#ref _hd109871110308_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl109870110310_))
                                            (let ((_e109875110313_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl109870110310_))))
                                              (let ((_tl109873110318_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e109875110313_)))
                                                    (_hd109874110316_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e109875110313_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl109873110318_))
                                                    (let ((__tmp114201
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd109874110316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xarg109868110294_))))
              (declare (not safe))
              (_loop109864110289_ _lp-tl109867110302_ __tmp114201))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match112924112925_
                                                     _e109836110212_
                                                     _hd109835110215_
                                                     _tl109834110217_
                                                     ___splice112889112890_
                                                     _target109837110220_
                                                     _tl109839110222_))))
                                            (___match112924112925_
                                             _e109836110212_
                                             _hd109835110215_
                                             _tl109834110217_
                                             ___splice112889112890_
                                             _target109837110220_
                                             _tl109839110222_))
                                        (___match112924112925_
                                         _e109836110212_
                                         _hd109835110215_
                                         _tl109834110217_
                                         ___splice112889112890_
                                         _target109837110220_
                                         _tl109839110222_))
                                    (___match112924112925_
                                     _e109836110212_
                                     _hd109835110215_
                                     _tl109834110217_
                                     ___splice112889112890_
                                     _target109837110220_
                                     _tl109839110222_))))
                            (___match112924112925_
                             _e109836110212_
                             _hd109835110215_
                             _tl109834110217_
                             ___splice112889112890_
                             _target109837110220_
                             _tl109839110222_))))
                    (let ((_xarg109869110321_ (reverse _xarg109868110294_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl109846110249_))
                          (___kont112887112888_
                           _xarg109869110321_
                           _hd109859110279_
                           _arg109845110241_)
                          (___match112924112925_
                           _e109836110212_
                           _hd109835110215_
                           _tl109834110217_
                           ___splice112889112890_
                           _target109837110220_
                           _tl109839110222_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop109864110289_
                                                 _target109861110284_
                                                 '())))
                                            (___match112924112925_
                                             _e109836110212_
                                             _hd109835110215_
                                             _tl109834110217_
                                             ___splice112889112890_
                                             _target109837110220_
                                             _tl109839110222_))))
                                    (___match112924112925_
                                     _e109836110212_
                                     _hd109835110215_
                                     _tl109834110217_
                                     ___splice112889112890_
                                     _target109837110220_
                                     _tl109839110222_))
                                (___match112924112925_
                                 _e109836110212_
                                 _hd109835110215_
                                 _tl109834110217_
                                 ___splice112889112890_
                                 _target109837110220_
                                 _tl109839110222_))))
                        (___match112924112925_
                         _e109836110212_
                         _hd109835110215_
                         _tl109834110217_
                         ___splice112889112890_
                         _target109837110220_
                         _tl109839110222_))
                    (___match112924112925_
                     _e109836110212_
                     _hd109835110215_
                     _tl109834110217_
                     ___splice112889112890_
                     _target109837110220_
                     _tl109839110222_))
                (___match112924112925_
                 _e109836110212_
                 _hd109835110215_
                 _tl109834110217_
                 ___splice112889112890_
                 _target109837110220_
                 _tl109839110222_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match112924112925_
                                                 _e109836110212_
                                                 _hd109835110215_
                                                 _tl109834110217_
                                                 ___splice112889112890_
                                                 _target109837110220_
                                                 _tl109839110222_))))
                                        (___match112924112925_
                                         _e109836110212_
                                         _hd109835110215_
                                         _tl109834110217_
                                         ___splice112889112890_
                                         _target109837110220_
                                         _tl109839110222_))
                                    (___match112924112925_
                                     _e109836110212_
                                     _hd109835110215_
                                     _tl109834110217_
                                     ___splice112889112890_
                                     _target109837110220_
                                     _tl109839110222_))
                                (___match112924112925_
                                 _e109836110212_
                                 _hd109835110215_
                                 _tl109834110217_
                                 ___splice112889112890_
                                 _target109837110220_
                                 _tl109839110222_))))
                        (___match112924112925_
                         _e109836110212_
                         _hd109835110215_
                         _tl109834110217_
                         ___splice112889112890_
                         _target109837110220_
                         _tl109839110222_))))
                (___match112924112925_
                 _e109836110212_
                 _hd109835110215_
                 _tl109834110217_
                 ___splice112889112890_
                 _target109837110220_
                 _tl109839110222_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop109840110225_
                                       _target109837110220_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx112885112886_))
                              (let ((_e109836110212_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx112885112886_))))
                                (let ((_tl109834110217_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e109836110212_)))
                                      (_hd109835110215_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e109836110212_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd109835110215_))
                                      (let ((___splice112889112890_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd109835110215_
                                                '0))))
                                        (let ((_tl109839110222_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice112889112890_
                                                  '1)))
                                              (_target109837110220_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice112889112890_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl109839110222_))
                                              (___match112912112913_
                                               _e109836110212_
                                               _hd109835110215_
                                               _tl109834110217_
                                               ___splice112889112890_
                                               _target109837110220_
                                               _tl109839110222_)
                                              (___match112924112925_
                                               _e109836110212_
                                               _hd109835110215_
                                               _tl109834110217_
                                               ___splice112889112890_
                                               _target109837110220_
                                               _tl109839110222_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl109834110217_))
                                          (let ((_e109924109966_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl109834110217_))))
                                            (let ((_tl109922109971_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e109924109966_)))
                                                  (_hd109923109969_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e109924109966_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd109923109969_))
                                                  (let ((_e109927109974_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd109923109969_))))
                                                    (let ((_tl109925109979_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e109927109974_)))
                                                          (_hd109926109977_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e109927109974_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd109926109977_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _hd109926109977_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl109925109979_))
                          (let ((_e109930109982_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl109925109979_))))
                            (let ((_tl109928109987_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e109930109982_)))
                                  (_hd109929109985_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e109930109982_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd109929109985_))
                                  (let ((_e109933109990_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd109929109985_))))
                                    (let ((_tl109931109995_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e109933109990_)))
                                          (_hd109932109993_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e109933109990_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd109932109993_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd109932109993_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl109931109995_))
                                                  (let ((_e109936109998_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl109931109995_))))
                                                    (let ((_tl109934110003_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e109936109998_)))
                                                          (_hd109935110001_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e109936109998_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl109934110003_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl109928109987_))
                      (let ((_e109939110006_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl109928109987_))))
                        (let ((_tl109937110011_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e109939110006_)))
                              (_hd109938110009_
                               (let ()
                                 (declare (not safe))
                                 (##car _e109939110006_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd109938110009_))
                              (let ((_e109942110014_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd109938110009_))))
                                (let ((_tl109940110019_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e109942110014_)))
                                      (_hd109941110017_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e109942110014_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd109941110017_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd109941110017_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl109940110019_))
                                              (let ((_e109945110022_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl109940110019_))))
                                                (let ((_tl109943110027_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e109945110022_)))
                                                      (_hd109944110025_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e109945110022_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl109943110027_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl109937110011_))
                                                          (let ((_e109948110030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl109937110011_))))
                    (let ((_tl109946110035_
                           (let ()
                             (declare (not safe))
                             (##cdr _e109948110030_)))
                          (_hd109947110033_
                           (let ()
                             (declare (not safe))
                             (##car _e109948110030_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl109946110035_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl109922109971_))
                              (___kont112897112898_
                               _hd109944110025_
                               _hd109935110001_
                               _hd109835110215_)
                              (let () (declare (not safe)) (_g109829109953_)))
                          (let () (declare (not safe)) (_g109829109953_)))))
                  (let () (declare (not safe)) (_g109829109953_)))
              (let () (declare (not safe)) (_g109829109953_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g109829109953_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g109829109953_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g109829109953_)))))
                              (let ()
                                (declare (not safe))
                                (_g109829109953_)))))
                      (let () (declare (not safe)) (_g109829109953_)))
                  (let () (declare (not safe)) (_g109829109953_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g109829109953_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g109829109953_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g109829109953_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g109829109953_)))))
                          (let () (declare (not safe)) (_g109829109953_)))
                      (let () (declare (not safe)) (_g109829109953_)))
                  (let () (declare (not safe)) (_g109829109953_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g109829109953_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g109829109953_))))))
                              (let ()
                                (declare (not safe))
                                (_g109829109953_))))))))
                 (_generate1109675_
                  (lambda (_args109810_ _arglen109811_ _hd109812_ _body109813_)
                    (let* ((_len109815_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _hd109812_)))
                           (_condition109817_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _hd109812_))
                                (if (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-decls-unsafe?))
                                    (let ((__tmp114217
                                           (let ((__tmp114218
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _len109815_ '()))))
                                             (declare (not safe))
                                             (cons _arglen109811_
                                                   __tmp114218))))
                                      (declare (not safe))
                                      (cons '##fx= __tmp114217))
                                    (let ((__tmp114211
                                           (let ((__tmp114212
                                                  (let ((__tmp114213
                                                         (let ((__tmp114214
                                                                (let ((__tmp114215
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114216
                                      (let ()
                                        (declare (not safe))
                                        (cons _len109815_ '()))))
                                 (declare (not safe))
                                 (cons _arglen109811_ __tmp114216))))
                          (declare (not safe))
                          (cons '##fx= __tmp114215))))
                   (declare (not safe))
                   (cons __tmp114214 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '(declare (not safe))
                                                          __tmp114213))))
                                             (declare (not safe))
                                             (cons '() __tmp114212))))
                                      (declare (not safe))
                                      (cons 'let __tmp114211)))
                                (if (> _len109815_ '0)
                                    (if (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-decls-unsafe?))
                                        (let ((__tmp114209
                                               (let ((__tmp114210
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _len109815_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _arglen109811_
                                                       __tmp114210))))
                                          (declare (not safe))
                                          (cons '##fx>= __tmp114209))
                                        (let ((__tmp114203
                                               (let ((__tmp114204
                                                      (let ((__tmp114205
                                                             (let ((__tmp114206
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114207
                                   (let ((__tmp114208
                                          (let ()
                                            (declare (not safe))
                                            (cons _len109815_ '()))))
                                     (declare (not safe))
                                     (cons _arglen109811_ __tmp114208))))
                              (declare (not safe))
                              (cons '##fx>= __tmp114207))))
                       (declare (not safe))
                       (cons __tmp114206 '()))))
                (declare (not safe))
                (cons '(declare (not safe)) __tmp114205))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp114204))))
                                          (declare (not safe))
                                          (cons 'let __tmp114203)))
                                    '#t)))
                           (_dispatch109819_
                            (if (let ()
                                  (declare (not safe))
                                  (_dispatch-case?109673_
                                   _hd109812_
                                   _body109813_))
                                (let ()
                                  (declare (not safe))
                                  (_dispatch-case-e109674_
                                   _hd109812_
                                   _body109813_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-lambda-form
                                   _self109670_
                                   _hd109812_
                                   _body109813_)))))
                      (let ((__tmp114219
                             (let ((__tmp114220
                                    (let ((__tmp114221
                                           (let ((__tmp114222
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _args109810_ '()))))
                                             (declare (not safe))
                                             (cons _dispatch109819_
                                                   __tmp114222))))
                                      (declare (not safe))
                                      (cons 'apply __tmp114221))))
                               (declare (not safe))
                               (cons __tmp114220 '()))))
                        (declare (not safe))
                        (cons _condition109817_ __tmp114219))))))
          (let* ((_g109677109705_
                  (lambda (_g109678109702_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g109678109702_))))
                 (_g109676109807_
                  (lambda (_g109678109708_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g109678109708_))
                        (let ((_e109683109710_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g109678109708_))))
                          (let ((_hd109682109713_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e109683109710_)))
                                (_tl109681109715_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e109683109710_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl109681109715_))
                                (let ((_g114223_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl109681109715_
                                          '0))))
                                  (begin
                                    (let ((_g114224_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g114223_)
                                                 (##vector-length _g114223_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g114224_ 2)))
                                          (error "Context expects 2 values"
                                                 _g114224_)))
                                    (let ((_target109684109718_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g114223_ 0)))
                                          (_tl109686109720_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g114223_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl109686109720_))
                                          (letrec ((_loop109687109723_
                                                    (lambda (_hd109685109726_
                                                             _body109691109728_
                                                             _hd109692109730_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd109685109726_))
                                                          (let ((_e109688109733_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd109685109726_))))
                    (let ((_lp-hd109689109736_
                           (let ()
                             (declare (not safe))
                             (##car _e109688109733_)))
                          (_lp-tl109690109738_
                           (let ()
                             (declare (not safe))
                             (##cdr _e109688109733_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _lp-hd109689109736_))
                          (let ((_e109697109741_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _lp-hd109689109736_))))
                            (let ((_hd109696109744_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e109697109741_)))
                                  (_tl109695109746_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e109697109741_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl109695109746_))
                                  (let ((_e109700109749_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl109695109746_))))
                                    (let ((_hd109699109752_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e109700109749_)))
                                          (_tl109698109754_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e109700109749_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl109698109754_))
                                          (let ((__tmp114253
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd109699109752_
                                                         _body109691109728_)))
                                                (__tmp114252
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd109696109744_
                                                         _hd109692109730_))))
                                            (declare (not safe))
                                            (_loop109687109723_
                                             _lp-tl109690109738_
                                             __tmp114253
                                             __tmp114252))
                                          (let ()
                                            (declare (not safe))
                                            (_g109677109705_
                                             _g109678109708_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g109677109705_ _g109678109708_)))))
                          (let ()
                            (declare (not safe))
                            (_g109677109705_ _g109678109708_)))))
                  (let ((_body109693109757_ (reverse _body109691109728_))
                        (_hd109694109759_ (reverse _hd109692109730_)))
                    ((lambda (_L109762_ _L109763_)
                       (let ((_args109782_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_arglen109783_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_name109784_
                              (let ((_$e109779_
                                     (let ((__tmp114225
                                            (gxc#current-compile-runtime-names)))
                                       (declare (not safe))
                                       (hash-get __tmp114225 _stx109671_))))
                                (if _$e109779_
                                    _$e109779_
                                    ''case-lambda-dispatch))))
                         (let ((__tmp114226
                                (let ((__tmp114227
                                       (let ((__tmp114228
                                              (let ((__tmp114229
                                                     (let ((__tmp114242
                                                            (let ((__tmp114243
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114244
                                  (let ((__tmp114245
                                         (if (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls-unsafe?))
                                             (let ((__tmp114251
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args109782_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '##length __tmp114251))
                                             (let ((__tmp114246
                                                    (let ((__tmp114247
                                                           (let ((__tmp114248
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114249
                                 (let ((__tmp114250
                                        (let ()
                                          (declare (not safe))
                                          (cons _args109782_ '()))))
                                   (declare (not safe))
                                   (cons '##length __tmp114250))))
                            (declare (not safe))
                            (cons __tmp114249 '()))))
                     (declare (not safe))
                     (cons '(declare (not safe)) __tmp114248))))
              (declare (not safe))
              (cons '() __tmp114247))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'let __tmp114246)))))
                                    (declare (not safe))
                                    (cons __tmp114245 '()))))
                             (declare (not safe))
                             (cons _arglen109783_ __tmp114244))))
                      (declare (not safe))
                      (cons __tmp114243 '())))
                   (__tmp114230
                    (let ((__tmp114231
                           (let ((__tmp114232
                                  (let ((__tmp114236
                                         (let ((__tmp114237
                                                (let ((__tmp114238
                                                       (let ((__tmp114239
                                                              (let ((__tmp114240
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp114241
                                    (let ()
                                      (declare (not safe))
                                      (cons _args109782_ '()))))
                               (declare (not safe))
                               (cons _name109784_ __tmp114241))))
                        (declare (not safe))
                        (cons '##raise-wrong-number-of-arguments-exception
                              __tmp114240))))
                 (declare (not safe))
                 (cons __tmp114239 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'else __tmp114238))))
                                           (declare (not safe))
                                           (cons __tmp114237 '())))
                                        (__tmp114233
                                         (map (lambda (_g109785109788_
                                                       _g109786109790_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate1109675_
                                                   _args109782_
                                                   _arglen109783_
                                                   _g109785109788_
                                                   _g109786109790_)))
                                              (let ((__tmp114234
                                                     (lambda (_g109792109795_
                                                              _g109793109797_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g109792109795_
                                                               _g109793109797_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp114234
                                                        '()
                                                        _L109763_))
                                              (let ((__tmp114235
                                                     (lambda (_g109799109802_
                                                              _g109800109804_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g109799109802_
                                                               _g109800109804_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp114235
                                                        '()
                                                        _L109762_)))))
                                    (declare (not safe))
                                    (foldr1 cons __tmp114236 __tmp114233))))
                             (declare (not safe))
                             (cons 'cond __tmp114232))))
                      (declare (not safe))
                      (cons __tmp114231 '()))))
               (declare (not safe))
               (cons __tmp114242 __tmp114230))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'let __tmp114229))))
                                         (declare (not safe))
                                         (cons __tmp114228 '()))))
                                  (declare (not safe))
                                  (cons _args109782_ __tmp114227))))
                           (declare (not safe))
                           (cons 'lambda __tmp114226))))
                     _body109693109757_
                     _hd109694109759_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_loop109687109723_
                                               _target109684109718_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_g109677109705_
                                             _g109678109708_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g109677109705_ _g109678109708_)))))
                        (let ()
                          (declare (not safe))
                          (_g109677109705_ _g109678109708_))))))
            (declare (not safe))
            (_g109676109807_ _stx109671_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_self108941_ _stx108942_ _compiled-body?108943_)
        (letrec ((_generate-simple108945_
                  (lambda (_hd109655_ _body109656_)
                    (let ((__tmp114254
                           (let ((__tmp114255
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-simple-let
                                     _self108941_
                                     'let
                                     _hd109655_
                                     _body109656_
                                     _compiled-body?108943_))))
                             (declare (not safe))
                             (_coalesce-let*108947_ __tmp114255))))
                      (declare (not safe))
                      (_coalesce-boolean108946_ __tmp114254))))
                 (_coalesce-boolean108946_
                  (lambda (_code109516_)
                    (if (gxc#current-compile-boolean-context)
                        (let* ((_code109517109543_ _code109516_)
                               (_else109519109551_ (lambda () _code109516_))
                               (_K109521109588_
                                (lambda (_expr2109554_
                                         _expr1109555_
                                         _id109556_)
                                  (let* ((_expr2109557109565_ _expr2109554_)
                                         (_else109559109573_
                                          (lambda ()
                                            (let ((__tmp114256
                                                   (let ((__tmp114257
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _expr2109554_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _expr1109555_
                                                           __tmp114257))))
                                              (declare (not safe))
                                              (cons 'or __tmp114256))))
                                         (_K109561109578_
                                          (lambda (_exprs109576_)
                                            (let ((__tmp114258
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _expr1109555_
                                                           _exprs109576_))))
                                              (declare (not safe))
                                              (cons 'or __tmp114258)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _expr2109557109565_))
                                        (let ((_hd109562109581_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _expr2109557109565_)))
                                              (_tl109563109583_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _expr2109557109565_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd109562109581_ 'or))
                                              (let ((_exprs109586_
                                                     _tl109563109583_))
                                                (declare (not safe))
                                                (_K109561109578_
                                                 _exprs109586_))
                                              (let ()
                                                (declare (not safe))
                                                (_else109559109573_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else109559109573_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _code109517109543_))
                              (let ((_hd109522109591_
                                     (let ()
                                       (declare (not safe))
                                       (##car _code109517109543_)))
                                    (_tl109523109593_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _code109517109543_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _hd109522109591_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tl109523109593_))
                                        (let ((_hd109524109596_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tl109523109593_)))
                                              (_tl109525109598_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tl109523109593_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _hd109524109596_))
                                              (let ((_hd109536109601_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _hd109524109596_)))
                                                    (_tl109537109603_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _hd109524109596_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _hd109536109601_))
                                                    (let ((_hd109538109606_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _hd109536109601_)))
                                                          (_tl109539109608_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _hd109536109601_))))
                                                      (let ((_id109611_
                                                             _hd109538109606_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _tl109539109608_))
                                                            (let ((_hd109540109613_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _tl109539109608_)))
                          (_tl109541109615_
                           (let ()
                             (declare (not safe))
                             (##cdr _tl109539109608_))))
                      (let ((_expr1109618_ _hd109540109613_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _tl109541109615_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl109537109603_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl109525109598_))
                                    (let ((_hd109526109620_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl109525109598_)))
                                          (_tl109527109622_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl109525109598_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd109526109620_))
                                          (let ((_hd109528109625_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd109526109620_)))
                                                (_tl109529109627_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd109526109620_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd109528109625_ 'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl109529109627_))
                                                    (let ((_hd109530109630_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl109529109627_)))
                                                          (_tl109531109632_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl109529109627_))))
                                                      (if ((lambda (_g109634109636_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (eq? _g109634109636_ _id109611_)))
                   _hd109530109630_)
                  (if (let () (declare (not safe)) (##pair? _tl109531109632_))
                      (let ((_hd109532109639_
                             (let ()
                               (declare (not safe))
                               (##car _tl109531109632_)))
                            (_tl109533109641_
                             (let ()
                               (declare (not safe))
                               (##cdr _tl109531109632_))))
                        (if ((lambda (_g109643109645_)
                               (let ()
                                 (declare (not safe))
                                 (eq? _g109643109645_ _id109611_)))
                             _hd109532109639_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl109533109641_))
                                (let ((_hd109534109648_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl109533109641_)))
                                      (_tl109535109650_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl109533109641_))))
                                  (let ((_expr2109653_ _hd109534109648_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl109535109650_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _tl109527109622_))
                                            (let ()
                                              (declare (not safe))
                                              (_K109521109588_
                                               _expr2109653_
                                               _expr1109618_
                                               _id109611_))
                                            (let ()
                                              (declare (not safe))
                                              (_else109519109551_)))
                                        (let ()
                                          (declare (not safe))
                                          (_else109519109551_)))))
                                (let ()
                                  (declare (not safe))
                                  (_else109519109551_)))
                            (let ()
                              (declare (not safe))
                              (_else109519109551_))))
                      (let () (declare (not safe)) (_else109519109551_)))
                  (let () (declare (not safe)) (_else109519109551_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else109519109551_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_else109519109551_))))
                                          (let ()
                                            (declare (not safe))
                                            (_else109519109551_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else109519109551_)))
                                (let ()
                                  (declare (not safe))
                                  (_else109519109551_)))
                            (let ()
                              (declare (not safe))
                              (_else109519109551_)))))
                    (let () (declare (not safe)) (_else109519109551_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else109519109551_))))
                                              (let ()
                                                (declare (not safe))
                                                (_else109519109551_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else109519109551_)))
                                    (let ()
                                      (declare (not safe))
                                      (_else109519109551_))))
                              (let ()
                                (declare (not safe))
                                (_else109519109551_))))
                        _code109516_)))
                 (_coalesce-let*108947_
                  (lambda (_code109249_)
                    (let* ((_code109250109314_ _code109249_)
                           (_else109254109322_ (lambda () _code109249_)))
                      (let ((_K109296109467_
                             (lambda (_body109463_ _expr109464_ _id109465_)
                               (let ((__tmp114259
                                      (let ((__tmp114260
                                             (let ((__tmp114261
                                                    (let ((__tmp114262
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr109464_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id109465_ __tmp114262))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114261 '()))))
                                        (declare (not safe))
                                        (cons __tmp114260 _body109463_))))
                                 (declare (not safe))
                                 (cons 'let __tmp114259))))
                            (_K109273109392_
                             (lambda (_body109386_
                                      _expr2109387_
                                      _id2109388_
                                      _expr1109389_
                                      _id1109390_)
                               (let ((__tmp114263
                                      (let ((__tmp114264
                                             (let ((__tmp114268
                                                    (let ((__tmp114269
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr1109389_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id1109390_ __tmp114269)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp114265
                                                    (let ((__tmp114266
                                                           (let ((__tmp114267
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _expr2109387_ '()))))
                     (declare (not safe))
                     (cons _id2109388_ __tmp114267))))
              (declare (not safe))
              (cons __tmp114266 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114268
                                                     __tmp114265))))
                                        (declare (not safe))
                                        (cons __tmp114264 _body109386_))))
                                 (declare (not safe))
                                 (cons 'let* __tmp114263))))
                            (_K109256109331_
                             (lambda (_body109326_
                                      _bind109327_
                                      _expr1109328_
                                      _id1109329_)
                               (let ((__tmp114270
                                      (let ((__tmp114271
                                             (let ((__tmp114272
                                                    (let ((__tmp114273
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr1109328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id1109329_ __tmp114273))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114272
                                                     _bind109327_))))
                                        (declare (not safe))
                                        (cons __tmp114271 _body109326_))))
                                 (declare (not safe))
                                 (cons 'let* __tmp114270)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _code109250109314_))
                            (let ((_tl109298109472_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _code109250109314_)))
                                  (_hd109297109470_
                                   (let ()
                                     (declare (not safe))
                                     (##car _code109250109314_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd109297109470_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl109298109472_))
                                      (let ((_tl109300109477_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl109298109472_)))
                                            (_hd109299109475_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl109298109472_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _hd109299109475_))
                                            (let ((_tl109308109482_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _hd109299109475_)))
                                                  (_hd109307109480_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _hd109299109475_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _hd109307109480_))
                                                  (let ((_tl109310109487_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _hd109307109480_)))
                                                        (_hd109309109485_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _hd109307109480_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl109310109487_))
                                                        (let ((_tl109312109494_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl109310109487_)))
                      (_hd109311109492_
                       (let () (declare (not safe)) (##car _tl109310109487_))))
                  (if (let () (declare (not safe)) (##null? _tl109312109494_))
                      (if (let ()
                            (declare (not safe))
                            (##null? _tl109308109482_))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _tl109300109477_))
                              (let ((_tl109302109501_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _tl109300109477_)))
                                    (_hd109301109499_
                                     (let ()
                                       (declare (not safe))
                                       (##car _tl109300109477_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd109301109499_))
                                    (let ((_tl109304109506_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd109301109499_)))
                                          (_hd109303109504_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd109301109499_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd109303109504_ 'let))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _tl109304109506_))
                                              (let ((_tl109306109511_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _tl109304109506_)))
                                                    (_hd109305109509_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _tl109304109506_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _hd109305109509_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl109302109501_))
                                                        (let ((_id109490_
                                                               _hd109309109485_)
                                                              (_expr109497_
                                                               _hd109311109492_)
                                                              (_body109514_
                                                               _tl109306109511_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K109296109467_
                                                             _body109514_
                                                             _expr109497_
                                                             _id109490_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_else109254109322_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _hd109305109509_))
                                                        (let ((_tl109285109441_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _hd109305109509_)))
                      (_hd109284109439_
                       (let () (declare (not safe)) (##car _hd109305109509_))))
                  (if (let () (declare (not safe)) (##pair? _hd109284109439_))
                      (let ((_tl109287109446_
                             (let ()
                               (declare (not safe))
                               (##cdr _hd109284109439_)))
                            (_hd109286109444_
                             (let ()
                               (declare (not safe))
                               (##car _hd109284109439_))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl109287109446_))
                            (let ((_tl109289109453_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl109287109446_)))
                                  (_hd109288109451_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl109287109446_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl109289109453_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl109285109441_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl109302109501_))
                                          (let ((_id1109415_ _hd109309109485_)
                                                (_expr1109422_
                                                 _hd109311109492_)
                                                (_id2109449_ _hd109286109444_)
                                                (_expr2109456_
                                                 _hd109288109451_)
                                                (_body109458_
                                                 _tl109306109511_))
                                            (let ()
                                              (declare (not safe))
                                              (_K109273109392_
                                               _body109458_
                                               _expr2109456_
                                               _id2109449_
                                               _expr1109422_
                                               _id1109415_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else109254109322_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else109254109322_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else109254109322_))))
                            (let ()
                              (declare (not safe))
                              (_else109254109322_))))
                      (let () (declare (not safe)) (_else109254109322_))))
                (let () (declare (not safe)) (_else109254109322_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_else109254109322_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd109303109504_ 'let*))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl109304109506_))
                                                  (let ((_tl109266109375_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl109304109506_)))
                                                        (_hd109265109373_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl109304109506_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl109302109501_))
                                                        (let ((_id1109354_
                                                               _hd109309109485_)
                                                              (_expr1109361_
                                                               _hd109311109492_)
                                                              (_bind109378_
                                                               _hd109265109373_)
                                                              (_body109380_
                                                               _tl109266109375_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K109256109331_
                                                             _body109380_
                                                             _bind109378_
                                                             _expr1109361_
                                                             _id1109354_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_else109254109322_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else109254109322_)))
                                              (let ()
                                                (declare (not safe))
                                                (_else109254109322_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_else109254109322_))))
                              (let ()
                                (declare (not safe))
                                (_else109254109322_)))
                          (let () (declare (not safe)) (_else109254109322_)))
                      (let () (declare (not safe)) (_else109254109322_))))
                (let () (declare (not safe)) (_else109254109322_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else109254109322_))))
                                            (let ()
                                              (declare (not safe))
                                              (_else109254109322_))))
                                      (let ()
                                        (declare (not safe))
                                        (_else109254109322_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else109254109322_))))
                            (let ()
                              (declare (not safe))
                              (_else109254109322_)))))))
                 (_generate-values108948_
                  (lambda (_hd109062_ _body109063_)
                    (let _lp109065_ ((_rest109067_ _hd109062_)
                                     (_bind109068_ '())
                                     (_check109069_ '())
                                     (_post109070_ '()))
                      (let* ((___stx113196113197_ _rest109067_)
                             (_g109073109084_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx113196113197_)))))
                        (let ((___kont113198113199_
                               (lambda (_L109111_ _L109112_)
                                 (let* ((___stx113152113153_ _L109112_)
                                        (_g109127109152_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx113152113153_)))))
                                   (let ((___kont113154113155_
                                          (lambda (_L109225_ _L109226_)
                                            (let ((_eid109240_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _L109226_)))
                                                  (_expr109241_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self108941_
                                                      _L109225_))))
                                              (let ((__tmp114274
                                                     (let ((__tmp114275
                                                            (let ((__tmp114276
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr109241_ '()))))
                      (declare (not safe))
                      (cons _eid109240_ __tmp114276))))
               (declare (not safe))
               (cons __tmp114275 _bind109068_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp109065_
                                                 _L109111_
                                                 __tmp114274
                                                 _check109069_
                                                 _post109070_)))))
                                         (___kont113156113157_
                                          (lambda (_L109173_ _L109174_)
                                            (let* ((_vals109187_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_check-values109189_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _vals109187_
                                                       _L109174_
                                                       _L109173_)))
                                                   (_refs109191_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _vals109187_
                                                       _L109174_)))
                                                   (_expr109193_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self108941_
                                                       _L109173_))))
                                              (let ((__tmp114279
                                                     (let ((__tmp114280
                                                            (let ((__tmp114281
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr109193_ '()))))
                      (declare (not safe))
                      (cons _vals109187_ __tmp114281))))
               (declare (not safe))
               (cons __tmp114280 _bind109068_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp114278
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _check-values109189_
                                                             _check109069_)))
                                                    (__tmp114277
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _refs109191_
                                                             _post109070_))))
                                                (declare (not safe))
                                                (_lp109065_
                                                 _L109111_
                                                 __tmp114279
                                                 __tmp114278
                                                 __tmp114277))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx113152113153_))
                                         (let ((_e109133109201_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx113152113153_))))
                                           (let ((_tl109131109206_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e109133109201_)))
                                                 (_hd109132109204_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e109133109201_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _hd109132109204_))
                                                 (let ((_e109136109209_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _hd109132109204_))))
                                                   (let ((_tl109134109214_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e109136109209_)))
                                                         (_hd109135109212_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e109136109209_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl109134109214_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl109131109206_))
                     (let ((_e109139109217_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl109131109206_))))
                       (let ((_tl109137109222_
                              (let ()
                                (declare (not safe))
                                (##cdr _e109139109217_)))
                             (_hd109138109220_
                              (let ()
                                (declare (not safe))
                                (##car _e109139109217_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl109137109222_))
                             (___kont113154113155_
                              _hd109138109220_
                              _hd109135109212_)
                             (let () (declare (not safe)) (_g109127109152_)))))
                     (let () (declare (not safe)) (_g109127109152_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl109131109206_))
                     (let ((_e109147109165_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl109131109206_))))
                       (let ((_tl109145109170_
                              (let ()
                                (declare (not safe))
                                (##cdr _e109147109165_)))
                             (_hd109146109168_
                              (let ()
                                (declare (not safe))
                                (##car _e109147109165_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl109145109170_))
                             (___kont113156113157_
                              _hd109146109168_
                              _hd109132109204_)
                             (let () (declare (not safe)) (_g109127109152_)))))
                     (let () (declare (not safe)) (_g109127109152_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl109131109206_))
                                                     (let ((_e109147109165_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl109131109206_))))
                                                       (let ((_tl109145109170_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e109147109165_)))
                     (_hd109146109168_
                      (let () (declare (not safe)) (##car _e109147109165_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl109145109170_))
                     (___kont113156113157_ _hd109146109168_ _hd109132109204_)
                     (let () (declare (not safe)) (_g109127109152_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g109127109152_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g109127109152_)))))))
                              (___kont113200113201_
                               (lambda ()
                                 (let* ((_body109091_
                                         (if _compiled-body?108943_
                                             _body109063_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self108941_
                                                _body109063_))))
                                        (_body109093_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-post108949_
                                            _post109070_
                                            _body109091_)))
                                        (_body109095_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-check108950_
                                            _check109069_
                                            _body109093_))))
                                   (let ((__tmp114282
                                          (let ((__tmp114284
                                                 (reverse _bind109068_))
                                                (__tmp114283
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _body109095_ '()))))
                                            (declare (not safe))
                                            (cons __tmp114284 __tmp114283))))
                                     (declare (not safe))
                                     (cons 'let __tmp114282))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx113196113197_))
                              (let ((_e109079109103_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx113196113197_))))
                                (let ((_tl109077109108_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e109079109103_)))
                                      (_hd109078109106_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e109079109103_))))
                                  (___kont113198113199_
                                   _tl109077109108_
                                   _hd109078109106_)))
                              (___kont113200113201_)))))))
                 (_generate-values-post108949_
                  (lambda (_post109021_ _body109022_)
                    (let _lp109024_ ((_rest109026_ _post109021_)
                                     (_body109027_ _body109022_))
                      (let* ((_rest109028109036_ _rest109026_)
                             (_else109030109044_ (lambda () _body109027_))
                             (_K109032109050_
                              (lambda (_rest109047_ _bind109048_)
                                (let ((__tmp114285
                                       (let ((__tmp114286
                                              (let ((__tmp114287
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body109027_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _bind109048_
                                                      __tmp114287))))
                                         (declare (not safe))
                                         (cons 'let __tmp114286))))
                                  (declare (not safe))
                                  (_lp109024_ _rest109047_ __tmp114285)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest109028109036_))
                            (let ((_hd109033109053_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest109028109036_)))
                                  (_tl109034109055_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest109028109036_))))
                              (let* ((_bind109058_ _hd109033109053_)
                                     (_rest109060_ _tl109034109055_))
                                (declare (not safe))
                                (_K109032109050_ _rest109060_ _bind109058_)))
                            (let ()
                              (declare (not safe))
                              (_else109030109044_)))))))
                 (_generate-values-check108950_
                  (lambda (_check109018_ _body109019_)
                    (let ((__tmp114288
                           (let ((__tmp114290
                                  (let ()
                                    (declare (not safe))
                                    (cons _body109019_ '())))
                                 (__tmp114289 (reverse _check109018_)))
                             (declare (not safe))
                             (foldr1 cons __tmp114290 __tmp114289))))
                      (declare (not safe))
                      (cons 'begin __tmp114288)))))
          (let* ((_g108952108969_
                  (lambda (_g108953108966_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g108953108966_))))
                 (_g108951109015_
                  (lambda (_g108953108972_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g108953108972_))
                        (let ((_e108958108974_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g108953108972_))))
                          (let ((_hd108957108977_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108958108974_)))
                                (_tl108956108979_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108958108974_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl108956108979_))
                                (let ((_e108961108982_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl108956108979_))))
                                  (let ((_hd108960108985_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e108961108982_)))
                                        (_tl108959108987_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e108961108982_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl108959108987_))
                                        (let ((_e108964108990_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl108959108987_))))
                                          (let ((_hd108963108993_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108964108990_)))
                                                (_tl108962108995_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108964108990_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl108962108995_))
                                                ((lambda (_L108998_ _L108999_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L108999_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-simple108945_
                                                          _L108999_
                                                          _L108998_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values108948_
                                                          _L108999_
                                                          _L108998_))))
                                                 _hd108963108993_
                                                 _hd108960108985_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g108952108969_
                                                   _g108953108972_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g108952108969_ _g108953108972_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g108952108969_ _g108953108972_)))))
                        (let ()
                          (declare (not safe))
                          (_g108952108969_ _g108953108972_))))))
            (declare (not safe))
            (_g108951109015_ _stx108942_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_self109661_ _stx109662_)
        (let ((_compiled-body?109664_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-let-values%__%
           _self109661_
           _stx109662_
           _compiled-body?109664_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g114292_
        (let ((_g114291_ (let () (declare (not safe)) (##length _g114292_))))
          (cond ((let () (declare (not safe)) (##fx= _g114291_ 2))
                 (apply (lambda (_self109661_ _stx109662_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__0
                             _self109661_
                             _stx109662_)))
                        _g114292_))
                ((let () (declare (not safe)) (##fx= _g114291_ 3))
                 (apply (lambda (_self109666_
                                 _stx109667_
                                 _compiled-body?109668_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__%
                             _self109666_
                             _stx109667_
                             _compiled-body?109668_)))
                        _g114292_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g114292_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_vals108835_ _hd108836_)
        (let _lp108838_ ((_rest108840_ _hd108836_)
                         (_k108841_ '0)
                         (_r108842_ '()))
          (let* ((___stx113210113211_ _rest108840_)
                 (_g108847108864_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx113210113211_)))))
            (let ((___kont113212113213_
                   (lambda (_L108927_)
                     (let ((__tmp114293
                            (let () (declare (not safe)) (fx+ _k108841_ '1))))
                       (declare (not safe))
                       (_lp108838_ _L108927_ __tmp114293 _r108842_))))
                  (___kont113214113215_
                   (lambda (_L108900_ _L108901_)
                     (let ((__tmp114299
                            (let () (declare (not safe)) (fx+ _k108841_ '1)))
                           (__tmp114294
                            (let ((__tmp114295
                                   (let ((__tmp114298
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-binding-id
                                             _L108901_)))
                                         (__tmp114296
                                          (let ((__tmp114297
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-values-ref
                                                    _vals108835_
                                                    _k108841_
                                                    _L108900_))))
                                            (declare (not safe))
                                            (cons __tmp114297 '()))))
                                     (declare (not safe))
                                     (cons __tmp114298 __tmp114296))))
                              (declare (not safe))
                              (cons __tmp114295 _r108842_))))
                       (declare (not safe))
                       (_lp108838_ _L108900_ __tmp114299 __tmp114294))))
                  (___kont113216113217_
                   (lambda (_L108876_)
                     (let ((__tmp114300
                            (let ((__tmp114301
                                   (let ((__tmp114304
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-binding-id
                                             _L108876_)))
                                         (__tmp114302
                                          (let ((__tmp114303
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-values->list
                                                    _vals108835_
                                                    _k108841_))))
                                            (declare (not safe))
                                            (cons __tmp114303 '()))))
                                     (declare (not safe))
                                     (cons __tmp114304 __tmp114302))))
                              (declare (not safe))
                              (cons __tmp114301 '()))))
                       (declare (not safe))
                       (foldl1 cons __tmp114300 _r108842_))))
                  (___kont113218113219_ (lambda () (reverse _r108842_))))
              (let ((_g108845108887_
                     (lambda ()
                       (let ((_L108876_ ___stx113210113211_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _L108876_))
                             (___kont113216113217_ _L108876_)
                             (___kont113218113219_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx113210113211_))
                    (let ((_e108852108916_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx113210113211_))))
                      (let ((_tl108850108921_
                             (let ()
                               (declare (not safe))
                               (##cdr _e108852108916_)))
                            (_hd108851108919_
                             (let ()
                               (declare (not safe))
                               (##car _e108852108916_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _hd108851108919_))
                            (let ((_e108853108924_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd108851108919_))))
                              (if (let ()
                                    (declare (not safe))
                                    (equal? _e108853108924_ '#f))
                                  (___kont113212113213_ _tl108850108921_)
                                  (___kont113214113215_
                                   _tl108850108921_
                                   _hd108851108919_)))
                            (___kont113214113215_
                             _tl108850108921_
                             _hd108851108919_))))
                    (let () (declare (not safe)) (_g108845108887_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_self108514_ _stx108515_ _compiled-body?108516_)
        (letrec ((_generate-simple108518_
                  (lambda (_hd108820_ _body108821_)
                    (let ()
                      (declare (not safe))
                      (gxc#generate-runtime-simple-let
                       _self108514_
                       'letrec
                       _hd108820_
                       _body108821_
                       _compiled-body?108516_))))
                 (_generate-values108519_
                  (lambda (_hd108599_ _body108600_)
                    (let _lp108602_ ((_rest108604_ _hd108599_)
                                     (_bind108605_ '())
                                     (_check108606_ '())
                                     (_post108607_ '()))
                      (let* ((___stx113284113285_ _rest108604_)
                             (_g108610108621_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx113284113285_)))))
                        (let ((___kont113286113287_
                               (lambda (_L108648_ _L108649_)
                                 (let* ((___stx113240113241_ _L108649_)
                                        (_g108664108689_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx113240113241_)))))
                                   (let ((___kont113242113243_
                                          (lambda (_L108796_ _L108797_)
                                            (let ((_eid108811_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _L108797_)))
                                                  (_expr108812_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self108514_
                                                      _L108796_))))
                                              (let ((__tmp114305
                                                     (let ((__tmp114306
                                                            (let ((__tmp114307
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr108812_ '()))))
                      (declare (not safe))
                      (cons _eid108811_ __tmp114307))))
               (declare (not safe))
               (cons __tmp114306 _bind108605_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp108602_
                                                 _L108648_
                                                 __tmp114305
                                                 _check108606_
                                                 _post108607_)))))
                                         (___kont113244113245_
                                          (lambda (_L108710_ _L108711_)
                                            (let* ((_vals108724_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_check-values108726_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _vals108724_
                                                       _L108711_
                                                       _L108710_)))
                                                   (_refs108728_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _vals108724_
                                                       _L108711_)))
                                                   (_expr108730_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self108514_
                                                       _L108710_))))
                                              (let ((__tmp114310
                                                     (let ((__tmp114313
                                                            (let ((__tmp114314
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114315
                                  (let ()
                                    (declare (not safe))
                                    (cons _expr108730_ '()))))
                             (declare (not safe))
                             (cons _vals108724_ __tmp114315))))
                      (declare (not safe))
                      (cons __tmp114314 _bind108605_)))
                   (__tmp114311
                    (map (lambda (_e108732108734_)
                           (let* ((_g108736108745_ _e108732108734_)
                                  (_E108738108749_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _g108736108745_))))
                                  (_K108739108754_
                                   (lambda (_eid108752_)
                                     (let ((__tmp114312
                                            (let ()
                                              (declare (not safe))
                                              (cons '#!void '()))))
                                       (declare (not safe))
                                       (cons _eid108752_ __tmp114312)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _g108736108745_))
                                 (let ((_hd108740108757_
                                        (let ()
                                          (declare (not safe))
                                          (##car _g108736108745_)))
                                       (_tl108741108759_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _g108736108745_))))
                                   (let ((_eid108762_ _hd108740108757_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##pair? _tl108741108759_))
                                         (let ((_tl108743108764_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _tl108741108759_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##null? _tl108743108764_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_K108739108754_ _eid108762_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_E108738108749_))))
                                         (let ()
                                           (declare (not safe))
                                           (_E108738108749_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_E108738108749_)))))
                         _refs108728_)))
               (declare (not safe))
               (foldl1 cons __tmp114313 __tmp114311)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp114309
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _check-values108726_
                                                             _check108606_)))
                                                    (__tmp114308
                                                     (let ()
                                                       (declare (not safe))
                                                       (foldl1 cons
                                                               _refs108728_
                                                               _post108607_))))
                                                (declare (not safe))
                                                (_lp108602_
                                                 _L108648_
                                                 __tmp114310
                                                 __tmp114309
                                                 __tmp114308))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx113240113241_))
                                         (let ((_e108670108772_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx113240113241_))))
                                           (let ((_tl108668108777_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e108670108772_)))
                                                 (_hd108669108775_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e108670108772_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _hd108669108775_))
                                                 (let ((_e108673108780_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _hd108669108775_))))
                                                   (let ((_tl108671108785_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e108673108780_)))
                                                         (_hd108672108783_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e108673108780_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl108671108785_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl108668108777_))
                     (let ((_e108676108788_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl108668108777_))))
                       (let ((_tl108674108793_
                              (let ()
                                (declare (not safe))
                                (##cdr _e108676108788_)))
                             (_hd108675108791_
                              (let ()
                                (declare (not safe))
                                (##car _e108676108788_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl108674108793_))
                             (___kont113242113243_
                              _hd108675108791_
                              _hd108672108783_)
                             (let () (declare (not safe)) (_g108664108689_)))))
                     (let () (declare (not safe)) (_g108664108689_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl108668108777_))
                     (let ((_e108684108702_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl108668108777_))))
                       (let ((_tl108682108707_
                              (let ()
                                (declare (not safe))
                                (##cdr _e108684108702_)))
                             (_hd108683108705_
                              (let ()
                                (declare (not safe))
                                (##car _e108684108702_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl108682108707_))
                             (___kont113244113245_
                              _hd108683108705_
                              _hd108669108775_)
                             (let () (declare (not safe)) (_g108664108689_)))))
                     (let () (declare (not safe)) (_g108664108689_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl108668108777_))
                                                     (let ((_e108684108702_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl108668108777_))))
                                                       (let ((_tl108682108707_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e108684108702_)))
                     (_hd108683108705_
                      (let () (declare (not safe)) (##car _e108684108702_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl108682108707_))
                     (___kont113244113245_ _hd108683108705_ _hd108669108775_)
                     (let () (declare (not safe)) (_g108664108689_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g108664108689_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g108664108689_)))))))
                              (___kont113288113289_
                               (lambda ()
                                 (let* ((_body108628_
                                         (if _compiled-body?108516_
                                             _body108600_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self108514_
                                                _body108600_))))
                                        (_body108630_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-post108521_
                                            _post108607_
                                            _body108628_)))
                                        (_body108632_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-check108520_
                                            _check108606_
                                            _body108630_))))
                                   (let ((__tmp114316
                                          (let ((__tmp114318
                                                 (reverse _bind108605_))
                                                (__tmp114317
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _body108632_ '()))))
                                            (declare (not safe))
                                            (cons __tmp114318 __tmp114317))))
                                     (declare (not safe))
                                     (cons 'letrec __tmp114316))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx113284113285_))
                              (let ((_e108616108640_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx113284113285_))))
                                (let ((_tl108614108645_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e108616108640_)))
                                      (_hd108615108643_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e108616108640_))))
                                  (___kont113286113287_
                                   _tl108614108645_
                                   _hd108615108643_)))
                              (___kont113288113289_)))))))
                 (_generate-values-check108520_
                  (lambda (_check108596_ _body108597_)
                    (let ((__tmp114319
                           (let ((__tmp114321
                                  (let ()
                                    (declare (not safe))
                                    (cons _body108597_ '())))
                                 (__tmp114320 (reverse _check108596_)))
                             (declare (not safe))
                             (foldr1 cons __tmp114321 __tmp114320))))
                      (declare (not safe))
                      (cons 'begin __tmp114319))))
                 (_generate-values-post108521_
                  (lambda (_post108589_ _body108590_)
                    (let ((__tmp114322
                           (let ((__tmp114324
                                  (let ()
                                    (declare (not safe))
                                    (cons _body108590_ '())))
                                 (__tmp114323
                                  (map (lambda (_g108591108593_)
                                         (let ()
                                           (declare (not safe))
                                           (cons 'set! _g108591108593_)))
                                       (reverse _post108589_))))
                             (declare (not safe))
                             (foldr1 cons __tmp114324 __tmp114323))))
                      (declare (not safe))
                      (cons 'begin __tmp114322)))))
          (let* ((_g108523108540_
                  (lambda (_g108524108537_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g108524108537_))))
                 (_g108522108586_
                  (lambda (_g108524108543_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g108524108543_))
                        (let ((_e108529108545_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g108524108543_))))
                          (let ((_hd108528108548_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108529108545_)))
                                (_tl108527108550_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108529108545_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl108527108550_))
                                (let ((_e108532108553_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl108527108550_))))
                                  (let ((_hd108531108556_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e108532108553_)))
                                        (_tl108530108558_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e108532108553_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl108530108558_))
                                        (let ((_e108535108561_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl108530108558_))))
                                          (let ((_hd108534108564_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108535108561_)))
                                                (_tl108533108566_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108535108561_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl108533108566_))
                                                ((lambda (_L108569_ _L108570_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L108570_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-simple108518_
                                                          _L108570_
                                                          _L108569_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values108519_
                                                          _L108570_
                                                          _L108569_))))
                                                 _hd108534108564_
                                                 _hd108531108556_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g108523108540_
                                                   _g108524108543_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g108523108540_ _g108524108543_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g108523108540_ _g108524108543_)))))
                        (let ()
                          (declare (not safe))
                          (_g108523108540_ _g108524108543_))))))
            (declare (not safe))
            (_g108522108586_ _stx108515_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_self108826_ _stx108827_)
        (let ((_compiled-body?108829_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-letrec-values%__%
           _self108826_
           _stx108827_
           _compiled-body?108829_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g114326_
        (let ((_g114325_ (let () (declare (not safe)) (##length _g114326_))))
          (cond ((let () (declare (not safe)) (##fx= _g114325_ 2))
                 (apply (lambda (_self108826_ _stx108827_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__0
                             _self108826_
                             _stx108827_)))
                        _g114326_))
                ((let () (declare (not safe)) (##fx= _g114325_ 3))
                 (apply (lambda (_self108831_
                                 _stx108832_
                                 _compiled-body?108833_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__%
                             _self108831_
                             _stx108832_
                             _compiled-body?108833_)))
                        _g114326_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g114326_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_self108095_ _stx108096_)
        (letrec ((_generate-values108098_
                  (lambda (_hd108341_ _body108342_)
                    (let _lp108344_ ((_rest108346_ _hd108341_)
                                     (_bind108347_ '()))
                      (let* ((_rest108348108356_ _rest108346_)
                             (_else108350108367_
                              (lambda ()
                                (let ((_bind108364_ (reverse _bind108347_))
                                      (_body108365_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self108095_
                                          _body108342_))))
                                  (let ((__tmp114327
                                         (let ((__tmp114328
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _body108365_ '()))))
                                           (declare (not safe))
                                           (cons _bind108364_ __tmp114328))))
                                    (declare (not safe))
                                    (cons 'letrec* __tmp114327)))))
                             (_K108352108501_
                              (lambda (_rest108370_ _hd-bind108371_)
                                (let* ((___stx113298113299_ _hd-bind108371_)
                                       (_g108374108399_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx113298113299_)))))
                                  (let ((___kont113300113301_
                                         (lambda (_L108480_ _L108481_)
                                           (let ((_eid108495_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _L108481_)))
                                                 (_expr108496_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _self108095_
                                                     _L108480_))))
                                             (let ((__tmp114329
                                                    (let ((__tmp114330
                                                           (let ((__tmp114331
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _expr108496_ '()))))
                     (declare (not safe))
                     (cons _eid108495_ __tmp114331))))
              (declare (not safe))
              (cons __tmp114330 _bind108347_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp108344_
                                                _rest108370_
                                                __tmp114329)))))
                                        (___kont113302113303_
                                         (lambda (_L108420_ _L108421_)
                                           (let* ((_vals108440_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_tmp108442_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_check-values108444_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-check-values
                                                      _tmp108442_
                                                      _L108421_
                                                      _L108420_)))
                                                  (_refs108446_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-let-values-bind
                                                      _vals108440_
                                                      _L108421_)))
                                                  (_expr108448_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self108095_
                                                      _L108420_))))
                                             (let ((__tmp114332
                                                    (let ((__tmp114333
                                                           (let ((__tmp114334
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114335
                                 (let ((__tmp114336
                                        (let ((__tmp114337
                                               (let ((__tmp114340
                                                      (let ((__tmp114341
                                                             (let ((__tmp114342
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _expr108448_ '()))))
                       (declare (not safe))
                       (cons _tmp108442_ __tmp114342))))
                (declare (not safe))
                (cons __tmp114341 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp114338
                                                      (let ((__tmp114339
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _tmp108442_ '()))))
                (declare (not safe))
                (cons _check-values108444_ __tmp114339))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp114340
                                                       __tmp114338))))
                                          (declare (not safe))
                                          (cons 'let __tmp114337))))
                                   (declare (not safe))
                                   (cons __tmp114336 '()))))
                            (declare (not safe))
                            (cons _vals108440_ __tmp114335))))
                     (declare (not safe))
                     (cons __tmp114334 _bind108347_))))
              (declare (not safe))
              (foldl1 cons __tmp114333 _refs108446_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp108344_
                                                _rest108370_
                                                __tmp114332))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx113298113299_))
                                        (let ((_e108380108456_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx113298113299_))))
                                          (let ((_tl108378108461_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108380108456_)))
                                                (_hd108379108459_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108380108456_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd108379108459_))
                                                (let ((_e108383108464_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd108379108459_))))
                                                  (let ((_tl108381108469_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e108383108464_)))
                                                        (_hd108382108467_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e108383108464_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl108381108469_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl108378108461_))
                                                            (let ((_e108386108472_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl108378108461_))))
                      (let ((_tl108384108477_
                             (let ()
                               (declare (not safe))
                               (##cdr _e108386108472_)))
                            (_hd108385108475_
                             (let ()
                               (declare (not safe))
                               (##car _e108386108472_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl108384108477_))
                            (___kont113300113301_
                             _hd108385108475_
                             _hd108382108467_)
                            (let () (declare (not safe)) (_g108374108399_)))))
                    (let () (declare (not safe)) (_g108374108399_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl108378108461_))
                    (let ((_e108394108412_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl108378108461_))))
                      (let ((_tl108392108417_
                             (let ()
                               (declare (not safe))
                               (##cdr _e108394108412_)))
                            (_hd108393108415_
                             (let ()
                               (declare (not safe))
                               (##car _e108394108412_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl108392108417_))
                            (___kont113302113303_
                             _hd108393108415_
                             _hd108379108459_)
                            (let () (declare (not safe)) (_g108374108399_)))))
                    (let () (declare (not safe)) (_g108374108399_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl108378108461_))
                                                    (let ((_e108394108412_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl108378108461_))))
                                                      (let ((_tl108392108417_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e108394108412_)))
                    (_hd108393108415_
                     (let () (declare (not safe)) (##car _e108394108412_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl108392108417_))
                    (___kont113302113303_ _hd108393108415_ _hd108379108459_)
                    (let () (declare (not safe)) (_g108374108399_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g108374108399_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g108374108399_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108348108356_))
                            (let ((_hd108353108504_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108348108356_)))
                                  (_tl108354108506_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108348108356_))))
                              (let* ((_hd-bind108509_ _hd108353108504_)
                                     (_rest108511_ _tl108354108506_))
                                (declare (not safe))
                                (_K108352108501_
                                 _rest108511_
                                 _hd-bind108509_)))
                            (let ()
                              (declare (not safe))
                              (_else108350108367_)))))))
                 (_generate-letrec?108099_
                  (lambda (_hd108231_)
                    (let _lp108233_ ((_rest108235_ _hd108231_))
                      (let* ((_rest108236108244_ _rest108235_)
                             (_else108238108252_ (lambda () '#t))
                             (_K108240108329_
                              (lambda (_rest108255_ _hd-bind108256_)
                                (let* ((_g108258108275_
                                        (lambda (_g108259108272_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g108259108272_))))
                                       (_g108257108326_
                                        (lambda (_g108259108278_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _g108259108278_))
                                              (let ((_e108264108280_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _g108259108278_))))
                                                (let ((_hd108263108283_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e108264108280_)))
                                                      (_tl108262108285_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e108264108280_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd108263108283_))
                                                      (let ((_e108267108288_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd108263108283_))))
                (let ((_hd108266108291_
                       (let () (declare (not safe)) (##car _e108267108288_)))
                      (_tl108265108293_
                       (let () (declare (not safe)) (##cdr _e108267108288_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl108265108293_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl108262108285_))
                          (let ((_e108270108296_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl108262108285_))))
                            (let ((_hd108269108299_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e108270108296_)))
                                  (_tl108268108301_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e108270108296_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl108268108301_))
                                  ((lambda (_L108304_ _L108305_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_is-lambda-expr?108100_ _L108304_))
                                         (let ()
                                           (declare (not safe))
                                           (_lp108233_ _rest108255_))
                                         '#f))
                                   _hd108269108299_
                                   _hd108266108291_)
                                  (let ()
                                    (declare (not safe))
                                    (_g108258108275_ _g108259108278_)))))
                          (let ()
                            (declare (not safe))
                            (_g108258108275_ _g108259108278_)))
                      (let ()
                        (declare (not safe))
                        (_g108258108275_ _g108259108278_)))))
              (let ()
                (declare (not safe))
                (_g108258108275_ _g108259108278_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g108258108275_
                                                 _g108259108278_))))))
                                  (declare (not safe))
                                  (_g108257108326_ _hd-bind108256_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108236108244_))
                            (let ((_hd108241108332_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108236108244_)))
                                  (_tl108242108334_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108236108244_))))
                              (let* ((_hd-bind108337_ _hd108241108332_)
                                     (_rest108339_ _tl108242108334_))
                                (declare (not safe))
                                (_K108240108329_
                                 _rest108339_
                                 _hd-bind108337_)))
                            (let ()
                              (declare (not safe))
                              (_else108238108252_)))))))
                 (_is-lambda-expr?108100_
                  (lambda (_expr108168_)
                    (let* ((___stx113342113343_ _expr108168_)
                           (_g108171108185_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx113342113343_)))))
                      (let ((___kont113344113345_
                             (lambda (_L108213_ _L108214_) '#t))
                            (___kont113346113347_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? ___stx113342113343_))
                            (let ((_e108177108197_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e ___stx113342113343_))))
                              (let ((_tl108175108202_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e108177108197_)))
                                    (_hd108176108200_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e108177108197_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd108176108200_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd108176108200_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl108175108202_))
                                            (let ((_e108180108205_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl108175108202_))))
                                              (let ((_tl108178108210_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e108180108205_)))
                                                    (_hd108179108208_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e108180108205_))))
                                                (___kont113344113345_
                                                 _tl108178108210_
                                                 _hd108179108208_)))
                                            (___kont113346113347_))
                                        (___kont113346113347_))
                                    (___kont113346113347_))))
                            (___kont113346113347_)))))))
          (let* ((_g108102108119_
                  (lambda (_g108103108116_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g108103108116_))))
                 (_g108101108165_
                  (lambda (_g108103108122_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g108103108122_))
                        (let ((_e108108108124_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g108103108122_))))
                          (let ((_hd108107108127_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108108108124_)))
                                (_tl108106108129_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108108108124_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl108106108129_))
                                (let ((_e108111108132_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl108106108129_))))
                                  (let ((_hd108110108135_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e108111108132_)))
                                        (_tl108109108137_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e108111108132_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl108109108137_))
                                        (let ((_e108114108140_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl108109108137_))))
                                          (let ((_hd108113108143_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108114108140_)))
                                                (_tl108112108145_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108114108140_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl108112108145_))
                                                ((lambda (_L108148_ _L108149_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L108149_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-letrec?108099_
                                                              _L108149_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _self108095_
                                                              'letrec
                                                              _L108149_
                                                              _L108148_
                                                              '#f))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _self108095_
                                                              'letrec*
                                                              _L108149_
                                                              _L108148_
                                                              '#f)))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values108098_
                                                          _L108149_
                                                          _L108148_))))
                                                 _hd108113108143_
                                                 _hd108110108135_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g108102108119_
                                                   _g108103108122_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g108102108119_ _g108103108122_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g108102108119_ _g108103108122_)))))
                        (let ()
                          (declare (not safe))
                          (_g108102108119_ _g108103108122_))))))
            (declare (not safe))
            (_g108101108165_ _stx108096_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_hd108032_)
        (let _lp108034_ ((_rest108036_ _hd108032_))
          (let* ((_rest108037108053_ _rest108036_)
                 (_else108040108061_ (lambda () '#f)))
            (let ((_K108043108074_
                   (lambda (_rest108072_)
                     (let () (declare (not safe)) (_lp108034_ _rest108072_))))
                  (_K108042108066_ (lambda () '#t)))
              (let ((_try-match108039108069_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest108037108053_))
                           (let () (declare (not safe)) (_K108042108066_))
                           (let ()
                             (declare (not safe))
                             (_else108040108061_))))))
                (if (let () (declare (not safe)) (##pair? _rest108037108053_))
                    (let ((_tl108045108079_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest108037108053_)))
                          (_hd108044108077_
                           (let ()
                             (declare (not safe))
                             (##car _rest108037108053_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _hd108044108077_))
                          (let ((_tl108047108084_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _hd108044108077_)))
                                (_hd108046108082_
                                 (let ()
                                   (declare (not safe))
                                   (##car _hd108044108077_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd108046108082_))
                                (let ((_tl108051108087_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd108046108082_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl108051108087_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl108047108084_))
                                          (let ((_tl108049108090_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl108047108084_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _tl108049108090_))
                                                (let ((_rest108093_
                                                       _tl108045108079_))
                                                  (declare (not safe))
                                                  (_lp108034_ _rest108093_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_else108040108061_))))
                                          (let ()
                                            (declare (not safe))
                                            (_else108040108061_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else108040108061_))))
                                (let ()
                                  (declare (not safe))
                                  (_else108040108061_))))
                          (let () (declare (not safe)) (_else108040108061_))))
                    (let ()
                      (declare (not safe))
                      (_try-match108039108069_)))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_self107943_
               _form107944_
               _hd107945_
               _body107946_
               _compiled-body?107947_)
        (letrec ((_generate1107949_
                  (lambda (_bind107988_)
                    (let* ((_bind107989108000_ _bind107988_)
                           (_E107991108004_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _bind107989108000_))))
                           (_K107992108010_
                            (lambda (_expr108007_ _id108008_)
                              (let ((__tmp114345
                                     (let ()
                                       (declare (not safe))
                                       (gxc#generate-runtime-binding-id*
                                        _id108008_)))
                                    (__tmp114343
                                     (let ((__tmp114344
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self107943_
                                               _expr108007_))))
                                       (declare (not safe))
                                       (cons __tmp114344 '()))))
                                (declare (not safe))
                                (cons __tmp114345 __tmp114343)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _bind107989108000_))
                          (let ((_hd107993108013_
                                 (let ()
                                   (declare (not safe))
                                   (##car _bind107989108000_)))
                                (_tl107994108015_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _bind107989108000_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd107993108013_))
                                (let ((_hd107997108018_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd107993108013_)))
                                      (_tl107998108020_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd107993108013_))))
                                  (let ((_id108023_ _hd107997108018_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl107998108020_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl107994108015_))
                                            (let ((_hd107995108025_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl107994108015_)))
                                                  (_tl107996108027_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl107994108015_))))
                                              (let ((_expr108030_
                                                     _hd107995108025_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _tl107996108027_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K107992108010_
                                                       _expr108030_
                                                       _id108023_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E107991108004_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_E107991108004_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E107991108004_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E107991108004_))))
                          (let () (declare (not safe)) (_E107991108004_)))))))
          (let* ((_bind107951_ (map _generate1107949_ _hd107945_))
                 (_body107953_
                  (if _compiled-body?107947_
                      _body107946_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self107943_ _body107946_))))
                 (_body107985_
                  (let* ((_body107954107962_ _body107953_)
                         (_else107956107970_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (cons _body107953_ '()))))
                         (_K107958107975_
                          (lambda (_exprs107973_) _exprs107973_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _body107954107962_))
                        (let ((_hd107959107978_
                               (let ()
                                 (declare (not safe))
                                 (##car _body107954107962_)))
                              (_tl107960107980_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _body107954107962_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _hd107959107978_ 'begin))
                              (let ((_exprs107983_ _tl107960107980_))
                                (declare (not safe))
                                (_K107958107975_ _exprs107983_))
                              (let ()
                                (declare (not safe))
                                (_else107956107970_))))
                        (let () (declare (not safe)) (_else107956107970_))))))
            (let ((__tmp114346
                   (let ()
                     (declare (not safe))
                     (cons _bind107951_ _body107985_))))
              (declare (not safe))
              (cons _form107944_ __tmp114346))))))
    (define gxc#generate-runtime-quote%
      (lambda (_self107850_ _stx107851_)
        (letrec ((_generate1107853_
                  (lambda (_datum107905_)
                    (if (or (let () (declare (not safe)) (null? _datum107905_))
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _datum107905_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _datum107905_))
                            (let ()
                              (declare (not safe))
                              (eof-object? _datum107905_)))
                        _datum107905_
                        (if (uninterned-symbol? _datum107905_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _datum107905_
                               '#t))
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _datum107905_))
                                (let ((__tmp114351
                                       (let ((__tmp114352 (car _datum107905_)))
                                         (declare (not safe))
                                         (_generate1107853_ __tmp114352)))
                                      (__tmp114349
                                       (let ((__tmp114350 (cdr _datum107905_)))
                                         (declare (not safe))
                                         (_generate1107853_ __tmp114350))))
                                  (declare (not safe))
                                  (cons __tmp114351 __tmp114349))
                                (if (let ()
                                      (declare (not safe))
                                      (box? _datum107905_))
                                    (let ((__tmp114347
                                           (let ((__tmp114348
                                                  (unbox _datum107905_)))
                                             (declare (not safe))
                                             (_generate1107853_ __tmp114348))))
                                      (declare (not safe))
                                      (box __tmp114347))
                                    (if (let ()
                                          (declare (not safe))
                                          (vector? _datum107905_))
                                        (vector-map
                                         _generate1107853_
                                         _datum107905_)
                                        (if (or (s8vector? _datum107905_)
                                                (let ()
                                                  (declare (not safe))
                                                  (u8vector? _datum107905_))
                                                (s16vector? _datum107905_)
                                                (u16vector? _datum107905_)
                                                (s32vector? _datum107905_)
                                                (u32vector? _datum107905_)
                                                (s64vector? _datum107905_)
                                                (u64vector? _datum107905_)
                                                (f32vector? _datum107905_)
                                                (f64vector? _datum107905_))
                                            _datum107905_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _stx107851_)))))))))))
          (let* ((_g107855107868_
                  (lambda (_g107856107865_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g107856107865_))))
                 (_g107854107902_
                  (lambda (_g107856107871_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g107856107871_))
                        (let ((_e107860107873_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g107856107871_))))
                          (let ((_hd107859107876_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107860107873_)))
                                (_tl107858107878_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107860107873_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl107858107878_))
                                (let ((_e107863107881_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl107858107878_))))
                                  (let ((_hd107862107884_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107863107881_)))
                                        (_tl107861107886_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107863107881_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl107861107886_))
                                        ((lambda (_L107889_)
                                           (let ((__tmp114353
                                                  (let ((__tmp114354
                                                         (let ((__tmp114355
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L107889_))))
                   (declare (not safe))
                   (_generate1107853_ __tmp114355))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114354 '()))))
                                             (declare (not safe))
                                             (cons 'quote __tmp114353)))
                                         _hd107862107884_)
                                        (let ()
                                          (declare (not safe))
                                          (_g107855107868_ _g107856107871_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g107855107868_ _g107856107871_)))))
                        (let ()
                          (declare (not safe))
                          (_g107855107868_ _g107856107871_))))))
            (declare (not safe))
            (_g107854107902_ _stx107851_)))))
    (define gxc#generate-runtime-call%
      (lambda (_self107363_ _stx107364_)
        (letrec ((_compile-call107366_
                  (lambda (_rator107590_ _rands107591_)
                    (let ((_rator107597_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self107363_ _rator107590_)))
                          (_rands107598_
                           (map (lambda (_g107592107594_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self107363_
                                     _g107592107594_)))
                                _rands107591_)))
                      (let* ((___stx113389113390_ _rator107597_)
                             (_g107601107653_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx113389113390_)))))
                        (let ((___kont113391113392_
                               (lambda (_L107777_
                                        _L107778_
                                        _L107779_
                                        _L107780_)
                                 (if (fx= (length _rands107598_)
                                          (length (let ((__tmp114360
                                                         (lambda (_g107816107819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g107817107821_)
                   (let ()
                     (declare (not safe))
                     (cons _g107816107819_ _g107817107821_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp114360
                                                            '()
                                                            _L107779_))))
                                     (let* ((_id107824_ _L107780_)
                                            (_args107833_
                                             (let ((__tmp114356
                                                    (lambda (_g107825107828_
                                                             _g107826107830_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g107825107828_
                                                              _g107826107830_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp114356
                                                       '()
                                                       _L107779_)))
                                            (_body107842_
                                             (let ((__tmp114357
                                                    (lambda (_g107834107837_
                                                             _g107835107839_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g107834107837_
                                                              _g107835107839_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp114357
                                                       '()
                                                       _L107778_)))
                                            (_init107844_
                                             (map list
                                                  _args107833_
                                                  _rands107598_)))
                                       (let ((__tmp114358
                                              (let ((__tmp114359
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _init107844_
                                                             _body107842_))))
                                                (declare (not safe))
                                                (cons _id107824_
                                                      __tmp114359))))
                                         (declare (not safe))
                                         (cons 'let __tmp114358)))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _stx107364_)))))
                              (___kont113397113398_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (cons _rator107597_ _rands107598_)))))
                          (let ((___match113456113457_
                                 (lambda (_e107609107665_
                                          _hd107608107668_
                                          _tl107607107670_
                                          _e107612107673_
                                          _hd107611107676_
                                          _tl107610107678_
                                          _e107615107681_
                                          _hd107614107684_
                                          _tl107613107686_
                                          _e107618107689_
                                          _hd107617107692_
                                          _tl107616107694_
                                          _e107621107697_
                                          _hd107620107700_
                                          _tl107619107702_
                                          _e107624107705_
                                          _hd107623107708_
                                          _tl107622107710_
                                          _e107627107713_
                                          _hd107626107716_
                                          _tl107625107718_
                                          ___splice113393113394_
                                          _target107628107721_
                                          _tl107630107723_)
                                   (letrec ((_loop107631107726_
                                             (lambda (_hd107629107729_
                                                      _arg107635107731_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd107629107729_))
                                                   (let ((_e107632107734_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd107629107729_))))
                                                     (let ((_lp-tl107634107739_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e107632107734_)))
                                                           (_lp-hd107633107737_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e107632107734_))))
                                                       (let ((__tmp114362
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _lp-hd107633107737_ _arg107635107731_))))
                 (declare (not safe))
                 (_loop107631107726_ _lp-tl107634107739_ __tmp114362))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_arg107636107742_
                                                          (reverse _arg107635107731_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _tl107625107718_))
                                                         (let ((___splice113395113396_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _tl107625107718_ '0))))
                   (let ((_tl107639107747_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice113395113396_ '1)))
                         (_target107637107745_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice113395113396_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl107639107747_))
                         (letrec ((_loop107640107750_
                                   (lambda (_hd107638107753_
                                            _body107644107755_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd107638107753_))
                                         (let ((_e107641107758_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd107638107753_))))
                                           (let ((_lp-tl107643107763_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e107641107758_)))
                                                 (_lp-hd107642107761_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e107641107758_))))
                                             (let ((__tmp114361
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd107642107761_
                                                            _body107644107755_))))
                                               (declare (not safe))
                                               (_loop107640107750_
                                                _lp-tl107643107763_
                                                __tmp114361))))
                                         (let ((_body107645107766_
                                                (reverse _body107644107755_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl107619107702_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl107613107686_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl107610107678_))
                                                       (let ((_e107648107769_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl107610107678_))))
                 (let ((_tl107646107774_
                        (let () (declare (not safe)) (##cdr _e107648107769_)))
                       (_hd107647107772_
                        (let () (declare (not safe)) (##car _e107648107769_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl107646107774_))
                       (let ((_L107777_ _hd107647107772_)
                             (_L107778_ _body107645107766_)
                             (_L107779_ _arg107636107742_)
                             (_L107780_ _hd107617107692_))
                         (if (let ()
                               (declare (not safe))
                               (eq? _L107780_ _L107777_))
                             (___kont113391113392_
                              _L107777_
                              _L107778_
                              _L107779_
                              _L107780_)
                             (___kont113397113398_)))
                       (___kont113397113398_))))
               (___kont113397113398_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont113397113398_))
                                               (___kont113397113398_)))))))
                           (let ()
                             (declare (not safe))
                             (_loop107640107750_ _target107637107745_ '())))
                         (___kont113397113398_))))
                 (___kont113397113398_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ()
                                       (declare (not safe))
                                       (_loop107631107726_
                                        _target107628107721_
                                        '()))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? ___stx113389113390_))
                                (let ((_e107609107665_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e ___stx113389113390_))))
                                  (let ((_tl107607107670_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107609107665_)))
                                        (_hd107608107668_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107609107665_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd107608107668_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _hd107608107668_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl107607107670_))
                                                (let ((_e107612107673_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl107607107670_))))
                                                  (let ((_tl107610107678_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e107612107673_)))
                                                        (_hd107611107676_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e107612107673_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd107611107676_))
                                                        (let ((_e107615107681_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd107611107676_))))
                  (let ((_tl107613107686_
                         (let () (declare (not safe)) (##cdr _e107615107681_)))
                        (_hd107614107684_
                         (let ()
                           (declare (not safe))
                           (##car _e107615107681_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd107614107684_))
                        (let ((_e107618107689_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd107614107684_))))
                          (let ((_tl107616107694_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107618107689_)))
                                (_hd107617107692_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107618107689_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl107616107694_))
                                (let ((_e107621107697_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl107616107694_))))
                                  (let ((_tl107619107702_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107621107697_)))
                                        (_hd107620107700_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107621107697_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd107620107700_))
                                        (let ((_e107624107705_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd107620107700_))))
                                          (let ((_tl107622107710_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107624107705_)))
                                                (_hd107623107708_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107624107705_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd107623107708_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _hd107623107708_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl107622107710_))
                                                        (let ((_e107627107713_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl107622107710_))))
                  (let ((_tl107625107718_
                         (let () (declare (not safe)) (##cdr _e107627107713_)))
                        (_hd107626107716_
                         (let ()
                           (declare (not safe))
                           (##car _e107627107713_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _hd107626107716_))
                        (let ((___splice113393113394_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _hd107626107716_
                                  '0))))
                          (let ((_tl107630107723_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice113393113394_ '1)))
                                (_target107628107721_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice113393113394_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl107630107723_))
                                (___match113456113457_
                                 _e107609107665_
                                 _hd107608107668_
                                 _tl107607107670_
                                 _e107612107673_
                                 _hd107611107676_
                                 _tl107610107678_
                                 _e107615107681_
                                 _hd107614107684_
                                 _tl107613107686_
                                 _e107618107689_
                                 _hd107617107692_
                                 _tl107616107694_
                                 _e107621107697_
                                 _hd107620107700_
                                 _tl107619107702_
                                 _e107624107705_
                                 _hd107623107708_
                                 _tl107622107710_
                                 _e107627107713_
                                 _hd107626107716_
                                 _tl107625107718_
                                 ___splice113393113394_
                                 _target107628107721_
                                 _tl107630107723_)
                                (___kont113397113398_))))
                        (___kont113397113398_))))
                (___kont113397113398_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont113397113398_))
                                                (___kont113397113398_))))
                                        (___kont113397113398_))))
                                (___kont113397113398_))))
                        (___kont113397113398_))))
                (___kont113397113398_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont113397113398_))
                                            (___kont113397113398_))
                                        (___kont113397113398_))))
                                (___kont113397113398_)))))))))
          (let* ((_g107368107382_
                  (lambda (_g107369107379_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g107369107379_))))
                 (_g107367107587_
                  (lambda (_g107369107385_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g107369107385_))
                        (let ((_e107374107387_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g107369107385_))))
                          (let ((_hd107373107390_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107374107387_)))
                                (_tl107372107392_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107374107387_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl107372107392_))
                                (let ((_e107377107395_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl107372107392_))))
                                  (let ((_hd107376107398_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107377107395_)))
                                        (_tl107375107400_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107377107395_))))
                                    ((lambda (_L107403_ _L107404_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gxc#current-compile-decls-unsafe?))
                                           (let ()
                                             (declare (not safe))
                                             (_compile-call107366_
                                              _L107404_
                                              _L107403_))
                                           (let* ((___stx113505113506_
                                                   _L107404_)
                                                  (_g107419107431_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx113505113506_)))))
                                             (let ((___kont113507113508_
                                                    (lambda ()
                                                      (let ((_f107461_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _self107363_ _L107404_))))
                (if (let ((__tmp114377 (symbol->string _f107461_)))
                      (declare (not safe))
                      (string-prefix? '"##" __tmp114377))
                    (let _lp107463_ ((_rest107466_ (reverse _L107403_))
                                     (_bind107468_ '())
                                     (_args107469_ '()))
                      (let* ((_rest107470107478_ _rest107466_)
                             (_else107472107486_
                              (lambda ()
                                (let ((__tmp114363
                                       (let ((__tmp114364
                                              (let ((__tmp114365
                                                     (let ((__tmp114366
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _f107461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _args107469_))))
               (declare (not safe))
               (cons __tmp114366 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(declare (not safe))
                                                      __tmp114365))))
                                         (declare (not safe))
                                         (cons _bind107468_ __tmp114364))))
                                  (declare (not safe))
                                  (cons 'let __tmp114363))))
                             (_K107474107572_
                              (lambda (_rest107489_ _e107490_)
                                (let* ((___stx113459113460_ _e107490_)
                                       (_g107495107513_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx113459113460_)))))
                                  (let ((___kont113461113462_
                                         (lambda ()
                                           (let ((__tmp114367
                                                  (let ((__tmp114368
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _e107490_))))
                                                    (declare (not safe))
                                                    (cons __tmp114368
                                                          _args107469_))))
                                             (declare (not safe))
                                             (_lp107463_
                                              _rest107489_
                                              _bind107468_
                                              __tmp114367))))
                                        (___kont113463113464_
                                         (lambda ()
                                           (let ((__tmp114369
                                                  (let ((__tmp114370
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _e107490_))))
                                                    (declare (not safe))
                                                    (cons __tmp114370
                                                          _args107469_))))
                                             (declare (not safe))
                                             (_lp107463_
                                              _rest107489_
                                              _bind107468_
                                              __tmp114369))))
                                        (___kont113465113466_
                                         (lambda ()
                                           (let ((_tmp107520_
                                                  (let ((__tmp114371
                                                         (gensym '__tmp)))
                                                    (declare (not safe))
                                                    (make-symbol__0
                                                     __tmp114371))))
                                             (let ((__tmp114373
                                                    (let ((__tmp114374
                                                           (let ((__tmp114375
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114376
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _e107490_))))
                            (declare (not safe))
                            (cons __tmp114376 '()))))
                     (declare (not safe))
                     (cons _tmp107520_ __tmp114375))))
              (declare (not safe))
              (cons __tmp114374 _bind107468_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp114372
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _tmp107520_
                                                            _args107469_))))
                                               (declare (not safe))
                                               (_lp107463_
                                                _rest107489_
                                                __tmp114373
                                                __tmp114372))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx113459113460_))
                                        (let ((_e107499107551_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx113459113460_))))
                                          (let ((_tl107497107556_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107499107551_)))
                                                (_hd107498107554_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107499107551_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd107498107554_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd107498107554_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl107497107556_))
                                                        (let ((_e107502107559_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl107497107556_))))
                  (let ((_tl107500107564_
                         (let () (declare (not safe)) (##cdr _e107502107559_)))
                        (_hd107501107562_
                         (let ()
                           (declare (not safe))
                           (##car _e107502107559_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl107500107564_))
                        (___kont113461113462_)
                        (___kont113465113466_))))
                (___kont113465113466_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#quote
                                                           _hd107498107554_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl107497107556_))
                                                            (let ((_e107508107536_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl107497107556_))))
                      (let ((_tl107506107541_
                             (let ()
                               (declare (not safe))
                               (##cdr _e107508107536_)))
                            (_hd107507107539_
                             (let ()
                               (declare (not safe))
                               (##car _e107508107536_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl107506107541_))
                            (___kont113463113464_)
                            (___kont113465113466_))))
                    (___kont113465113466_))
                (___kont113465113466_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont113465113466_))))
                                        (___kont113465113466_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest107470107478_))
                            (let ((_hd107475107575_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest107470107478_)))
                                  (_tl107476107577_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest107470107478_))))
                              (let* ((_e107580_ _hd107475107575_)
                                     (_rest107582_ _tl107476107577_))
                                (declare (not safe))
                                (_K107474107572_ _rest107582_ _e107580_)))
                            (let ()
                              (declare (not safe))
                              (_else107472107486_)))))
                    (let ()
                      (declare (not safe))
                      (_compile-call107366_ _L107404_ _L107403_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont113509113510_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (_compile-call107366_
                                                         _L107404_
                                                         _L107403_)))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      ___stx113505113506_))
                                                   (let ((_e107423107443_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             ___stx113505113506_))))
                                                     (let ((_tl107421107448_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e107423107443_)))
                                                           (_hd107422107446_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e107423107443_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#identifier?
                                                              _hd107422107446_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-eq? '%#ref _hd107422107446_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl107421107448_))
                           (let ((_e107426107451_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl107421107448_))))
                             (let ((_tl107424107456_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e107426107451_)))
                                   (_hd107425107454_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e107426107451_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl107424107456_))
                                   (___kont113507113508_)
                                   (___kont113509113510_))))
                           (___kont113509113510_))
                       (___kont113509113510_))
                   (___kont113509113510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont113509113510_))))))
                                     _tl107375107400_
                                     _hd107376107398_)))
                                (let ()
                                  (declare (not safe))
                                  (_g107368107382_ _g107369107385_)))))
                        (let ()
                          (declare (not safe))
                          (_g107368107382_ _g107369107385_))))))
            (declare (not safe))
            (_g107367107587_ _stx107364_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_self107150_ _stx107151_)
        (let* ((___stx113577113578_ _stx107151_)
               (_g107154107174_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx113577113578_)))))
          (let ((___kont113579113580_
                 (lambda (_L107218_ _L107219_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-decls-unsafe?))
                       (let ()
                         (declare (not safe))
                         (gxc#generate-runtime-call% _self107150_ _stx107151_))
                       (let ((_f107237_
                              (let ((__tmp114378
                                     (let ((__tmp114380
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               '%#ref)))
                                           (__tmp114379
                                            (let ()
                                              (declare (not safe))
                                              (cons _L107219_ '()))))
                                       (declare (not safe))
                                       (cons __tmp114380 __tmp114379))))
                                (declare (not safe))
                                (gxc#compile-e__1 _self107150_ __tmp114378))))
                         (let _lp107239_ ((_rest107242_ (reverse _L107218_))
                                          (_bind107244_ '())
                                          (_args107245_ '()))
                           (let* ((_rest107246107254_ _rest107242_)
                                  (_else107248107262_
                                   (lambda ()
                                     (let ((__tmp114381
                                            (let ((__tmp114382
                                                   (let ((__tmp114383
                                                          (let ((__tmp114384
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _f107237_ _args107245_))))
                    (declare (not safe))
                    (cons __tmp114384 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '(declare
                                                              (not safe))
                                                           __tmp114383))))
                                              (declare (not safe))
                                              (cons _bind107244_
                                                    __tmp114382))))
                                       (declare (not safe))
                                       (cons 'let __tmp114381))))
                                  (_K107250107348_
                                   (lambda (_rest107265_ _e107266_)
                                     (let* ((___stx113531113532_ _e107266_)
                                            (_g107271107289_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  ___stx113531113532_)))))
                                       (let ((___kont113533113534_
                                              (lambda ()
                                                (let ((__tmp114385
                                                       (let ((__tmp114386
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _e107266_))))
                 (declare (not safe))
                 (cons __tmp114386 _args107245_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp107239_
                                                   _rest107265_
                                                   _bind107244_
                                                   __tmp114385))))
                                             (___kont113535113536_
                                              (lambda ()
                                                (let ((__tmp114387
                                                       (let ((__tmp114388
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _e107266_))))
                 (declare (not safe))
                 (cons __tmp114388 _args107245_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp107239_
                                                   _rest107265_
                                                   _bind107244_
                                                   __tmp114387))))
                                             (___kont113537113538_
                                              (lambda ()
                                                (let ((_tmp107296_
                                                       (let ((__tmp114389
                                                              (gensym '__tmp)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp114389))))
                                                  (let ((__tmp114391
                                                         (let ((__tmp114392
                                                                (let ((__tmp114393
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114394
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__0 _e107266_))))
                                 (declare (not safe))
                                 (cons __tmp114394 '()))))
                          (declare (not safe))
                          (cons _tmp107296_ __tmp114393))))
                   (declare (not safe))
                   (cons __tmp114392 _bind107244_)))
                (__tmp114390
                 (let ()
                   (declare (not safe))
                   (cons _tmp107296_ _args107245_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_lp107239_
                                                     _rest107265_
                                                     __tmp114391
                                                     __tmp114390))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                ___stx113531113532_))
                                             (let ((_e107275107327_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       ___stx113531113532_))))
                                               (let ((_tl107273107332_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e107275107327_)))
                                                     (_hd107274107330_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e107275107327_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _hd107274107330_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _hd107274107330_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl107273107332_))
                     (let ((_e107278107335_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl107273107332_))))
                       (let ((_tl107276107340_
                              (let ()
                                (declare (not safe))
                                (##cdr _e107278107335_)))
                             (_hd107277107338_
                              (let ()
                                (declare (not safe))
                                (##car _e107278107335_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl107276107340_))
                             (___kont113533113534_)
                             (___kont113537113538_))))
                     (___kont113537113538_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _hd107274107330_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _tl107273107332_))
                         (let ((_e107284107312_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _tl107273107332_))))
                           (let ((_tl107282107317_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e107284107312_)))
                                 (_hd107283107315_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e107284107312_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _tl107282107317_))
                                 (___kont113535113536_)
                                 (___kont113537113538_))))
                         (___kont113537113538_))
                     (___kont113537113538_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont113537113538_))))
                                             (___kont113537113538_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _rest107246107254_))
                                 (let ((_hd107251107351_
                                        (let ()
                                          (declare (not safe))
                                          (##car _rest107246107254_)))
                                       (_tl107252107353_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _rest107246107254_))))
                                   (let* ((_e107356_ _hd107251107351_)
                                          (_rest107358_ _tl107252107353_))
                                     (declare (not safe))
                                     (_K107250107348_ _rest107358_ _e107356_)))
                                 (let ()
                                   (declare (not safe))
                                   (_else107248107262_)))))))))
                (___kont113581113582_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#generate-runtime-call% _self107150_ _stx107151_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx113577113578_))
                (let ((_e107160107186_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx113577113578_))))
                  (let ((_tl107158107191_
                         (let () (declare (not safe)) (##cdr _e107160107186_)))
                        (_hd107159107189_
                         (let ()
                           (declare (not safe))
                           (##car _e107160107186_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl107158107191_))
                        (let ((_e107163107194_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl107158107191_))))
                          (let ((_tl107161107199_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107163107194_)))
                                (_hd107162107197_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107163107194_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd107162107197_))
                                (let ((_e107166107202_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd107162107197_))))
                                  (let ((_tl107164107207_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107166107202_)))
                                        (_hd107165107205_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107166107202_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd107165107205_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd107165107205_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl107164107207_))
                                                (let ((_e107169107210_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl107164107207_))))
                                                  (let ((_tl107167107215_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e107169107210_)))
                                                        (_hd107168107213_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e107169107210_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl107167107215_))
                                                        (___kont113579113580_
                                                         _tl107161107199_
                                                         _hd107168107213_)
                                                        (___kont113581113582_))))
                                                (___kont113581113582_))
                                            (___kont113581113582_))
                                        (___kont113581113582_))))
                                (___kont113581113582_))))
                        (___kont113581113582_))))
                (___kont113581113582_))))))
    (define gxc#generate-runtime-if%
      (lambda (_self106962_ _stx106963_)
        (letrec ((_simplify106965_
                  (lambda (_code107050_)
                    (let* ((_code107051107069_ _code107050_)
                           (_else107053107077_ (lambda () _code107050_))
                           (_K107055107113_
                            (lambda (_expr107080_ _test107081_)
                              (let* ((_expr107082107090_ _expr107080_)
                                     (_else107084107098_
                                      (lambda ()
                                        (let ((__tmp114395
                                               (let ((__tmp114396
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _expr107080_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _test107081_
                                                       __tmp114396))))
                                          (declare (not safe))
                                          (cons 'and __tmp114395))))
                                     (_K107086107103_
                                      (lambda (_exprs107101_)
                                        (let ((__tmp114397
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _test107081_
                                                       _exprs107101_))))
                                          (declare (not safe))
                                          (cons 'and __tmp114397)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _expr107082107090_))
                                    (let ((_hd107087107106_
                                           (let ()
                                             (declare (not safe))
                                             (##car _expr107082107090_)))
                                          (_tl107088107108_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _expr107082107090_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd107087107106_ 'and))
                                          (let ((_exprs107111_
                                                 _tl107088107108_))
                                            (declare (not safe))
                                            (_K107086107103_ _exprs107111_))
                                          (let ()
                                            (declare (not safe))
                                            (_else107084107098_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else107084107098_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _code107051107069_))
                          (let ((_hd107056107116_
                                 (let ()
                                   (declare (not safe))
                                   (##car _code107051107069_)))
                                (_tl107057107118_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _code107051107069_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _hd107056107116_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl107057107118_))
                                    (let ((_hd107058107121_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl107057107118_)))
                                          (_tl107059107123_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl107057107118_))))
                                      (let ((_test107126_ _hd107058107121_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl107059107123_))
                                            (let ((_hd107060107128_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl107059107123_)))
                                                  (_tl107061107130_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl107059107123_))))
                                              (let ((_expr107133_
                                                     _hd107060107128_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl107061107130_))
                                                    (let ((_hd107062107135_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl107061107130_)))
                                                          (_tl107063107137_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl107061107130_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _hd107062107135_))
                                                          (let ((_hd107064107140_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _hd107062107135_)))
                        (_tl107065107142_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd107062107135_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd107064107140_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl107065107142_))
                            (let ((_hd107066107145_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl107065107142_)))
                                  (_tl107067107147_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl107065107142_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd107066107145_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl107067107147_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl107063107137_))
                                          (let ()
                                            (declare (not safe))
                                            (_K107055107113_
                                             _expr107133_
                                             _test107126_))
                                          (let ()
                                            (declare (not safe))
                                            (_else107053107077_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else107053107077_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else107053107077_))))
                            (let () (declare (not safe)) (_else107053107077_)))
                        (let () (declare (not safe)) (_else107053107077_))))
                  (let () (declare (not safe)) (_else107053107077_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else107053107077_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_else107053107077_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_else107053107077_)))
                                (let ()
                                  (declare (not safe))
                                  (_else107053107077_))))
                          (let ()
                            (declare (not safe))
                            (_else107053107077_)))))))
          (let* ((_g106967106988_
                  (lambda (_g106968106985_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g106968106985_))))
                 (_g106966107047_
                  (lambda (_g106968106991_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g106968106991_))
                        (let ((_e106974106993_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g106968106991_))))
                          (let ((_hd106973106996_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e106974106993_)))
                                (_tl106972106998_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e106974106993_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl106972106998_))
                                (let ((_e106977107001_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl106972106998_))))
                                  (let ((_hd106976107004_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e106977107001_)))
                                        (_tl106975107006_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e106977107001_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl106975107006_))
                                        (let ((_e106980107009_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl106975107006_))))
                                          (let ((_hd106979107012_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e106980107009_)))
                                                (_tl106978107014_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e106980107009_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl106978107014_))
                                                (let ((_e106983107017_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl106978107014_))))
                                                  (let ((_hd106982107020_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e106983107017_)))
                                                        (_tl106981107022_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e106983107017_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl106981107022_))
                                                        ((lambda (_L107025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L107026_
                          _L107027_)
                   (if (gxc#current-compile-boolean-context)
                       (let ((__tmp114405
                              (let ((__tmp114406
                                     (let ((__tmp114411
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self106962_
                                               _L107027_)))
                                           (__tmp114407
                                            (let ((__tmp114410
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self106962_
                                                      _L107026_)))
                                                  (__tmp114408
                                                   (let ((__tmp114409
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self106962_
                                                             _L107025_))))
                                                     (declare (not safe))
                                                     (cons __tmp114409 '()))))
                                              (declare (not safe))
                                              (cons __tmp114410 __tmp114408))))
                                       (declare (not safe))
                                       (cons __tmp114411 __tmp114407))))
                                (declare (not safe))
                                (cons 'if __tmp114406))))
                         (declare (not safe))
                         (_simplify106965_ __tmp114405))
                       (let ((__tmp114398
                              (let ((__tmp114403
                                     (let ((__tmp114404
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self106962_
                                                 _L107027_)))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp114404
                                        gxc#current-compile-boolean-context
                                        '#t)))
                                    (__tmp114399
                                     (let ((__tmp114402
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self106962_
                                               _L107026_)))
                                           (__tmp114400
                                            (let ((__tmp114401
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self106962_
                                                      _L107025_))))
                                              (declare (not safe))
                                              (cons __tmp114401 '()))))
                                       (declare (not safe))
                                       (cons __tmp114402 __tmp114400))))
                                (declare (not safe))
                                (cons __tmp114403 __tmp114399))))
                         (declare (not safe))
                         (cons 'if __tmp114398))))
                 _hd106982107020_
                 _hd106979107012_
                 _hd106976107004_)
                (let ()
                  (declare (not safe))
                  (_g106967106988_ _g106968106991_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g106967106988_
                                                   _g106968106991_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g106967106988_ _g106968106991_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g106967106988_ _g106968106991_)))))
                        (let ()
                          (declare (not safe))
                          (_g106967106988_ _g106968106991_))))))
            (declare (not safe))
            (_g106966107047_ _stx106963_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_self106910_ _stx106911_)
        (let* ((_g106913106926_
                (lambda (_g106914106923_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106914106923_))))
               (_g106912106959_
                (lambda (_g106914106929_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106914106929_))
                      (let ((_e106918106931_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106914106929_))))
                        (let ((_hd106917106934_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106918106931_)))
                              (_tl106916106936_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106918106931_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106916106936_))
                              (let ((_e106921106939_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106916106936_))))
                                (let ((_hd106920106942_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106921106939_)))
                                      (_tl106919106944_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106921106939_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl106919106944_))
                                      ((lambda (_L106947_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _L106947_)))
                                       _hd106920106942_)
                                      (let ()
                                        (declare (not safe))
                                        (_g106913106926_ _g106914106929_)))))
                              (let ()
                                (declare (not safe))
                                (_g106913106926_ _g106914106929_)))))
                      (let ()
                        (declare (not safe))
                        (_g106913106926_ _g106914106929_))))))
          (declare (not safe))
          (_g106912106959_ _stx106911_))))
    (define gxc#generate-runtime-setq%
      (lambda (_self106842_ _stx106843_)
        (let* ((_g106845106862_
                (lambda (_g106846106859_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106846106859_))))
               (_g106844106907_
                (lambda (_g106846106865_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106846106865_))
                      (let ((_e106851106867_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106846106865_))))
                        (let ((_hd106850106870_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106851106867_)))
                              (_tl106849106872_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106851106867_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106849106872_))
                              (let ((_e106854106875_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106849106872_))))
                                (let ((_hd106853106878_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106854106875_)))
                                      (_tl106852106880_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106854106875_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106852106880_))
                                      (let ((_e106857106883_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106852106880_))))
                                        (let ((_hd106856106886_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106857106883_)))
                                              (_tl106855106888_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106857106883_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl106855106888_))
                                              ((lambda (_L106891_ _L106892_)
                                                 (let ((__tmp114412
                                                        (let ((__tmp114415
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-binding-id _L106892_)))
                      (__tmp114413
                       (let ((__tmp114414
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1 _self106842_ _L106891_))))
                         (declare (not safe))
                         (cons __tmp114414 '()))))
                  (declare (not safe))
                  (cons __tmp114415 __tmp114413))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'set! __tmp114412)))
                                               _hd106856106886_
                                               _hd106853106878_)
                                              (let ()
                                                (declare (not safe))
                                                (_g106845106862_
                                                 _g106846106865_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106845106862_ _g106846106865_)))))
                              (let ()
                                (declare (not safe))
                                (_g106845106862_ _g106846106865_)))))
                      (let ()
                        (declare (not safe))
                        (_g106845106862_ _g106846106865_))))))
          (declare (not safe))
          (_g106844106907_ _stx106843_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_self106653_ _stx106654_)
        (let* ((_g106656106673_
                (lambda (_g106657106670_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106657106670_))))
               (_g106655106839_
                (lambda (_g106657106676_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106657106676_))
                      (let ((_e106662106678_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106657106676_))))
                        (let ((_hd106661106681_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106662106678_)))
                              (_tl106660106683_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106662106678_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106660106683_))
                              (let ((_e106665106686_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106660106683_))))
                                (let ((_hd106664106689_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106665106686_)))
                                      (_tl106663106691_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106665106686_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106663106691_))
                                      (let ((_e106668106694_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106663106691_))))
                                        (let ((_hd106667106697_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106668106694_)))
                                              (_tl106666106699_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106668106694_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl106666106699_))
                                              ((lambda (_L106702_ _L106703_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (let ((__tmp114431
                                                            (let ((__tmp114434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self106653_ _L106702_)))
                          (__tmp114432
                           (let ((__tmp114433
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self106653_
                                     _L106703_))))
                             (declare (not safe))
                             (cons __tmp114433 '()))))
                      (declare (not safe))
                      (cons __tmp114434 __tmp114432))))
               (declare (not safe))
               (cons '##structure-instance-of? __tmp114431))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp106718_ ((_rest106721_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114430
                                      (let ()
                                        (declare (not safe))
                                        (cons _L106702_ '()))))
                                 (declare (not safe))
                                 (cons _L106703_ __tmp114430)))
                              (_bind106723_ '())
                              (_args106724_ '()))
               (let* ((_rest106725106733_ _rest106721_)
                      (_else106727106741_
                       (lambda ()
                         (let ((__tmp114416
                                (let ((__tmp114417
                                       (let ((__tmp114418
                                              (let ((__tmp114419
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '##structure-instance-of?
                                                             _args106724_))))
                                                (declare (not safe))
                                                (cons __tmp114419 '()))))
                                         (declare (not safe))
                                         (cons '(declare (not safe))
                                               __tmp114418))))
                                  (declare (not safe))
                                  (cons _bind106723_ __tmp114417))))
                           (declare (not safe))
                           (cons 'let __tmp114416))))
                      (_K106729106827_
                       (lambda (_rest106744_ _e106745_)
                         (let* ((___stx113615113616_ _e106745_)
                                (_g106750106768_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx113615113616_)))))
                           (let ((___kont113617113618_
                                  (lambda ()
                                    (let ((__tmp114420
                                           (let ((__tmp114421
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e106745_))))
                                             (declare (not safe))
                                             (cons __tmp114421 _args106724_))))
                                      (declare (not safe))
                                      (_lp106718_
                                       _rest106744_
                                       _bind106723_
                                       __tmp114420))))
                                 (___kont113619113620_
                                  (lambda ()
                                    (let ((__tmp114422
                                           (let ((__tmp114423
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e106745_))))
                                             (declare (not safe))
                                             (cons __tmp114423 _args106724_))))
                                      (declare (not safe))
                                      (_lp106718_
                                       _rest106744_
                                       _bind106723_
                                       __tmp114422))))
                                 (___kont113621113622_
                                  (lambda ()
                                    (let ((_tmp106775_
                                           (let ((__tmp114424 (gensym '__tmp)))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp114424))))
                                      (let ((__tmp114426
                                             (let ((__tmp114427
                                                    (let ((__tmp114428
                                                           (let ((__tmp114429
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e106745_))))
                     (declare (not safe))
                     (cons __tmp114429 '()))))
              (declare (not safe))
              (cons _tmp106775_ __tmp114428))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114427
                                                     _bind106723_)))
                                            (__tmp114425
                                             (let ()
                                               (declare (not safe))
                                               (cons _tmp106775_
                                                     _args106724_))))
                                        (declare (not safe))
                                        (_lp106718_
                                         _rest106744_
                                         __tmp114426
                                         __tmp114425))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx113615113616_))
                                 (let ((_e106754106806_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx113615113616_))))
                                   (let ((_tl106752106811_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e106754106806_)))
                                         (_hd106753106809_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e106754106806_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _hd106753106809_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _hd106753106809_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl106752106811_))
                                                 (let ((_e106757106814_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl106752106811_))))
                                                   (let ((_tl106755106819_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e106757106814_)))
                                                         (_hd106756106817_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e106757106814_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl106755106819_))
                                                         (___kont113617113618_)
                                                         (___kont113621113622_))))
                                                 (___kont113621113622_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _hd106753106809_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl106752106811_))
                                                     (let ((_e106763106791_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl106752106811_))))
                                                       (let ((_tl106761106796_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e106763106791_)))
                     (_hd106762106794_
                      (let () (declare (not safe)) (##car _e106763106791_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl106761106796_))
                     (___kont113619113620_)
                     (___kont113621113622_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont113621113622_))
                                                 (___kont113621113622_)))
                                         (___kont113621113622_))))
                                 (___kont113621113622_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest106725106733_))
                     (let ((_hd106730106830_
                            (let ()
                              (declare (not safe))
                              (##car _rest106725106733_)))
                           (_tl106731106832_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest106725106733_))))
                       (let* ((_e106835_ _hd106730106830_)
                              (_rest106837_ _tl106731106832_))
                         (declare (not safe))
                         (_K106729106827_ _rest106837_ _e106835_)))
                     (let () (declare (not safe)) (_else106727106741_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd106667106697_
                                               _hd106664106689_)
                                              (let ()
                                                (declare (not safe))
                                                (_g106656106673_
                                                 _g106657106676_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106656106673_ _g106657106676_)))))
                              (let ()
                                (declare (not safe))
                                (_g106656106673_ _g106657106676_)))))
                      (let ()
                        (declare (not safe))
                        (_g106656106673_ _g106657106676_))))))
          (declare (not safe))
          (_g106655106839_ _stx106654_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_self106464_ _stx106465_)
        (let* ((_g106467106484_
                (lambda (_g106468106481_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106468106481_))))
               (_g106466106650_
                (lambda (_g106468106487_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106468106487_))
                      (let ((_e106473106489_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106468106487_))))
                        (let ((_hd106472106492_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106473106489_)))
                              (_tl106471106494_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106473106489_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106471106494_))
                              (let ((_e106476106497_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106471106494_))))
                                (let ((_hd106475106500_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106476106497_)))
                                      (_tl106474106502_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106476106497_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106474106502_))
                                      (let ((_e106479106505_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106474106502_))))
                                        (let ((_hd106478106508_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106479106505_)))
                                              (_tl106477106510_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106479106505_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl106477106510_))
                                              ((lambda (_L106513_ _L106514_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (let ((__tmp114450
                                                            (let ((__tmp114453
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self106464_ _L106513_)))
                          (__tmp114451
                           (let ((__tmp114452
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self106464_
                                     _L106514_))))
                             (declare (not safe))
                             (cons __tmp114452 '()))))
                      (declare (not safe))
                      (cons __tmp114453 __tmp114451))))
               (declare (not safe))
               (cons '##structure-direct-instance-of? __tmp114450))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp106529_ ((_rest106532_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114449
                                      (let ()
                                        (declare (not safe))
                                        (cons _L106513_ '()))))
                                 (declare (not safe))
                                 (cons _L106514_ __tmp114449)))
                              (_bind106534_ '())
                              (_args106535_ '()))
               (let* ((_rest106536106544_ _rest106532_)
                      (_else106538106552_
                       (lambda ()
                         (let ((__tmp114435
                                (let ((__tmp114436
                                       (let ((__tmp114437
                                              (let ((__tmp114438
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '##structure-direct-instance-of?
                                                             _args106535_))))
                                                (declare (not safe))
                                                (cons __tmp114438 '()))))
                                         (declare (not safe))
                                         (cons '(declare (not safe))
                                               __tmp114437))))
                                  (declare (not safe))
                                  (cons _bind106534_ __tmp114436))))
                           (declare (not safe))
                           (cons 'let __tmp114435))))
                      (_K106540106638_
                       (lambda (_rest106555_ _e106556_)
                         (let* ((___stx113661113662_ _e106556_)
                                (_g106561106579_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx113661113662_)))))
                           (let ((___kont113663113664_
                                  (lambda ()
                                    (let ((__tmp114439
                                           (let ((__tmp114440
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e106556_))))
                                             (declare (not safe))
                                             (cons __tmp114440 _args106535_))))
                                      (declare (not safe))
                                      (_lp106529_
                                       _rest106555_
                                       _bind106534_
                                       __tmp114439))))
                                 (___kont113665113666_
                                  (lambda ()
                                    (let ((__tmp114441
                                           (let ((__tmp114442
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e106556_))))
                                             (declare (not safe))
                                             (cons __tmp114442 _args106535_))))
                                      (declare (not safe))
                                      (_lp106529_
                                       _rest106555_
                                       _bind106534_
                                       __tmp114441))))
                                 (___kont113667113668_
                                  (lambda ()
                                    (let ((_tmp106586_
                                           (let ((__tmp114443 (gensym '__tmp)))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp114443))))
                                      (let ((__tmp114445
                                             (let ((__tmp114446
                                                    (let ((__tmp114447
                                                           (let ((__tmp114448
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e106556_))))
                     (declare (not safe))
                     (cons __tmp114448 '()))))
              (declare (not safe))
              (cons _tmp106586_ __tmp114447))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114446
                                                     _bind106534_)))
                                            (__tmp114444
                                             (let ()
                                               (declare (not safe))
                                               (cons _tmp106586_
                                                     _args106535_))))
                                        (declare (not safe))
                                        (_lp106529_
                                         _rest106555_
                                         __tmp114445
                                         __tmp114444))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx113661113662_))
                                 (let ((_e106565106617_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx113661113662_))))
                                   (let ((_tl106563106622_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e106565106617_)))
                                         (_hd106564106620_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e106565106617_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _hd106564106620_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _hd106564106620_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl106563106622_))
                                                 (let ((_e106568106625_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl106563106622_))))
                                                   (let ((_tl106566106630_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e106568106625_)))
                                                         (_hd106567106628_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e106568106625_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl106566106630_))
                                                         (___kont113663113664_)
                                                         (___kont113667113668_))))
                                                 (___kont113667113668_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _hd106564106620_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl106563106622_))
                                                     (let ((_e106574106602_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl106563106622_))))
                                                       (let ((_tl106572106607_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e106574106602_)))
                     (_hd106573106605_
                      (let () (declare (not safe)) (##car _e106574106602_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl106572106607_))
                     (___kont113665113666_)
                     (___kont113667113668_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont113667113668_))
                                                 (___kont113667113668_)))
                                         (___kont113667113668_))))
                                 (___kont113667113668_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest106536106544_))
                     (let ((_hd106541106641_
                            (let ()
                              (declare (not safe))
                              (##car _rest106536106544_)))
                           (_tl106542106643_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest106536106544_))))
                       (let* ((_e106646_ _hd106541106641_)
                              (_rest106648_ _tl106542106643_))
                         (declare (not safe))
                         (_K106540106638_ _rest106648_ _e106646_)))
                     (let () (declare (not safe)) (_else106538106552_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd106478106508_
                                               _hd106475106500_)
                                              (let ()
                                                (declare (not safe))
                                                (_g106467106484_
                                                 _g106468106487_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106467106484_ _g106468106487_)))))
                              (let ()
                                (declare (not safe))
                                (_g106467106484_ _g106468106487_)))))
                      (let ()
                        (declare (not safe))
                        (_g106467106484_ _g106468106487_))))))
          (declare (not safe))
          (_g106466106650_ _stx106465_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_self106380_ _stx106381_)
        (let* ((_g106383106404_
                (lambda (_g106384106401_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106384106401_))))
               (_g106382106461_
                (lambda (_g106384106407_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106384106407_))
                      (let ((_e106390106409_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106384106407_))))
                        (let ((_hd106389106412_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106390106409_)))
                              (_tl106388106414_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106390106409_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106388106414_))
                              (let ((_e106393106417_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106388106414_))))
                                (let ((_hd106392106420_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106393106417_)))
                                      (_tl106391106422_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106393106417_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106391106422_))
                                      (let ((_e106396106425_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106391106422_))))
                                        (let ((_hd106395106428_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106396106425_)))
                                              (_tl106394106430_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106396106425_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106394106430_))
                                              (let ((_e106399106433_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106394106430_))))
                                                (let ((_hd106398106436_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106399106433_)))
                                                      (_tl106397106438_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106399106433_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl106397106438_))
                                                      ((lambda (_L106441_
                                                                _L106442_
                                                                _L106443_)
                                                         (let ((__tmp114454
                                                                (let ((__tmp114460
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self106380_ _L106441_)))
                              (__tmp114455
                               (let ((__tmp114459
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self106380_
                                         _L106442_)))
                                     (__tmp114456
                                      (let ((__tmp114458
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self106380_
                                                _L106443_)))
                                            (__tmp114457
                                             (let ()
                                               (declare (not safe))
                                               (cons ''#f '()))))
                                        (declare (not safe))
                                        (cons __tmp114458 __tmp114457))))
                                 (declare (not safe))
                                 (cons __tmp114459 __tmp114456))))
                          (declare (not safe))
                          (cons __tmp114460 __tmp114455))))
                   (declare (not safe))
                   (cons '##structure-ref __tmp114454)))
               _hd106398106436_
               _hd106395106428_
               _hd106392106420_)
              (let ()
                (declare (not safe))
                (_g106383106404_ _g106384106407_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106383106404_
                                                 _g106384106407_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106383106404_ _g106384106407_)))))
                              (let ()
                                (declare (not safe))
                                (_g106383106404_ _g106384106407_)))))
                      (let ()
                        (declare (not safe))
                        (_g106383106404_ _g106384106407_))))))
          (declare (not safe))
          (_g106382106461_ _stx106381_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_self106280_ _stx106281_)
        (let* ((_g106283106308_
                (lambda (_g106284106305_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106284106305_))))
               (_g106282106377_
                (lambda (_g106284106311_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106284106311_))
                      (let ((_e106291106313_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106284106311_))))
                        (let ((_hd106290106316_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106291106313_)))
                              (_tl106289106318_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106291106313_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106289106318_))
                              (let ((_e106294106321_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106289106318_))))
                                (let ((_hd106293106324_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106294106321_)))
                                      (_tl106292106326_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106294106321_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106292106326_))
                                      (let ((_e106297106329_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106292106326_))))
                                        (let ((_hd106296106332_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106297106329_)))
                                              (_tl106295106334_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106297106329_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106295106334_))
                                              (let ((_e106300106337_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106295106334_))))
                                                (let ((_hd106299106340_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106300106337_)))
                                                      (_tl106298106342_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106300106337_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl106298106342_))
                                                      (let ((_e106303106345_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl106298106342_))))
                (let ((_hd106302106348_
                       (let () (declare (not safe)) (##car _e106303106345_)))
                      (_tl106301106350_
                       (let () (declare (not safe)) (##cdr _e106303106345_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl106301106350_))
                      ((lambda (_L106353_ _L106354_ _L106355_ _L106356_)
                         (let ((__tmp114461
                                (let ((__tmp114469
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self106280_
                                          _L106354_)))
                                      (__tmp114462
                                       (let ((__tmp114468
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self106280_
                                                 _L106353_)))
                                             (__tmp114463
                                              (let ((__tmp114467
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self106280_
                                                        _L106355_)))
                                                    (__tmp114464
                                                     (let ((__tmp114466
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self106280_
                                                               _L106356_)))
                                                           (__tmp114465
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons ''#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp114466 __tmp114465))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114467
                                                      __tmp114464))))
                                         (declare (not safe))
                                         (cons __tmp114468 __tmp114463))))
                                  (declare (not safe))
                                  (cons __tmp114469 __tmp114462))))
                           (declare (not safe))
                           (cons '##structure-set! __tmp114461)))
                       _hd106302106348_
                       _hd106299106340_
                       _hd106296106332_
                       _hd106293106324_)
                      (let ()
                        (declare (not safe))
                        (_g106283106308_ _g106284106311_)))))
              (let ()
                (declare (not safe))
                (_g106283106308_ _g106284106311_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106283106308_
                                                 _g106284106311_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106283106308_ _g106284106311_)))))
                              (let ()
                                (declare (not safe))
                                (_g106283106308_ _g106284106311_)))))
                      (let ()
                        (declare (not safe))
                        (_g106283106308_ _g106284106311_))))))
          (declare (not safe))
          (_g106282106377_ _stx106281_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_self106196_ _stx106197_)
        (let* ((_g106199106220_
                (lambda (_g106200106217_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106200106217_))))
               (_g106198106277_
                (lambda (_g106200106223_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106200106223_))
                      (let ((_e106206106225_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106200106223_))))
                        (let ((_hd106205106228_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106206106225_)))
                              (_tl106204106230_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106206106225_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106204106230_))
                              (let ((_e106209106233_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106204106230_))))
                                (let ((_hd106208106236_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106209106233_)))
                                      (_tl106207106238_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106209106233_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106207106238_))
                                      (let ((_e106212106241_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106207106238_))))
                                        (let ((_hd106211106244_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106212106241_)))
                                              (_tl106210106246_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106212106241_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106210106246_))
                                              (let ((_e106215106249_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106210106246_))))
                                                (let ((_hd106214106252_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106215106249_)))
                                                      (_tl106213106254_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106215106249_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl106213106254_))
                                                      ((lambda (_L106257_
                                                                _L106258_
                                                                _L106259_)
                                                         (let ((__tmp114470
                                                                (let ((__tmp114476
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self106196_ _L106257_)))
                              (__tmp114471
                               (let ((__tmp114475
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self106196_
                                         _L106258_)))
                                     (__tmp114472
                                      (let ((__tmp114474
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self106196_
                                                _L106259_)))
                                            (__tmp114473
                                             (let ()
                                               (declare (not safe))
                                               (cons ''#f '()))))
                                        (declare (not safe))
                                        (cons __tmp114474 __tmp114473))))
                                 (declare (not safe))
                                 (cons __tmp114475 __tmp114472))))
                          (declare (not safe))
                          (cons __tmp114476 __tmp114471))))
                   (declare (not safe))
                   (cons '##direct-structure-ref __tmp114470)))
               _hd106214106252_
               _hd106211106244_
               _hd106208106236_)
              (let ()
                (declare (not safe))
                (_g106199106220_ _g106200106223_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106199106220_
                                                 _g106200106223_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106199106220_ _g106200106223_)))))
                              (let ()
                                (declare (not safe))
                                (_g106199106220_ _g106200106223_)))))
                      (let ()
                        (declare (not safe))
                        (_g106199106220_ _g106200106223_))))))
          (declare (not safe))
          (_g106198106277_ _stx106197_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_self106096_ _stx106097_)
        (let* ((_g106099106124_
                (lambda (_g106100106121_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106100106121_))))
               (_g106098106193_
                (lambda (_g106100106127_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106100106127_))
                      (let ((_e106107106129_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106100106127_))))
                        (let ((_hd106106106132_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106107106129_)))
                              (_tl106105106134_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106107106129_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106105106134_))
                              (let ((_e106110106137_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106105106134_))))
                                (let ((_hd106109106140_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106110106137_)))
                                      (_tl106108106142_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106110106137_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106108106142_))
                                      (let ((_e106113106145_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106108106142_))))
                                        (let ((_hd106112106148_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106113106145_)))
                                              (_tl106111106150_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106113106145_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106111106150_))
                                              (let ((_e106116106153_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106111106150_))))
                                                (let ((_hd106115106156_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106116106153_)))
                                                      (_tl106114106158_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106116106153_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl106114106158_))
                                                      (let ((_e106119106161_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl106114106158_))))
                (let ((_hd106118106164_
                       (let () (declare (not safe)) (##car _e106119106161_)))
                      (_tl106117106166_
                       (let () (declare (not safe)) (##cdr _e106119106161_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl106117106166_))
                      ((lambda (_L106169_ _L106170_ _L106171_ _L106172_)
                         (let ((__tmp114477
                                (let ((__tmp114485
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self106096_
                                          _L106170_)))
                                      (__tmp114478
                                       (let ((__tmp114484
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self106096_
                                                 _L106169_)))
                                             (__tmp114479
                                              (let ((__tmp114483
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self106096_
                                                        _L106171_)))
                                                    (__tmp114480
                                                     (let ((__tmp114482
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self106096_
                                                               _L106172_)))
                                                           (__tmp114481
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons ''#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp114482 __tmp114481))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114483
                                                      __tmp114480))))
                                         (declare (not safe))
                                         (cons __tmp114484 __tmp114479))))
                                  (declare (not safe))
                                  (cons __tmp114485 __tmp114478))))
                           (declare (not safe))
                           (cons '##direct-structure-set! __tmp114477)))
                       _hd106118106164_
                       _hd106115106156_
                       _hd106112106148_
                       _hd106109106140_)
                      (let ()
                        (declare (not safe))
                        (_g106099106124_ _g106100106127_)))))
              (let ()
                (declare (not safe))
                (_g106099106124_ _g106100106127_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106099106124_
                                                 _g106100106127_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106099106124_ _g106100106127_)))))
                              (let ()
                                (declare (not safe))
                                (_g106099106124_ _g106100106127_)))))
                      (let ()
                        (declare (not safe))
                        (_g106099106124_ _g106100106127_))))))
          (declare (not safe))
          (_g106098106193_ _stx106097_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_self105891_ _stx105892_)
        (let* ((_g105894105915_
                (lambda (_g105895105912_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105895105912_))))
               (_g105893106093_
                (lambda (_g105895105918_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105895105918_))
                      (let ((_e105901105920_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105895105918_))))
                        (let ((_hd105900105923_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105901105920_)))
                              (_tl105899105925_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105901105920_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105899105925_))
                              (let ((_e105904105928_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105899105925_))))
                                (let ((_hd105903105931_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105904105928_)))
                                      (_tl105902105933_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105904105928_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl105902105933_))
                                      (let ((_e105907105936_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl105902105933_))))
                                        (let ((_hd105906105939_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e105907105936_)))
                                              (_tl105905105941_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e105907105936_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl105905105941_))
                                              (let ((_e105910105944_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl105905105941_))))
                                                (let ((_hd105909105947_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e105910105944_)))
                                                      (_tl105908105949_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e105910105944_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl105908105949_))
                                                      ((lambda (_L105952_
                                                                _L105953_
                                                                _L105954_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-decls-unsafe?))
                     (let ((__tmp114504
                            (let ((__tmp114510
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self105891_
                                      _L105952_)))
                                  (__tmp114505
                                   (let ((__tmp114509
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _self105891_
                                             _L105953_)))
                                         (__tmp114506
                                          (let ((__tmp114508
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self105891_
                                                    _L105954_)))
                                                (__tmp114507
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons ''#f '()))))
                                            (declare (not safe))
                                            (cons __tmp114508 __tmp114507))))
                                     (declare (not safe))
                                     (cons __tmp114509 __tmp114506))))
                              (declare (not safe))
                              (cons __tmp114510 __tmp114505))))
                       (declare (not safe))
                       (cons '##unchecked-structure-ref __tmp114504))
                     (let _lp105972_ ((_rest105975_
                                       (let ((__tmp114502
                                              (let ((__tmp114503
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L105952_ '()))))
                                                (declare (not safe))
                                                (cons _L105953_ __tmp114503))))
                                         (declare (not safe))
                                         (cons _L105954_ __tmp114502)))
                                      (_bind105977_ '())
                                      (_args105978_ '()))
                       (let* ((_rest105979105987_ _rest105975_)
                              (_else105981105995_
                               (lambda ()
                                 (let ((__tmp114486
                                        (let ((__tmp114487
                                               (let ((__tmp114488
                                                      (let ((__tmp114489
                                                             (let ((__tmp114490
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114491
                                   (let ()
                                     (declare (not safe))
                                     (cons ''#f '()))))
                              (declare (not safe))
                              (foldr1 cons __tmp114491 _args105978_))))
                       (declare (not safe))
                       (cons '##unchecked-structure-ref __tmp114490))))
                (declare (not safe))
                (cons __tmp114489 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '(declare (not safe))
                                                       __tmp114488))))
                                          (declare (not safe))
                                          (cons _bind105977_ __tmp114487))))
                                   (declare (not safe))
                                   (cons 'let __tmp114486))))
                              (_K105983106081_
                               (lambda (_rest105998_ _e105999_)
                                 (let* ((___stx113707113708_ _e105999_)
                                        (_g106004106022_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx113707113708_)))))
                                   (let ((___kont113709113710_
                                          (lambda ()
                                            (let ((__tmp114492
                                                   (let ((__tmp114493
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _e105999_))))
                                                     (declare (not safe))
                                                     (cons __tmp114493
                                                           _args105978_))))
                                              (declare (not safe))
                                              (_lp105972_
                                               _rest105998_
                                               _bind105977_
                                               __tmp114492))))
                                         (___kont113711113712_
                                          (lambda ()
                                            (let ((__tmp114494
                                                   (let ((__tmp114495
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _e105999_))))
                                                     (declare (not safe))
                                                     (cons __tmp114495
                                                           _args105978_))))
                                              (declare (not safe))
                                              (_lp105972_
                                               _rest105998_
                                               _bind105977_
                                               __tmp114494))))
                                         (___kont113713113714_
                                          (lambda ()
                                            (let ((_tmp106029_
                                                   (let ((__tmp114496
                                                          (gensym '__tmp)))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp114496))))
                                              (let ((__tmp114498
                                                     (let ((__tmp114499
                                                            (let ((__tmp114500
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114501
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__0 _e105999_))))
                             (declare (not safe))
                             (cons __tmp114501 '()))))
                      (declare (not safe))
                      (cons _tmp106029_ __tmp114500))))
               (declare (not safe))
               (cons __tmp114499 _bind105977_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp114497
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _tmp106029_
                                                             _args105978_))))
                                                (declare (not safe))
                                                (_lp105972_
                                                 _rest105998_
                                                 __tmp114498
                                                 __tmp114497))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx113707113708_))
                                         (let ((_e106008106060_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx113707113708_))))
                                           (let ((_tl106006106065_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e106008106060_)))
                                                 (_hd106007106063_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e106008106060_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd106007106063_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _hd106007106063_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _tl106006106065_))
                                                         (let ((_e106011106068_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _tl106006106065_))))
                   (let ((_tl106009106073_
                          (let ()
                            (declare (not safe))
                            (##cdr _e106011106068_)))
                         (_hd106010106071_
                          (let ()
                            (declare (not safe))
                            (##car _e106011106068_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl106009106073_))
                         (___kont113709113710_)
                         (___kont113713113714_))))
                 (___kont113713113714_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _hd106007106063_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl106006106065_))
                     (let ((_e106017106045_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl106006106065_))))
                       (let ((_tl106015106050_
                              (let ()
                                (declare (not safe))
                                (##cdr _e106017106045_)))
                             (_hd106016106048_
                              (let ()
                                (declare (not safe))
                                (##car _e106017106045_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl106015106050_))
                             (___kont113711113712_)
                             (___kont113713113714_))))
                     (___kont113713113714_))
                 (___kont113713113714_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont113713113714_))))
                                         (___kont113713113714_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest105979105987_))
                             (let ((_hd105984106084_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest105979105987_)))
                                   (_tl105985106086_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest105979105987_))))
                               (let* ((_e106089_ _hd105984106084_)
                                      (_rest106091_ _tl105985106086_))
                                 (declare (not safe))
                                 (_K105983106081_ _rest106091_ _e106089_)))
                             (let ()
                               (declare (not safe))
                               (_else105981105995_)))))))
               _hd105909105947_
               _hd105906105939_
               _hd105903105931_)
              (let ()
                (declare (not safe))
                (_g105894105915_ _g105895105918_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g105894105915_
                                                 _g105895105918_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g105894105915_ _g105895105918_)))))
                              (let ()
                                (declare (not safe))
                                (_g105894105915_ _g105895105918_)))))
                      (let ()
                        (declare (not safe))
                        (_g105894105915_ _g105895105918_))))))
          (declare (not safe))
          (_g105893106093_ _stx105892_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_self105670_ _stx105671_)
        (let* ((_g105673105698_
                (lambda (_g105674105695_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105674105695_))))
               (_g105672105888_
                (lambda (_g105674105701_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105674105701_))
                      (let ((_e105681105703_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105674105701_))))
                        (let ((_hd105680105706_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105681105703_)))
                              (_tl105679105708_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105681105703_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105679105708_))
                              (let ((_e105684105711_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105679105708_))))
                                (let ((_hd105683105714_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105684105711_)))
                                      (_tl105682105716_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105684105711_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl105682105716_))
                                      (let ((_e105687105719_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl105682105716_))))
                                        (let ((_hd105686105722_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e105687105719_)))
                                              (_tl105685105724_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e105687105719_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl105685105724_))
                                              (let ((_e105690105727_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl105685105724_))))
                                                (let ((_hd105689105730_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e105690105727_)))
                                                      (_tl105688105732_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e105690105727_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl105688105732_))
                                                      (let ((_e105693105735_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl105688105732_))))
                (let ((_hd105692105738_
                       (let () (declare (not safe)) (##car _e105693105735_)))
                      (_tl105691105740_
                       (let () (declare (not safe)) (##cdr _e105693105735_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl105691105740_))
                      ((lambda (_L105743_ _L105744_ _L105745_ _L105746_)
                         (if (let ()
                               (declare (not safe))
                               (gxc#current-compile-decls-unsafe?))
                             (let ((__tmp114530
                                    (let ((__tmp114538
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self105670_
                                              _L105744_)))
                                          (__tmp114531
                                           (let ((__tmp114537
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _self105670_
                                                     _L105743_)))
                                                 (__tmp114532
                                                  (let ((__tmp114536
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self105670_
                                                            _L105745_)))
                                                        (__tmp114533
                                                         (let ((__tmp114535
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _self105670_ _L105746_)))
                       (__tmp114534
                        (let () (declare (not safe)) (cons ''#f '()))))
                   (declare (not safe))
                   (cons __tmp114535 __tmp114534))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114536
                                                          __tmp114533))))
                                             (declare (not safe))
                                             (cons __tmp114537 __tmp114532))))
                                      (declare (not safe))
                                      (cons __tmp114538 __tmp114531))))
                               (declare (not safe))
                               (cons '##unchecked-structure-set! __tmp114530))
                             (let _lp105767_ ((_rest105770_
                                               (let ((__tmp114527
                                                      (let ((__tmp114528
                                                             (let ((__tmp114529
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _L105744_ '()))))
                       (declare (not safe))
                       (cons _L105743_ __tmp114529))))
                (declare (not safe))
                (cons _L105745_ __tmp114528))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L105746_ __tmp114527)))
                                              (_bind105772_ '())
                                              (_args105773_ '()))
                               (let* ((_rest105774105782_ _rest105770_)
                                      (_else105776105790_
                                       (lambda ()
                                         (let ((__tmp114511
                                                (let ((__tmp114512
                                                       (let ((__tmp114513
                                                              (let ((__tmp114514
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp114515
                                    (let ((__tmp114516
                                           (let ()
                                             (declare (not safe))
                                             (cons ''#f '()))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp114516 _args105773_))))
                               (declare (not safe))
                               (cons '##unchecked-structure-set!
                                     __tmp114515))))
                        (declare (not safe))
                        (cons __tmp114514 '()))))
                 (declare (not safe))
                 (cons '(declare (not safe)) __tmp114513))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _bind105772_
                                                        __tmp114512))))
                                           (declare (not safe))
                                           (cons 'let __tmp114511))))
                                      (_K105778105876_
                                       (lambda (_rest105793_ _e105794_)
                                         (let* ((___stx113753113754_ _e105794_)
                                                (_g105799105817_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx113753113754_)))))
                                           (let ((___kont113755113756_
                                                  (lambda ()
                                                    (let ((__tmp114517
                                                           (let ((__tmp114518
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e105794_))))
                     (declare (not safe))
                     (cons __tmp114518 _args105773_))))
              (declare (not safe))
              (_lp105767_ _rest105793_ _bind105772_ __tmp114517))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont113757113758_
                                                  (lambda ()
                                                    (let ((__tmp114519
                                                           (let ((__tmp114520
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e105794_))))
                     (declare (not safe))
                     (cons __tmp114520 _args105773_))))
              (declare (not safe))
              (_lp105767_ _rest105793_ _bind105772_ __tmp114519))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont113759113760_
                                                  (lambda ()
                                                    (let ((_tmp105824_
                                                           (let ((__tmp114521
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__tmp)))
                     (declare (not safe))
                     (make-symbol__0 __tmp114521))))
              (let ((__tmp114523
                     (let ((__tmp114524
                            (let ((__tmp114525
                                   (let ((__tmp114526
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _e105794_))))
                                     (declare (not safe))
                                     (cons __tmp114526 '()))))
                              (declare (not safe))
                              (cons _tmp105824_ __tmp114525))))
                       (declare (not safe))
                       (cons __tmp114524 _bind105772_)))
                    (__tmp114522
                     (let ()
                       (declare (not safe))
                       (cons _tmp105824_ _args105773_))))
                (declare (not safe))
                (_lp105767_ _rest105793_ __tmp114523 __tmp114522))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    ___stx113753113754_))
                                                 (let ((_e105803105855_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           ___stx113753113754_))))
                                                   (let ((_tl105801105860_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e105803105855_)))
                                                         (_hd105802105858_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e105803105855_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _hd105802105858_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _hd105802105858_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _tl105801105860_))
                         (let ((_e105806105863_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _tl105801105860_))))
                           (let ((_tl105804105868_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e105806105863_)))
                                 (_hd105805105866_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e105806105863_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _tl105804105868_))
                                 (___kont113755113756_)
                                 (___kont113759113760_))))
                         (___kont113759113760_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _hd105802105858_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _tl105801105860_))
                             (let ((_e105812105840_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _tl105801105860_))))
                               (let ((_tl105810105845_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e105812105840_)))
                                     (_hd105811105843_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e105812105840_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _tl105810105845_))
                                     (___kont113757113758_)
                                     (___kont113759113760_))))
                             (___kont113759113760_))
                         (___kont113759113760_)))
                 (___kont113759113760_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont113759113760_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _rest105774105782_))
                                     (let ((_hd105779105879_
                                            (let ()
                                              (declare (not safe))
                                              (##car _rest105774105782_)))
                                           (_tl105780105881_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _rest105774105782_))))
                                       (let* ((_e105884_ _hd105779105879_)
                                              (_rest105886_ _tl105780105881_))
                                         (declare (not safe))
                                         (_K105778105876_
                                          _rest105886_
                                          _e105884_)))
                                     (let ()
                                       (declare (not safe))
                                       (_else105776105790_)))))))
                       _hd105692105738_
                       _hd105689105730_
                       _hd105686105722_
                       _hd105683105714_)
                      (let ()
                        (declare (not safe))
                        (_g105673105698_ _g105674105701_)))))
              (let ()
                (declare (not safe))
                (_g105673105698_ _g105674105701_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g105673105698_
                                                 _g105674105701_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g105673105698_ _g105674105701_)))))
                              (let ()
                                (declare (not safe))
                                (_g105673105698_ _g105674105701_)))))
                      (let ()
                        (declare (not safe))
                        (_g105673105698_ _g105674105701_))))))
          (declare (not safe))
          (_g105672105888_ _stx105671_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_self105523_ _stx105524_)
        (letrec ((_import-set-template105526_
                  (lambda (_in105622_ _phi105623_)
                    (let ((_iphi105625_
                           (fx+ _phi105623_
                                (##direct-structure-ref
                                 _in105622_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_imports105626_
                           (##structure-ref
                            (##direct-structure-ref
                             _in105622_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _lp105628_ ((_rest105630_ _imports105626_)
                                       (_r105631_ '()))
                        (let* ((_rest105632105640_ _rest105630_)
                               (_else105634105648_ (lambda () _r105631_))
                               (_K105636105658_
                                (lambda (_rest105651_ _in105652_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _in105652_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (fxzero? _iphi105625_))
                                          (let ((__tmp114545
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _in105652_
                                                         _r105631_))))
                                            (declare (not safe))
                                            (_lp105628_
                                             _rest105651_
                                             __tmp114545))
                                          (let ()
                                            (declare (not safe))
                                            (_lp105628_
                                             _rest105651_
                                             _r105631_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _in105652_
                                             'gx#module-import::t))
                                          (let ((_iphi105654_
                                                 (fx+ _phi105623_
                                                      (##direct-structure-ref
                                                       _in105652_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (fxzero? _iphi105654_))
                                                (let ((__tmp114543
                                                       (let ((__tmp114544
                                                              (##direct-structure-ref
                                                               (##direct-structure-ref
                                                                _in105652_
                                                                '1
                                                                gx#module-import::t
                                                                '#f)
                                                               '1
                                                               gx#module-export::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp114544
                                                               _r105631_))))
                                                  (declare (not safe))
                                                  (_lp105628_
                                                   _rest105651_
                                                   __tmp114543))
                                                (let ()
                                                  (declare (not safe))
                                                  (_lp105628_
                                                   _rest105651_
                                                   _r105631_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _in105652_
                                                 'gx#import-set::t))
                                              (let ((_xphi105656_
                                                     (fx+ _iphi105625_
                                                          (##direct-structure-ref
                                                           _in105652_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (fxzero? _xphi105656_))
                                                    (let ((__tmp114541
                                                           (let ((__tmp114542
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##direct-structure-ref
                           _in105652_
                           '1
                           gx#import-set::t
                           '#f)))
                     (declare (not safe))
                     (cons __tmp114542 _r105631_))))
              (declare (not safe))
              (_lp105628_ _rest105651_ __tmp114541))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (fxpositive?
                                                         _xphi105656_)
                                                        (let ((__tmp114539
                                                               (let ((__tmp114540
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_import-set-template105526_
                                 _in105652_
                                 _iphi105625_))))
                         (declare (not safe))
                         (foldl1 cons _r105631_ __tmp114540))))
                  (declare (not safe))
                  (_lp105628_ _rest105651_ __tmp114539))
                (let ()
                  (declare (not safe))
                  (_lp105628_ _rest105651_ _r105631_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_lp105628_
                                                 _rest105651_
                                                 _r105631_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest105632105640_))
                              (let ((_hd105637105661_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest105632105640_)))
                                    (_tl105638105663_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest105632105640_))))
                                (let* ((_in105666_ _hd105637105661_)
                                       (_rest105668_ _tl105638105663_))
                                  (declare (not safe))
                                  (_K105636105658_ _rest105668_ _in105666_)))
                              (let ()
                                (declare (not safe))
                                (_else105634105648_)))))))))
          (let* ((_g105528105538_
                  (lambda (_g105529105535_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g105529105535_))))
                 (_g105527105619_
                  (lambda (_g105529105541_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g105529105541_))
                        (let ((_e105533105543_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g105529105541_))))
                          (let ((_hd105532105546_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105533105543_)))
                                (_tl105531105548_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105533105543_))))
                            ((lambda (_L105551_)
                               (let ((_ht105562_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _lp105564_ ((_rest105566_ _L105551_)
                                                  (_loads105567_ '()))
                                   (letrec ((_K105569_
                                             (lambda (_ctx105612_ _rest105613_)
                                               (let ((_id105615_
                                                      (##structure-ref
                                                       _ctx105612_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (hash-get
                                                        _ht105562_
                                                        _id105615_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (_lp105564_
                                                        _rest105613_
                                                        _loads105567_))
                                                     (let ((_rt105617_
                                                            (string-append
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#module-id->path-string _id105615_))
                     '"__rt")))
               (let ()
                 (declare (not safe))
                 (hash-put! _ht105562_ _id105615_ _rt105617_))
               (let ((__tmp114546
                      (let ()
                        (declare (not safe))
                        (cons _rt105617_ _loads105567_))))
                 (declare (not safe))
                 (_lp105564_ _rest105613_ __tmp114546))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let* ((_rest105570105578_ _rest105566_)
                                            (_else105572105590_
                                             (lambda ()
                                               (let ((__tmp114547
                                                      (map (lambda (_g105585105587_)
                                                             (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g105585105587_))
                   (reverse _loads105567_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'begin __tmp114547))))
                                            (_K105574105600_
                                             (lambda (_rest105593_ _in105594_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _in105594_
                                                      'gx#module-context::t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_K105569_
                                                      _in105594_
                                                      _rest105593_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _in105594_
                                                          'gx#module-import::t))
                                                       (if (let ((__tmp114551
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##direct-structure-ref
                           _in105594_
                           '3
                           gx#module-import::t
                           '#f)))
                     (declare (not safe))
                     (fxzero? __tmp114551))
                   (let ((__tmp114550
                          (##direct-structure-ref
                           (##direct-structure-ref
                            _in105594_
                            '1
                            gx#module-import::t
                            '#f)
                           '1
                           gx#module-export::t
                           '#f)))
                     (declare (not safe))
                     (_K105569_ __tmp114550 _rest105593_))
                   (let ()
                     (declare (not safe))
                     (_lp105564_ _rest105593_ _loads105567_)))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _in105594_
                      'gx#import-set::t))
                   (let ((_phi105596_
                          (##direct-structure-ref
                           _in105594_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (let () (declare (not safe)) (fxzero? _phi105596_))
                         (let ((__tmp114549
                                (##direct-structure-ref
                                 _in105594_
                                 '1
                                 gx#import-set::t
                                 '#f)))
                           (declare (not safe))
                           (_K105569_ __tmp114549 _rest105593_))
                         (if (fxpositive? _phi105596_)
                             (let* ((_deps105598_
                                     (let ()
                                       (declare (not safe))
                                       (_import-set-template105526_
                                        _in105594_
                                        '0)))
                                    (__tmp114548
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _rest105593_
                                               _deps105598_))))
                               (declare (not safe))
                               (_lp105564_ __tmp114548 _loads105567_))
                             (let ()
                               (declare (not safe))
                               (_lp105564_ _rest105593_ _loads105567_)))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _stx105524_
                      _in105594_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _rest105570105578_))
                                           (let ((_hd105575105603_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _rest105570105578_)))
                                                 (_tl105576105605_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _rest105570105578_))))
                                             (let* ((_in105608_
                                                     _hd105575105603_)
                                                    (_rest105610_
                                                     _tl105576105605_))
                                               (declare (not safe))
                                               (_K105574105600_
                                                _rest105610_
                                                _in105608_)))
                                           (let ()
                                             (declare (not safe))
                                             (_else105572105590_))))))))
                             _tl105531105548_)))
                        (let ()
                          (declare (not safe))
                          (_g105528105538_ _g105529105541_))))))
            (declare (not safe))
            (_g105527105619_ _stx105524_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_self105338_ _stx105339_)
        (letrec ((_add-lift!105341_
                  (lambda (_expr105521_)
                    (set-box!
                     (gxc#current-compile-lift)
                     (let ((__tmp114552 (unbox (gxc#current-compile-lift))))
                       (declare (not safe))
                       (cons _expr105521_ __tmp114552)))))
                 (_generate-syntax-quote105342_
                  (lambda (_id105518_ _marks105519_)
                    (let ((__tmp114553
                           (let ((__tmp114554
                                  (let ((__tmp114558
                                         (let ((__tmp114559
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _id105518_ '()))))
                                           (declare (not safe))
                                           (cons 'quote __tmp114559)))
                                        (__tmp114555
                                         (let ((__tmp114556
                                                (let ((__tmp114557
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _marks105519_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '(gx#current-expander-context)
                                                        __tmp114557))))
                                           (declare (not safe))
                                           (cons '#f __tmp114556))))
                                    (declare (not safe))
                                    (cons __tmp114558 __tmp114555))))
                             (declare (not safe))
                             (cons 'gx#syntax-quote::t __tmp114554))))
                      (declare (not safe))
                      (cons '##structure __tmp114553))))
                 (_generate-simple105343_
                  (lambda (_stxq105513_)
                    (let ((_gid105515_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_qid105516_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _stxq105513_))))
                      (let ((__tmp114560
                             (let ((__tmp114561
                                    (let ((__tmp114562
                                           (let ((__tmp114563
                                                  (let ()
                                                    (declare (not safe))
                                                    (_generate-syntax-quote105342_
                                                     _qid105516_
                                                     ''()))))
                                             (declare (not safe))
                                             (cons __tmp114563 '()))))
                                      (declare (not safe))
                                      (cons _gid105515_ __tmp114562))))
                               (declare (not safe))
                               (cons 'define __tmp114561))))
                        (declare (not safe))
                        (_add-lift!105341_ __tmp114560))
                      (let ((__tmp114564 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (hash-put! __tmp114564 _stxq105513_ _gid105515_))
                      _gid105515_)))
                 (_generate-serialized105344_
                  (lambda (_stxq105503_ _marks105504_)
                    (let* ((_mark-refs105506_
                            (map _generate-mark105345_ _marks105504_))
                           (_gid105508_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_qid105510_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _stxq105503_))))
                      (let ((__tmp114565
                             (let ((__tmp114566
                                    (let ((__tmp114567
                                           (let ((__tmp114568
                                                  (let ((__tmp114569
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _mark-refs105506_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-syntax-quote105342_
                                                     _qid105510_
                                                     __tmp114569))))
                                             (declare (not safe))
                                             (cons __tmp114568 '()))))
                                      (declare (not safe))
                                      (cons _gid105508_ __tmp114567))))
                               (declare (not safe))
                               (cons 'define __tmp114566))))
                        (declare (not safe))
                        (_add-lift!105341_ __tmp114565))
                      (let ((__tmp114570 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (hash-put! __tmp114570 _stxq105503_ _gid105508_))
                      _gid105508_)))
                 (_generate-mark105345_
                  (lambda (_mark105489_)
                    (let ((_$e105491_
                           (let ((__tmp114571 (gxc#current-compile-marks)))
                             (declare (not safe))
                             (hash-get __tmp114571 _mark105489_))))
                      (if _$e105491_
                          (values _$e105491_)
                          (let* ((_gid105494_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_repr105496_
                                  (let ()
                                    (declare (not safe))
                                    (_serialize-mark105346_ _mark105489_)))
                                 (_ctx105498_
                                  (let ((__tmp114572
                                         (##structure-ref
                                          _mark105489_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp114572)))
                                 (_ctx-ref105500_
                                  (if (let ((__tmp114577
                                             (gx#current-expander-context)))
                                        (declare (not safe))
                                        (eq? _ctx105498_ __tmp114577))
                                      '(gx#current-expander-context)
                                      (let ((__tmp114573
                                             (let ((__tmp114574
                                                    (let ((__tmp114575
                                                           (let ((__tmp114576
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_context-ref105347_ _ctx105498_))))
                     (declare (not safe))
                     (cons __tmp114576 '()))))
              (declare (not safe))
              (cons 'quote __tmp114575))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114574 '()))))
                                        (declare (not safe))
                                        (cons 'gx#import-module
                                              __tmp114573)))))
                            (let ((__tmp114578 (gxc#current-compile-marks)))
                              (declare (not safe))
                              (hash-put! __tmp114578 _mark105489_ _gid105494_))
                            (let ((__tmp114579
                                   (let ((__tmp114580
                                          (let ((__tmp114581
                                                 (let ((__tmp114582
                                                        (let ((__tmp114583
                                                               (let ((__tmp114585
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp114586
                                     (let ()
                                       (declare (not safe))
                                       (cons _repr105496_ '()))))
                                (declare (not safe))
                                (cons 'quote __tmp114586)))
                             (__tmp114584
                              (let ()
                                (declare (not safe))
                                (cons _ctx-ref105500_ '()))))
                         (declare (not safe))
                         (cons __tmp114585 __tmp114584))))
                  (declare (not safe))
                  (cons 'gx#core-deserialize-mark __tmp114583))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp114582 '()))))
                                            (declare (not safe))
                                            (cons _gid105494_ __tmp114581))))
                                     (declare (not safe))
                                     (cons 'define __tmp114580))))
                              (declare (not safe))
                              (_add-lift!105341_ __tmp114579))
                            _gid105494_)))))
                 (_serialize-mark105346_
                  (lambda (_mark105436_)
                    (letrec ((_quote-e105438_
                              (lambda (_sym105487_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _sym105487_))
                                    _sym105487_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _sym105487_))))))
                      (let* ((_mark105439105448_ _mark105436_)
                             (_E105441105452_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _mark105439105448_))))
                             (_K105442105464_
                              (lambda (_trace105455_
                                       _phi105456_
                                       _ctx105457_
                                       _subst105458_)
                                (let* ((_subs105460_
                                        (if _subst105458_
                                            (let ()
                                              (declare (not safe))
                                              (hash->list _subst105458_))
                                            '()))
                                       (__tmp114587
                                        (map (lambda (_pair105462_)
                                               (let ((__tmp114590
                                                      (let ((__tmp114591
                                                             (car _pair105462_)))
                                                        (declare (not safe))
                                                        (_quote-e105438_
                                                         __tmp114591)))
                                                     (__tmp114588
                                                      (let ((__tmp114589
                                                             (cdr _pair105462_)))
                                                        (declare (not safe))
                                                        (_quote-e105438_
                                                         __tmp114589))))
                                                 (declare (not safe))
                                                 (cons __tmp114590
                                                       __tmp114588)))
                                             _subs105460_)))
                                  (declare (not safe))
                                  (cons _phi105456_ __tmp114587)))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _mark105439105448_
                               'gx#expander-mark::t))
                            (let* ((_e105443105467_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark105439105448_
                                       '1
                                       gx#expander-mark::t
                                       '#f)))
                                   (_subst105470_ _e105443105467_)
                                   (_e105444105472_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark105439105448_
                                       '2
                                       gx#expander-mark::t
                                       '#f)))
                                   (_ctx105475_ _e105444105472_)
                                   (_e105445105477_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark105439105448_
                                       '3
                                       gx#expander-mark::t
                                       '#f)))
                                   (_phi105480_ _e105445105477_)
                                   (_e105446105482_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark105439105448_
                                       '4
                                       gx#expander-mark::t
                                       '#f)))
                                   (_trace105485_ _e105446105482_))
                              (declare (not safe))
                              (_K105442105464_
                               _trace105485_
                               _phi105480_
                               _ctx105475_
                               _subst105470_))
                            (let ()
                              (declare (not safe))
                              (_E105441105452_)))))))
                 (_context-ref105347_
                  (lambda (_ctx105423_)
                    (if (let ((__tmp114599
                               (##structure-ref
                                _ctx105423_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp114599
                           'gx#module-context::t))
                        (let ((_ctx-ref105425_
                               (let ()
                                 (declare (not safe))
                                 (_context-ref-nested105349_ _ctx105423_)))
                              (_ctx-origin105426_
                               (let ()
                                 (declare (not safe))
                                 (_context-ref-origin105348_ _ctx105423_)))
                              (_origin105427_
                               (let ((__tmp114593
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (_context-ref-origin105348_ __tmp114593))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _origin105427_ _ctx-origin105426_))
                              (let ((_ref105429_
                                     (let ((__tmp114594
                                            (gx#current-expander-context)))
                                       (declare (not safe))
                                       (_context-ref-nested105349_
                                        __tmp114594))))
                                (let _lp105431_ ((_ref105433_
                                                  (cdr _ref105429_))
                                                 (_ctx-ref105434_
                                                  (cdr _ctx-ref105425_)))
                                  (if (and (let ()
                                             (declare (not safe))
                                             (pair? _ref105433_))
                                           (let ((__tmp114598
                                                  (car _ref105433_))
                                                 (__tmp114597
                                                  (car _ctx-ref105434_)))
                                             (declare (not safe))
                                             (eq? __tmp114598 __tmp114597)))
                                      (let ((__tmp114596 (cdr _ref105433_))
                                            (__tmp114595
                                             (cdr _ctx-ref105434_)))
                                        (declare (not safe))
                                        (_lp105431_ __tmp114596 __tmp114595))
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f _ctx-ref105434_)))))
                              _ctx-ref105425_))
                        (let ((__tmp114592
                               (##structure-ref
                                _ctx105423_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp114592)))))
                 (_context-ref-origin105348_
                  (lambda (_ctx105415_)
                    (let _lp105417_ ((_ctx105419_ _ctx105415_))
                      (let ((_super105421_
                             (##structure-ref
                              _ctx105419_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super105421_
                               'gx#module-context::t))
                            (let ()
                              (declare (not safe))
                              (_lp105417_ _super105421_))
                            _ctx105419_)))))
                 (_context-ref-nested105349_
                  (lambda (_ctx105406_)
                    (let _lp105408_ ((_ctx105410_ _ctx105406_) (_r105411_ '()))
                      (let ((_super105413_
                             (##structure-ref
                              _ctx105410_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super105413_
                               'gx#module-context::t))
                            (let ((__tmp114602
                                   (let ((__tmp114603
                                          (car (##structure-ref
                                                _ctx105410_
                                                '7
                                                gx#module-context::t
                                                '#f))))
                                     (declare (not safe))
                                     (cons __tmp114603 _r105411_))))
                              (declare (not safe))
                              (_lp105408_ _super105413_ __tmp114602))
                            (let ((__tmp114600
                                   (let ((__tmp114601
                                          (##structure-ref
                                           _ctx105410_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (make-symbol__1 '":" __tmp114601))))
                              (declare (not safe))
                              (cons __tmp114600 _r105411_))))))))
          (let* ((_g105351105364_
                  (lambda (_g105352105361_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g105352105361_))))
                 (_g105350105403_
                  (lambda (_g105352105367_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g105352105367_))
                        (let ((_e105356105369_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g105352105367_))))
                          (let ((_hd105355105372_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105356105369_)))
                                (_tl105354105374_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105356105369_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl105354105374_))
                                (let ((_e105359105377_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl105354105374_))))
                                  (let ((_hd105358105380_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e105359105377_)))
                                        (_tl105357105382_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e105359105377_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl105357105382_))
                                        ((lambda (_L105385_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _L105385_))
                                               (let ((_$e105398_
                                                      (let ((__tmp114604
                                                             (gxc#current-compile-identifiers)))
                                                        (declare (not safe))
                                                        (hash-get
                                                         __tmp114604
                                                         _L105385_))))
                                                 (if _$e105398_
                                                     (values _$e105398_)
                                                     (let ((_marks105401_
                                                            (##direct-structure-ref
                                                             _L105385_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (null? _marks105401_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-simple105343_
                                                              _L105385_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-serialized105344_
                                                              _L105385_
                                                              _marks105401_))))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _L105385_))))
                                         _hd105358105380_)
                                        (let ()
                                          (declare (not safe))
                                          (_g105351105364_ _g105352105367_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g105351105364_ _g105352105367_)))))
                        (let ()
                          (declare (not safe))
                          (_g105351105364_ _g105352105367_))))))
            (declare (not safe))
            (_g105350105403_ _stx105339_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_self105270_ _stx105271_)
        (let* ((_g105273105290_
                (lambda (_g105274105287_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105274105287_))))
               (_g105272105335_
                (lambda (_g105274105293_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105274105293_))
                      (let ((_e105279105295_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105274105293_))))
                        (let ((_hd105278105298_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105279105295_)))
                              (_tl105277105300_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105279105295_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105277105300_))
                              (let ((_e105282105303_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105277105300_))))
                                (let ((_hd105281105306_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105282105303_)))
                                      (_tl105280105308_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105282105303_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl105280105308_))
                                      (let ((_e105285105311_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl105280105308_))))
                                        (let ((_hd105284105314_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e105285105311_)))
                                              (_tl105283105316_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e105285105311_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl105283105316_))
                                              ((lambda (_L105319_ _L105320_)
                                                 (let ((__tmp114605
                                                        (let ((__tmp114608
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _L105320_)))
                      (__tmp114606
                       (let ((__tmp114607
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1 _self105270_ _L105319_))))
                         (declare (not safe))
                         (cons __tmp114607 '()))))
                  (declare (not safe))
                  (cons __tmp114608 __tmp114606))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'define __tmp114605)))
                                               _hd105284105314_
                                               _hd105281105306_)
                                              (let ()
                                                (declare (not safe))
                                                (_g105273105290_
                                                 _g105274105293_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g105273105290_ _g105274105293_)))))
                              (let ()
                                (declare (not safe))
                                (_g105273105290_ _g105274105293_)))))
                      (let ()
                        (declare (not safe))
                        (_g105273105290_ _g105274105293_))))))
          (declare (not safe))
          (_g105272105335_ _stx105271_))))
    (define gxc#generate-meta-begin%
      (lambda (_self105219_ _stx105220_)
        (let* ((_g105222105232_
                (lambda (_g105223105229_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105223105229_))))
               (_g105221105267_
                (lambda (_g105223105235_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105223105235_))
                      (let ((_e105227105237_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105223105235_))))
                        (let ((_hd105226105240_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105227105237_)))
                              (_tl105225105242_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105227105237_))))
                          ((lambda (_L105245_)
                             (let* ((_c-body105259_
                                     (map (lambda (_g105254105256_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self105219_
                                               _g105254105256_)))
                                          _L105245_))
                                    (_c-body105264_
                                     (filter (lambda (_$obj105261_)
                                               (let ((__tmp114609
                                                      (let ()
                                                        (declare (not safe))
                                                        (eq? _$obj105261_
                                                             '#!void))))
                                                 (declare (not safe))
                                                 (not __tmp114609)))
                                             _c-body105259_)))
                               (let ()
                                 (declare (not safe))
                                 (cons '%#begin _c-body105264_))))
                           _tl105225105242_)))
                      (let ()
                        (declare (not safe))
                        (_g105222105232_ _g105223105235_))))))
          (declare (not safe))
          (_g105221105267_ _stx105220_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_self105127_ _stx105128_)
        (let* ((_g105130105140_
                (lambda (_g105131105137_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105131105137_))))
               (_g105129105216_
                (lambda (_g105131105143_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105131105143_))
                      (let ((_e105135105145_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105131105143_))))
                        (let ((_hd105134105148_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105135105145_)))
                              (_tl105133105150_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105135105145_))))
                          ((lambda (_L105153_)
                             (let* ((_phi105163_
                                     (let ((__tmp114610
                                            (gx#current-expander-phi)))
                                       (declare (not safe))
                                       (fx+ __tmp114610 '1)))
                                    (_block105165_
                                     (let ((__tmp114611
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _self105127_
                                               'state))))
                                       (declare (not safe))
                                       (gxc#meta-state-begin-phi!
                                        __tmp114611
                                        _phi105163_)))
                                    (_compiled105168_
                                     (let ((__tmp114612
                                            (lambda ()
                                              (let ((__tmp114614
                                                     (let ((__tmp114615
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))))
                                                       (declare (not safe))
                                                       (cons __tmp114615
                                                             _L105153_)))
                                                    (__tmp114613
                                                     (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _self105127_
                                                        'state))))
                                                (declare (not safe))
                                                (gxc#apply-generate-meta-phi
                                                 __tmp114614
                                                 'state:
                                                 __tmp114613)))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp114612
                                        gx#current-expander-phi
                                        _phi105163_))))
                               (let* ((_g105171105181_
                                       (lambda (_g105172105178_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g105172105178_))))
                                      (_g105170105213_
                                       (lambda (_g105172105184_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _g105172105184_))
                                             (let ((_e105176105186_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _g105172105184_))))
                                               (let ((_hd105175105189_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e105176105186_)))
                                                     (_tl105174105191_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e105176105186_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _hd105175105189_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#begin
                                                            _hd105175105189_))
                                                         ((lambda (_L105194_)
                                                            (let ((_c-body105211_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (filter (lambda (_$obj105208_)
                                     (let ((__tmp114616
                                            (let ()
                                              (declare (not safe))
                                              (eq? _$obj105208_ '#!void))))
                                       (declare (not safe))
                                       (not __tmp114616)))
                                   _L105194_)))
                      (if _block105165_
                          (let ((__tmp114617
                                 (let ((__tmp114618
                                        (let ((__tmp114619
                                               (let ((__tmp114623
                                                      (let ((__tmp114624
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons 'load-module '()))))
                (declare (not safe))
                (cons '%#ref __tmp114624)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp114620
                                                      (let ((__tmp114621
                                                             (let ((__tmp114622
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _block105165_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp114622))))
                (declare (not safe))
                (cons __tmp114621 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp114623
                                                       __tmp114620))))
                                          (declare (not safe))
                                          (cons '%#call __tmp114619))))
                                   (declare (not safe))
                                   (cons __tmp114618 _c-body105211_))))
                            (declare (not safe))
                            (cons '%#begin-syntax __tmp114617))
                          (if (let ()
                                (declare (not safe))
                                (null? _c-body105211_))
                              '#!void
                              (let ()
                                (declare (not safe))
                                (cons '%#begin-syntax _c-body105211_))))))
                  _tl105174105191_)
                 (let ()
                   (declare (not safe))
                   (_g105171105181_ _g105172105184_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g105171105181_
                                                        _g105172105184_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g105171105181_
                                                _g105172105184_))))))
                                 (declare (not safe))
                                 (_g105170105213_ _compiled105168_))))
                           _tl105133105150_)))
                      (let ()
                        (declare (not safe))
                        (_g105130105140_ _g105131105143_))))))
          (declare (not safe))
          (_g105129105216_ _stx105128_))))
    (define gxc#generate-meta-module%
      (lambda (_self105058_ _stx105059_)
        (let ((__tmp114625
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _self105058_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp114625))
        (let* ((_g105061105075_
                (lambda (_g105062105072_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105062105072_))))
               (_g105060105124_
                (lambda (_g105062105078_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105062105078_))
                      (let ((_e105067105080_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105062105078_))))
                        (let ((_hd105066105083_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105067105080_)))
                              (_tl105065105085_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105067105080_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105065105085_))
                              (let ((_e105070105088_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105065105085_))))
                                (let ((_hd105069105091_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105070105088_)))
                                      (_tl105068105093_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105070105088_))))
                                  ((lambda (_L105096_ _L105097_)
                                     (let ((_key105110_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _L105097_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _key105110_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _stx105059_
                                              _L105097_
                                              _key105110_)))
                                       (let* ((_ctx105112_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _L105097_)))
                                              (_code105115_
                                               (let ((__tmp114626
                                                      (lambda ()
                                                        (let ((__tmp114627
                                                               (##structure-ref
                                                                _ctx105112_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self105058_
                                                           __tmp114627)))))
                                                 (declare (not safe))
                                                 (call-with-parameters
                                                  __tmp114626
                                                  gx#current-expander-context
                                                  _ctx105112_)))
                                              (_rt105117_
                                               (let ((__tmp114628
                                                      (gxc#current-compile-runtime-sections)))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp114628
                                                  _ctx105112_)))
                                              (_loader105119_
                                               (if _rt105117_
                                                   (let ((__tmp114629
                                                          (let ((__tmp114630
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp114634
                                (let ((__tmp114635
                                       (let ()
                                         (declare (not safe))
                                         (cons 'load-module '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp114635)))
                               (__tmp114631
                                (let ((__tmp114632
                                       (let ((__tmp114633
                                              (let ()
                                                (declare (not safe))
                                                (cons _rt105117_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp114633))))
                                  (declare (not safe))
                                  (cons __tmp114632 '()))))
                           (declare (not safe))
                           (cons __tmp114634 __tmp114631))))
                    (declare (not safe))
                    (cons '%#call __tmp114630))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114629 '()))
                                                   '()))
                                              (_modid105121_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _L105097_))))
                                         (let ((__tmp114636
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _self105058_
                                                   'state))))
                                           (declare (not safe))
                                           (gxc#meta-state-end-phi!
                                            __tmp114636))
                                         (let ((__tmp114637
                                                (let ((__tmp114638
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _code105115_
                                                               _loader105119_))))
                                                  (declare (not safe))
                                                  (cons _modid105121_
                                                        __tmp114638))))
                                           (declare (not safe))
                                           (cons '%#module __tmp114637)))))
                                   _tl105068105093_
                                   _hd105069105091_)))
                              (let ()
                                (declare (not safe))
                                (_g105061105075_ _g105062105078_)))))
                      (let ()
                        (declare (not safe))
                        (_g105061105075_ _g105062105078_))))))
          (declare (not safe))
          (_g105060105124_ _stx105059_))))
    (define gxc#generate-meta-import-path
      (lambda (_ctx105048_ _context-chain105049_)
        (let _lp105051_ ((_ctx105053_ _ctx105048_) (_path105054_ '()))
          (let ((_super105056_
                 (##structure-ref _ctx105053_ '3 gx#phi-context::t '#f)))
            (if (memq _super105056_ _context-chain105049_)
                (let ((__tmp114643
                       (let ((__tmp114644
                              (car (##structure-ref
                                    _ctx105053_
                                    '7
                                    gx#module-context::t
                                    '#f))))
                         (declare (not safe))
                         (cons __tmp114644 _path105054_))))
                  (declare (not safe))
                  (cons '#f __tmp114643))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _super105056_
                       'gx#module-context::t))
                    (let ((__tmp114641
                           (let ((__tmp114642
                                  (car (##structure-ref
                                        _ctx105053_
                                        '7
                                        gx#module-context::t
                                        '#f))))
                             (declare (not safe))
                             (cons __tmp114642 _path105054_))))
                      (declare (not safe))
                      (_lp105051_ _super105056_ __tmp114641))
                    (let ((__tmp114639
                           (let ((__tmp114640
                                  (##structure-ref
                                   _ctx105053_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                             (declare (not safe))
                             (make-symbol__1 '":" __tmp114640))))
                      (declare (not safe))
                      (cons __tmp114639 _path105054_))))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _lp105043_ ((_ctx105045_ (gx#current-expander-context))
                         (_r105046_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _ctx105045_ 'gx#module-context::t))
              (let ((__tmp114646
                     (##structure-ref _ctx105045_ '3 gx#phi-context::t '#f))
                    (__tmp114645
                     (let ()
                       (declare (not safe))
                       (cons _ctx105045_ _r105046_))))
                (declare (not safe))
                (_lp105043_ __tmp114646 __tmp114645))
              _r105046_))))
    (define gxc#generate-meta-import%
      (lambda (_self104812_ _stx104813_)
        (letrec* ((_context-chain104815_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_make-import-spec104816_
                   (lambda (_in104979_)
                     (let* ((_in104980104992_ _in104979_)
                            (_E104982104996_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _in104980104992_))))
                            (_K104983105006_
                             (lambda (_phi104999_
                                      _name105000_
                                      _src-name105001_
                                      _src-phi105002_
                                      _src-key105003_
                                      _src-ctx105004_)
                               (let ((__tmp114647
                                      (let ((__tmp114651
                                             (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _name105000_)))
                                            (__tmp114648
                                             (let ((__tmp114649
                                                    (let ((__tmp114650
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-identifier-key
                                                              _src-name105001_))))
                                                      (declare (not safe))
                                                      (cons __tmp114650 '()))))
                                               (declare (not safe))
                                               (cons _src-phi105002_
                                                     __tmp114649))))
                                        (declare (not safe))
                                        (cons __tmp114651 __tmp114648))))
                                 (declare (not safe))
                                 (cons _phi104999_ __tmp114647)))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _in104980104992_
                              'gx#module-import::t))
                           (let ((_e104984105009_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _in104980104992_
                                     '1
                                     gx#module-import::t
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _e104984105009_
                                    'gx#module-export::t))
                                 (let* ((_e104987105012_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e104984105009_
                                            '1
                                            gx#module-export::t
                                            '#f)))
                                        (_src-ctx105015_ _e104987105012_)
                                        (_e104988105017_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e104984105009_
                                            '2
                                            gx#module-export::t
                                            '#f)))
                                        (_src-key105020_ _e104988105017_)
                                        (_e104989105022_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e104984105009_
                                            '3
                                            gx#module-export::t
                                            '#f)))
                                        (_src-phi105025_ _e104989105022_)
                                        (_e104990105027_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e104984105009_
                                            '4
                                            gx#module-export::t
                                            '#f)))
                                        (_src-name105030_ _e104990105027_)
                                        (_e104985105032_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _in104980104992_
                                            '2
                                            gx#module-import::t
                                            '#f)))
                                        (_name105035_ _e104985105032_)
                                        (_e104986105037_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _in104980104992_
                                            '3
                                            gx#module-import::t
                                            '#f)))
                                        (_phi105040_ _e104986105037_))
                                   (declare (not safe))
                                   (_K104983105006_
                                    _phi105040_
                                    _name105035_
                                    _src-name105030_
                                    _src-phi105025_
                                    _src-key105020_
                                    _src-ctx105015_))
                                 (let ()
                                   (declare (not safe))
                                   (_E104982104996_))))
                           (let () (declare (not safe)) (_E104982104996_))))))
                  (_make-import-path104817_
                   (lambda (_ctx104977_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _ctx104977_
                        _context-chain104815_))))
                  (_make-import-spec-in104818_
                   (lambda (_ctx104974_ _in104975_)
                     (let ((__tmp114652
                            (let ((__tmp114654
                                   (let ()
                                     (declare (not safe))
                                     (_make-import-path104817_ _ctx104974_)))
                                  (__tmp114653 (reverse _in104975_)))
                              (declare (not safe))
                              (cons __tmp114654 __tmp114653))))
                       (declare (not safe))
                       (cons 'spec: __tmp114652)))))
          (let ((__tmp114655
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _self104812_ 'state))))
            (declare (not safe))
            (gxc#meta-state-end-phi! __tmp114655))
          (let* ((_g104820104830_
                  (lambda (_g104821104827_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104821104827_))))
                 (_g104819104971_
                  (lambda (_g104821104833_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104821104833_))
                        (let ((_e104825104835_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104821104833_))))
                          (let ((_hd104824104838_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104825104835_)))
                                (_tl104823104840_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104825104835_))))
                            ((lambda (_L104843_)
                               (let _lp104854_ ((_rest104856_ _L104843_)
                                                (_current-src104857_ '#f)
                                                (_current-in104858_ '())
                                                (_r104859_ '()))
                                 (let* ((_rest104860104868_ _rest104856_)
                                        (_else104862104878_
                                         (lambda ()
                                           (let* ((_r104876_
                                                   (if _current-src104857_
                                                       (let ((__tmp114656
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_make-import-spec-in104818_
                         _current-src104857_
                         _current-in104858_))))
                 (declare (not safe))
                 (cons __tmp114656 _r104859_))
               _r104859_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp114657
                                                   (reverse _r104876_)))
                                             (declare (not safe))
                                             (cons '%#import __tmp114657))))
                                        (_K104864104959_
                                         (lambda (_rest104881_ _in104882_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in104882_
                                                  'gx#module-import::t))
                                               (let* ((_in104883104890_
                                                       _in104882_)
                                                      (_E104885104894_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in104883104890_))))
              (_K104886104899_
               (lambda (_src-ctx104897_)
                 (if (let ()
                       (declare (not safe))
                       (eq? _current-src104857_ _src-ctx104897_))
                     (let ((__tmp114673
                            (let ((__tmp114674
                                   (let ()
                                     (declare (not safe))
                                     (_make-import-spec104816_ _in104882_))))
                              (declare (not safe))
                              (cons __tmp114674 _current-in104858_))))
                       (declare (not safe))
                       (_lp104854_
                        _rest104881_
                        _current-src104857_
                        __tmp114673
                        _r104859_))
                     (if _current-src104857_
                         (let ((__tmp114671
                                (let ((__tmp114672
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec104816_
                                          _in104882_))))
                                  (declare (not safe))
                                  (cons __tmp114672 '())))
                               (__tmp114669
                                (let ((__tmp114670
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec-in104818_
                                          _current-src104857_
                                          _current-in104858_))))
                                  (declare (not safe))
                                  (cons __tmp114670 _r104859_))))
                           (declare (not safe))
                           (_lp104854_
                            _rest104881_
                            _src-ctx104897_
                            __tmp114671
                            __tmp114669))
                         (let ((__tmp114667
                                (let ((__tmp114668
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec104816_
                                          _in104882_))))
                                  (declare (not safe))
                                  (cons __tmp114668 '()))))
                           (declare (not safe))
                           (_lp104854_
                            _rest104881_
                            _src-ctx104897_
                            __tmp114667
                            _r104859_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _in104883104890_
                                                        'gx#module-import::t))
                                                     (let ((_e104887104902_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _in104883104890_
                                                               '1
                                                               gx#module-import::t
                                                               '#f))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              _e104887104902_
                                                              'gx#module-export::t))
                                                           (let* ((_e104888104905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _e104887104902_
                              '1
                              gx#module-export::t
                              '#f)))
                          (_src-ctx104908_ _e104888104905_))
                     (declare (not safe))
                     (_K104886104899_ _src-ctx104908_))
                   (let () (declare (not safe)) (_E104885104894_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_E104885104894_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _in104882_
                                                      'gx#import-set::t))
                                                   (let* ((_phi104910_
                                                           (##direct-structure-ref
                                                            _in104882_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src104912_
                                                           (##direct-structure-ref
                                                            _in104882_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in104952_
                                                           (let* ((_g104913104922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (_make-import-path104817_ _src104912_)))
                          (_E104916104926_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _g104913104922_)))))
                     (let ((_K104918104942_
                            (lambda (_path104940_) _path104940_))
                           (_K104917104932_
                            (lambda (_path104930_)
                              (let ()
                                (declare (not safe))
                                (cons 'in: _path104930_)))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _g104913104922_))
                           (let ((_tl104920104947_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _g104913104922_)))
                                 (_hd104919104945_
                                  (let ()
                                    (declare (not safe))
                                    (##car _g104913104922_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl104920104947_))
                                 (let ((_path104950_ _hd104919104945_))
                                   (declare (not safe))
                                   (_K104918104942_ _path104950_))
                                 (let ((_path104935_ _g104913104922_))
                                   (declare (not safe))
                                   (_K104917104932_ _path104935_))))
                           (let ((_path104935_ _g104913104922_))
                             (declare (not safe))
                             (_K104917104932_ _path104935_))))))
                  (_r104954_
                   (if _current-src104857_
                       (let ((__tmp114662
                              (let ()
                                (declare (not safe))
                                (_make-import-spec-in104818_
                                 _current-src104857_
                                 _current-in104858_))))
                         (declare (not safe))
                         (cons __tmp114662 _r104859_))
                       _r104859_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp114663
                                                            (let ((__tmp114664
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _phi104910_))
                               _src-in104952_
                               (let ((__tmp114665
                                      (let ((__tmp114666
                                             (let ()
                                               (declare (not safe))
                                               (cons _src-in104952_ '()))))
                                        (declare (not safe))
                                        (cons _phi104910_ __tmp114666))))
                                 (declare (not safe))
                                 (cons 'phi: __tmp114665)))))
                      (declare (not safe))
                      (cons __tmp114664 _r104954_))))
               (declare (not safe))
               (_lp104854_ _rest104881_ '#f '() __tmp114663)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _in104882_
                                                          'gx#module-context::t))
                                                       (let* ((_r104957_
                                                               (if _current-src104857_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114658
                                  (let ()
                                    (declare (not safe))
                                    (_make-import-spec-in104818_
                                     _current-src104857_
                                     _current-in104858_))))
                             (declare (not safe))
                             (cons __tmp114658 _r104859_))
                           _r104859_))
                      (__tmp114659
                       (let ((__tmp114660
                              (let ((__tmp114661
                                     (let ()
                                       (declare (not safe))
                                       (_make-import-path104817_ _in104882_))))
                                (declare (not safe))
                                (cons 'runtime: __tmp114661))))
                         (declare (not safe))
                         (cons __tmp114660 _r104957_))))
                 (declare (not safe))
                 (_lp104854_ _rest104881_ '#f '() __tmp114659))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest104860104868_))
                                       (let ((_hd104865104962_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest104860104868_)))
                                             (_tl104866104964_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest104860104868_))))
                                         (let* ((_in104967_ _hd104865104962_)
                                                (_rest104969_
                                                 _tl104866104964_))
                                           (declare (not safe))
                                           (_K104864104959_
                                            _rest104969_
                                            _in104967_)))
                                       (let ()
                                         (declare (not safe))
                                         (_else104862104878_))))))
                             _tl104823104840_)))
                        (let ()
                          (declare (not safe))
                          (_g104820104830_ _g104821104833_))))))
            (declare (not safe))
            (_g104819104971_ _stx104813_)))))
    (define gxc#generate-meta-export%
      (lambda (_self104622_ _stx104623_)
        (letrec* ((_context-chain104625_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_make-import-path104626_
                   (lambda (_ctx104810_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _ctx104810_
                        _context-chain104625_)))))
          (let* ((_g104628104638_
                  (lambda (_g104629104635_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104629104635_))))
                 (_g104627104807_
                  (lambda (_g104629104641_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104629104641_))
                        (let ((_e104633104643_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104629104641_))))
                          (let ((_hd104632104646_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104633104643_)))
                                (_tl104631104648_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104633104643_))))
                            ((lambda (_L104651_)
                               (let _lp104662_ ((_rest104664_ _L104651_)
                                                (_r104665_ '()))
                                 (let* ((_rest104666104674_ _rest104664_)
                                        (_else104668104682_
                                         (lambda ()
                                           (let ((__tmp114675
                                                  (reverse _r104665_)))
                                             (declare (not safe))
                                             (cons '%#export __tmp114675))))
                                        (_K104670104795_
                                         (lambda (_rest104685_ _out104686_)
                                           (let* ((_out104687104700_
                                                   _out104686_)
                                                  (_E104690104704_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _out104687104700_)))))
                                             (let ((_K104694104774_
                                                    (lambda (_name104770_
                                                             _phi104771_
                                                             _key104772_)
                                                      (let ((__tmp114676
                                                             (let ((__tmp114677
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114678
                                   (let ((__tmp114679
                                          (let ((__tmp114682
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-identifier-key
                                                    _key104772_)))
                                                (__tmp114680
                                                 (let ((__tmp114681
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#generate-runtime-identifier-key
                                                           _name104770_))))
                                                   (declare (not safe))
                                                   (cons __tmp114681 '()))))
                                            (declare (not safe))
                                            (cons __tmp114682 __tmp114680))))
                                     (declare (not safe))
                                     (cons _phi104771_ __tmp114679))))
                              (declare (not safe))
                              (cons 'spec: __tmp114678))))
                       (declare (not safe))
                       (cons __tmp114677 _r104665_))))
                (declare (not safe))
                (_lp104662_ _rest104685_ __tmp114676))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K104691104754_
                                                    (lambda (_phi104708_
                                                             _src104709_)
                                                      (let* ((_out104749_
                                                              (if _src104709_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114683
                                 (let ((__tmp114684
                                        (let* ((_g104710104719_
                                                (let ()
                                                  (declare (not safe))
                                                  (_make-import-path104626_
                                                   _src104709_)))
                                               (_E104713104723_
                                                (lambda ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"No clause matching"
                                                           _g104710104719_)))))
                                          (let ((_K104715104739_
                                                 (lambda (_path104737_)
                                                   _path104737_))
                                                (_K104714104729_
                                                 (lambda (_path104727_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'in:
                                                           _path104727_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _g104710104719_))
                                                (let ((_tl104717104744_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _g104710104719_)))
                                                      (_hd104716104742_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _g104710104719_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##null? _tl104717104744_))
                                                      (let ((_path104747_
                                                             _hd104716104742_))
                                                        (declare (not safe))
                                                        (_K104715104739_
                                                         _path104747_))
                                                      (let ((_path104732_
                                                             _g104710104719_))
                                                        (declare (not safe))
                                                        (_K104714104729_
                                                         _path104732_))))
                                                (let ((_path104732_
                                                       _g104710104719_))
                                                  (declare (not safe))
                                                  (_K104714104729_
                                                   _path104732_)))))))
                                   (declare (not safe))
                                   (cons __tmp114684 '()))))
                            (declare (not safe))
                            (cons 'import: __tmp114683))
                          '#t))
                     (_out104751_
                      (if (let () (declare (not safe)) (fxzero? _phi104708_))
                          _out104749_
                          (let ((__tmp114685
                                 (let ((__tmp114686
                                        (let ()
                                          (declare (not safe))
                                          (cons _out104749_ '()))))
                                   (declare (not safe))
                                   (cons _phi104708_ __tmp114686))))
                            (declare (not safe))
                            (cons 'phi: __tmp114685)))))
                (let ((__tmp114687
                       (let ()
                         (declare (not safe))
                         (cons _out104751_ _r104665_))))
                  (declare (not safe))
                  (_lp104662_ _rest104685_ __tmp114687))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_try-match104689104767_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _out104687104700_
                                                               'gx#export-set::t))
                                                            (let* ((_e104692104757_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _out104687104700_
                               '1
                               gx#export-set::t
                               '#f)))
                           (_e104693104762_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _out104687104700_
                               '2
                               gx#export-set::t
                               '#f))))
                      (let ((_src104760_ _e104692104757_)
                            (_phi104765_ _e104693104762_))
                        (let ()
                          (declare (not safe))
                          (_K104691104754_ _phi104765_ _src104760_))))
                    (let () (declare (not safe)) (_E104690104704_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _out104687104700_
                                                        'gx#module-export::t))
                                                     (let* ((_e104695104777_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _out104687104700_
                        '1
                        gx#module-export::t
                        '#f)))
                    (_e104696104780_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out104687104700_
                        '2
                        gx#module-export::t
                        '#f)))
                    (_e104697104785_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out104687104700_
                        '3
                        gx#module-export::t
                        '#f)))
                    (_e104698104790_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out104687104700_
                        '4
                        gx#module-export::t
                        '#f))))
               (let ((_key104783_ _e104696104780_)
                     (_phi104788_ _e104697104785_)
                     (_name104793_ _e104698104790_))
                 (let ()
                   (declare (not safe))
                   (_K104694104774_ _name104793_ _phi104788_ _key104783_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_try-match104689104767_)))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest104666104674_))
                                       (let ((_hd104671104798_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest104666104674_)))
                                             (_tl104672104800_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest104666104674_))))
                                         (let* ((_out104803_ _hd104671104798_)
                                                (_rest104805_
                                                 _tl104672104800_))
                                           (declare (not safe))
                                           (_K104670104795_
                                            _rest104805_
                                            _out104803_)))
                                       (let ()
                                         (declare (not safe))
                                         (_else104668104682_))))))
                             _tl104631104648_)))
                        (let ()
                          (declare (not safe))
                          (_g104628104638_ _g104629104641_))))))
            (declare (not safe))
            (_g104627104807_ _stx104623_)))))
    (define gxc#generate-meta-provide%
      (lambda (_self104583_ _stx104584_)
        (let ((__tmp114688
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _self104583_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp114688))
        (let* ((_g104586104596_
                (lambda (_g104587104593_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104587104593_))))
               (_g104585104619_
                (lambda (_g104587104599_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104587104599_))
                      (let ((_e104591104601_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104587104599_))))
                        (let ((_hd104590104604_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104591104601_)))
                              (_tl104589104606_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104591104601_))))
                          ((lambda (_L104609_)
                             (let ((__tmp114689
                                    (map gxc#generate-runtime-identifier
                                         _L104609_)))
                               (declare (not safe))
                               (cons '%#provide __tmp114689)))
                           _tl104589104606_)))
                      (let ()
                        (declare (not safe))
                        (_g104586104596_ _g104587104599_))))))
          (declare (not safe))
          (_g104585104619_ _stx104584_))))
    (define gxc#generate-meta-extern%
      (lambda (_self104454_ _stx104455_)
        (letrec ((_generate1104457_
                  (lambda (_id104578_ _eid104579_)
                    (let ((_eid104581_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _eid104579_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _eid104581_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _stx104455_
                             _eid104581_)))
                      (let ((__tmp114691
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-identifier _id104578_)))
                            (__tmp114690
                             (let ()
                               (declare (not safe))
                               (cons _eid104581_ '()))))
                        (declare (not safe))
                        (cons __tmp114691 __tmp114690))))))
          (let* ((_g104459104487_
                  (lambda (_g104460104484_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104460104484_))))
                 (_g104458104575_
                  (lambda (_g104460104490_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104460104490_))
                        (let ((_e104465104492_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104460104490_))))
                          (let ((_hd104464104495_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104465104492_)))
                                (_tl104463104497_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104465104492_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl104463104497_))
                                (let ((_g114692_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl104463104497_
                                          '0))))
                                  (begin
                                    (let ((_g114693_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g114692_)
                                                 (##vector-length _g114692_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g114693_ 2)))
                                          (error "Context expects 2 values"
                                                 _g114693_)))
                                    (let ((_target104466104500_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g114692_ 0)))
                                          (_tl104468104502_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g114692_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl104468104502_))
                                          (letrec ((_loop104469104505_
                                                    (lambda (_hd104467104508_
                                                             _eid104473104510_
                                                             _id104474104512_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd104467104508_))
                                                          (let ((_e104470104515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd104467104508_))))
                    (let ((_lp-hd104471104518_
                           (let ()
                             (declare (not safe))
                             (##car _e104470104515_)))
                          (_lp-tl104472104520_
                           (let ()
                             (declare (not safe))
                             (##cdr _e104470104515_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _lp-hd104471104518_))
                          (let ((_e104479104523_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _lp-hd104471104518_))))
                            (let ((_hd104478104526_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e104479104523_)))
                                  (_tl104477104528_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e104479104523_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl104477104528_))
                                  (let ((_e104482104531_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl104477104528_))))
                                    (let ((_hd104481104534_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e104482104531_)))
                                          (_tl104480104536_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e104482104531_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl104480104536_))
                                          (let ((__tmp114698
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd104481104534_
                                                         _eid104473104510_)))
                                                (__tmp114697
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd104478104526_
                                                         _id104474104512_))))
                                            (declare (not safe))
                                            (_loop104469104505_
                                             _lp-tl104472104520_
                                             __tmp114698
                                             __tmp114697))
                                          (let ()
                                            (declare (not safe))
                                            (_g104459104487_
                                             _g104460104490_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g104459104487_ _g104460104490_)))))
                          (let ()
                            (declare (not safe))
                            (_g104459104487_ _g104460104490_)))))
                  (let ((_eid104475104539_ (reverse _eid104473104510_))
                        (_id104476104541_ (reverse _id104474104512_)))
                    ((lambda (_L104544_ _L104545_)
                       (let ((__tmp114694
                              (map _generate1104457_
                                   (let ((__tmp114695
                                          (lambda (_g104560104563_
                                                   _g104561104565_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g104560104563_
                                                    _g104561104565_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp114695 '() _L104545_))
                                   (let ((__tmp114696
                                          (lambda (_g104567104570_
                                                   _g104568104572_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g104567104570_
                                                    _g104568104572_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp114696 '() _L104544_)))))
                         (declare (not safe))
                         (cons '%#extern __tmp114694)))
                     _eid104475104539_
                     _id104476104541_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_loop104469104505_
                                               _target104466104500_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_g104459104487_
                                             _g104460104490_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g104459104487_ _g104460104490_)))))
                        (let ()
                          (declare (not safe))
                          (_g104459104487_ _g104460104490_))))))
            (declare (not safe))
            (_g104458104575_ _stx104455_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_self104244_ _stx104245_)
        (letrec ((_generate1104247_
                  (lambda (_id104449_)
                    (let ((_eid104451_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _id104449_)))
                          (_ident104452_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _id104449_))))
                      (let ((__tmp114699
                             (let ((__tmp114700
                                    (let ()
                                      (declare (not safe))
                                      (cons _eid104451_ '()))))
                               (declare (not safe))
                               (cons _ident104452_ __tmp114700))))
                        (declare (not safe))
                        (cons '%#define-runtime __tmp114699)))))
                 (_generate*104248_
                  (lambda (_all104417_)
                    (let* ((_all104418104426_ _all104417_)
                           (_else104420104434_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (cons '%#begin _all104417_))))
                           (_K104422104439_
                            (lambda (_one104437_) _one104437_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all104418104426_))
                          (let ((_hd104423104442_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all104418104426_)))
                                (_tl104424104444_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all104418104426_))))
                            (let ((_one104447_ _hd104423104442_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl104424104444_))
                                  (let ()
                                    (declare (not safe))
                                    (_K104422104439_ _one104447_))
                                  (let ()
                                    (declare (not safe))
                                    (_else104420104434_)))))
                          (let ()
                            (declare (not safe))
                            (_else104420104434_)))))))
          (let* ((_g104250104267_
                  (lambda (_g104251104264_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104251104264_))))
                 (_g104249104414_
                  (lambda (_g104251104270_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104251104270_))
                        (let ((_e104256104272_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104251104270_))))
                          (let ((_hd104255104275_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104256104272_)))
                                (_tl104254104277_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104256104272_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl104254104277_))
                                (let ((_e104259104280_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl104254104277_))))
                                  (let ((_hd104258104283_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e104259104280_)))
                                        (_tl104257104285_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e104259104280_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl104257104285_))
                                        (let ((_e104262104288_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl104257104285_))))
                                          (let ((_hd104261104291_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e104262104288_)))
                                                (_tl104260104293_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e104262104288_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl104260104293_))
                                                ((lambda (_L104296_ _L104297_)
                                                   (let _lp104313_ ((_rest104315_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L104297_)
                            (_r104316_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((___stx113830113831_
                                                             _rest104315_)
                                                            (_g104321104338_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx113830113831_)))))
               (let ((___kont113832113833_
                      (lambda (_L104401_)
                        (let ()
                          (declare (not safe))
                          (_lp104313_ _L104401_ _r104316_))))
                     (___kont113834113835_
                      (lambda (_L104374_ _L104375_)
                        (let ((__tmp114701
                               (let ((__tmp114702
                                      (let ()
                                        (declare (not safe))
                                        (_generate1104247_ _L104375_))))
                                 (declare (not safe))
                                 (cons __tmp114702 _r104316_))))
                          (declare (not safe))
                          (_lp104313_ _L104374_ __tmp114701))))
                     (___kont113836113837_
                      (lambda (_L104350_)
                        (let ((__tmp114703
                               (let ((__tmp114704
                                      (let ((__tmp114705
                                             (let ()
                                               (declare (not safe))
                                               (_generate1104247_ _L104350_))))
                                        (declare (not safe))
                                        (cons __tmp114705 '()))))
                                 (declare (not safe))
                                 (foldl1 cons __tmp114704 _r104316_))))
                          (declare (not safe))
                          (_generate*104248_ __tmp114703))))
                     (___kont113838113839_
                      (lambda ()
                        (let ((__tmp114706 (reverse _r104316_)))
                          (declare (not safe))
                          (_generate*104248_ __tmp114706)))))
                 (let ((_g104319104361_
                        (lambda ()
                          (let ((_L104350_ ___stx113830113831_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _L104350_))
                                (___kont113836113837_ _L104350_)
                                (___kont113838113839_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? ___stx113830113831_))
                       (let ((_e104326104390_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e ___stx113830113831_))))
                         (let ((_tl104324104395_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e104326104390_)))
                               (_hd104325104393_
                                (let ()
                                  (declare (not safe))
                                  (##car _e104326104390_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _hd104325104393_))
                               (let ((_e104327104398_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd104325104393_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e104327104398_ '#f))
                                     (___kont113832113833_ _tl104324104395_)
                                     (___kont113834113835_
                                      _tl104324104395_
                                      _hd104325104393_)))
                               (___kont113834113835_
                                _tl104324104395_
                                _hd104325104393_))))
                       (let () (declare (not safe)) (_g104319104361_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd104261104291_
                                                 _hd104258104283_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g104250104267_
                                                   _g104251104270_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g104250104267_ _g104251104270_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g104250104267_ _g104251104270_)))))
                        (let ()
                          (declare (not safe))
                          (_g104250104267_ _g104251104270_))))))
            (declare (not safe))
            (_g104249104414_ _stx104245_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_self104141_ _stx104142_)
        (let* ((_g104144104161_
                (lambda (_g104145104158_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104145104158_))))
               (_g104143104241_
                (lambda (_g104145104164_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104145104164_))
                      (let ((_e104150104166_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104145104164_))))
                        (let ((_hd104149104169_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104150104166_)))
                              (_tl104148104171_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104150104166_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104148104171_))
                              (let ((_e104153104174_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104148104171_))))
                                (let ((_hd104152104177_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104153104174_)))
                                      (_tl104151104179_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104153104174_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104151104179_))
                                      (let ((_e104156104182_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104151104179_))))
                                        (let ((_hd104155104185_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104156104182_)))
                                              (_tl104154104187_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104156104182_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl104154104187_))
                                              ((lambda (_L104190_ _L104191_)
                                                 (let* ((_eid104206_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _L104191_)))
                                                        (_phi104208_
                                                         (let ((__tmp114707
                                                                (gx#current-expander-phi)))
                                                           (declare (not safe))
                                                           (fx+ __tmp114707
                                                                '1)))
                                                        (_block104210_
                                                         (let ((__tmp114708
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _self104141_ 'state))))
                   (declare (not safe))
                   (gxc#meta-state-begin-phi! __tmp114708 _phi104208_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_g104213104220_
                                                           (lambda (_g104214104217_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _g104214104217_))))
                  (_g104212104238_
                   (lambda (_g104214104223_)
                     ((lambda (_L104225_)
                        (let ()
                          (let ((__tmp114713
                                 (let ()
                                   (declare (not safe))
                                   (slot-ref__0 _self104141_ 'state)))
                                (__tmp114709
                                 (let ((__tmp114712
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0
                                           '#f
                                           '%#define-runtime)))
                                       (__tmp114710
                                        (let ((__tmp114711
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L104190_ '()))))
                                          (declare (not safe))
                                          (cons _L104225_ __tmp114711))))
                                   (declare (not safe))
                                   (cons __tmp114712 __tmp114710))))
                            (declare (not safe))
                            (gxc#meta-state-add-phi!
                             __tmp114713
                             _phi104208_
                             __tmp114709))))
                      _g104214104223_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g104212104238_
                                                      _eid104206_))
                                                   (if _block104210_
                                                       (let ((__tmp114717
                                                              (let ((__tmp114723
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp114724
                                    (let ((__tmp114725
                                           (let ((__tmp114726
                                                  (let ((__tmp114730
                                                         (let ((__tmp114731
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'load-module '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp114731)))
                (__tmp114727
                 (let ((__tmp114728
                        (let ((__tmp114729
                               (let ()
                                 (declare (not safe))
                                 (cons _block104210_ '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp114729))))
                   (declare (not safe))
                   (cons __tmp114728 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114730
                                                          __tmp114727))))
                                             (declare (not safe))
                                             (cons '%#call __tmp114726))))
                                      (declare (not safe))
                                      (cons __tmp114725 '()))))
                               (declare (not safe))
                               (cons '%#begin-syntax __tmp114724)))
                            (__tmp114718
                             (let ((__tmp114719
                                    (let ((__tmp114720
                                           (let ((__tmp114722
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-identifier
                                                     _L104191_)))
                                                 (__tmp114721
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _eid104206_ '()))))
                                             (declare (not safe))
                                             (cons __tmp114722 __tmp114721))))
                                      (declare (not safe))
                                      (cons '%#define-syntax __tmp114720))))
                               (declare (not safe))
                               (cons __tmp114719 '()))))
                        (declare (not safe))
                        (cons __tmp114723 __tmp114718))))
                 (declare (not safe))
                 (cons '%#begin __tmp114717))
               (let ((__tmp114714
                      (let ((__tmp114716
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-identifier _L104191_)))
                            (__tmp114715
                             (let ()
                               (declare (not safe))
                               (cons _eid104206_ '()))))
                        (declare (not safe))
                        (cons __tmp114716 __tmp114715))))
                 (declare (not safe))
                 (cons '%#define-syntax __tmp114714)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd104155104185_
                                               _hd104152104177_)
                                              (let ()
                                                (declare (not safe))
                                                (_g104144104161_
                                                 _g104145104164_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g104144104161_ _g104145104164_)))))
                              (let ()
                                (declare (not safe))
                                (_g104144104161_ _g104145104164_)))))
                      (let ()
                        (declare (not safe))
                        (_g104144104161_ _g104145104164_))))))
          (declare (not safe))
          (_g104143104241_ _stx104142_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_self104073_ _stx104074_)
        (let* ((_g104076104093_
                (lambda (_g104077104090_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104077104090_))))
               (_g104075104138_
                (lambda (_g104077104096_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104077104096_))
                      (let ((_e104082104098_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104077104096_))))
                        (let ((_hd104081104101_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104082104098_)))
                              (_tl104080104103_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104082104098_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104080104103_))
                              (let ((_e104085104106_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104080104103_))))
                                (let ((_hd104084104109_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104085104106_)))
                                      (_tl104083104111_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104085104106_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104083104111_))
                                      (let ((_e104088104114_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104083104111_))))
                                        (let ((_hd104087104117_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104088104114_)))
                                              (_tl104086104119_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104088104114_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl104086104119_))
                                              ((lambda (_L104122_ _L104123_)
                                                 (let ((__tmp114732
                                                        (let ((__tmp114735
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-identifier _L104123_)))
                      (__tmp114733
                       (let ((__tmp114734
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-identifier _L104122_))))
                         (declare (not safe))
                         (cons __tmp114734 '()))))
                  (declare (not safe))
                  (cons __tmp114735 __tmp114733))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#define-alias
                                                         __tmp114732)))
                                               _hd104087104117_
                                               _hd104084104109_)
                                              (let ()
                                                (declare (not safe))
                                                (_g104076104093_
                                                 _g104077104096_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g104076104093_ _g104077104096_)))))
                              (let ()
                                (declare (not safe))
                                (_g104076104093_ _g104077104096_)))))
                      (let ()
                        (declare (not safe))
                        (_g104076104093_ _g104077104096_))))))
          (declare (not safe))
          (_g104075104138_ _stx104074_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_self104070_ _stx104071_)
        (let ((__tmp114737
               (let () (declare (not safe)) (slot-ref__0 _self104070_ 'state)))
              (__tmp114736 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp114737 __tmp114736 _stx104071_))
        (let ()
          (declare (not safe))
          (gxc#generate-meta-define-values% _self104070_ _stx104071_))))
    (define gxc#generate-meta-phi-expr
      (lambda (_self104067_ _stx104068_)
        (let ((__tmp114739
               (let () (declare (not safe)) (slot-ref__0 _self104067_ 'state)))
              (__tmp114738 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp114739 __tmp114738 _stx104068_))
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp114742 (list))
            (__tmp114740
             (let ((__tmp114741
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114741 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp114742
         '(src n open blocks)
         __tmp114740
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _$args104064_
        (apply make-instance gxc#meta-state::t _$args104064_)))
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
      (lambda (_self104061_ _ctx104062_)
        (if (let ((__tmp114751
                   (let ()
                     (declare (not safe))
                     (##structure-length _self104061_))))
              (declare (not safe))
              (##fx< '4 __tmp114751))
            (begin
              (let ((__tmp114745
                     (let ((__tmp114746
                            (##structure-ref
                             _ctx104062_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp114746)))
                    (__tmp114744
                     (let ()
                       (declare (not safe))
                       (##structure-type _self104061_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self104061_
                 __tmp114745
                 '1
                 __tmp114744
                 '#f))
              (let ((__tmp114747
                     (let ()
                       (declare (not safe))
                       (##structure-type _self104061_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self104061_
                 '1
                 '2
                 __tmp114747
                 '#f))
              (let ((__tmp114749
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp114748
                     (let ()
                       (declare (not safe))
                       (##structure-type _self104061_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self104061_
                 __tmp114749
                 '3
                 __tmp114748
                 '#f))
              (let ((__tmp114750
                     (let ()
                       (declare (not safe))
                       (##structure-type _self104061_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self104061_
                 '()
                 '4
                 __tmp114750
                 '#f)))
            (let ((__tmp114743
                   (let ()
                     (declare (not safe))
                     (##vector-length _self104061_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self104061_
                     '4
                     __tmp114743)))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp114754 (list))
            (__tmp114752
             (let ((__tmp114753
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp114753 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp114754
         '(ctx phi n code)
         __tmp114752
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _$args103936_
        (apply make-instance gxc#meta-state-block::t _$args103936_)))
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
      (lambda (_state103895_ _phi103896_)
        (let* ((_state103897103905_ _state103895_)
               (_E103899103909_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _state103897103905_))))
               (_K103900103918_
                (lambda (_open103912_ _n103913_ _src103914_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _open103912_ _phi103896_))
                      '#f
                      (let ((_block-ref103916_
                             (string-append
                              _src103914_
                              '"__"
                              (number->string _n103913_))))
                        (##structure-set!
                         _state103895_
                         (let () (declare (not safe)) (fx+ _n103913_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp114755
                               (let ((__tmp114756
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp114756
                                  _phi103896_
                                  _n103913_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _open103912_ _phi103896_ __tmp114755))
                        _block-ref103916_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _state103897103905_
                 'gxc#meta-state::t))
              (let* ((_e103901103921_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state103897103905_
                         '1
                         gxc#meta-state::t
                         '#f)))
                     (_src103924_ _e103901103921_)
                     (_e103902103926_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state103897103905_
                         '2
                         gxc#meta-state::t
                         '#f)))
                     (_n103929_ _e103902103926_)
                     (_e103903103931_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state103897103905_
                         '3
                         gxc#meta-state::t
                         '#f)))
                     (_open103934_ _e103903103931_))
                (declare (not safe))
                (_K103900103918_ _open103934_ _n103929_ _src103924_))
              (let () (declare (not safe)) (_E103899103909_))))))
    (define gxc#meta-state-add-phi!
      (lambda (_state103889_ _phi103890_ _stx103891_)
        (let ((_block103893_
               (let ((__tmp114757
                      (##structure-ref
                       _state103889_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp114757 _phi103890_))))
          (##structure-set!
           _block103893_
           (let ((__tmp114758
                  (##structure-ref
                   _block103893_
                   '4
                   gxc#meta-state-block::t
                   '#f)))
             (declare (not safe))
             (cons _stx103891_ __tmp114758))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_state103884_)
        (##structure-set!
         _state103884_
         (let ((__tmp114761
                (lambda (_g114762_ _block103886_ _r103887_)
                  (let ()
                    (declare (not safe))
                    (cons _block103886_ _r103887_))))
               (__tmp114760
                (##structure-ref _state103884_ '4 gxc#meta-state::t '#f))
               (__tmp114759
                (##structure-ref _state103884_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp114761 __tmp114760 __tmp114759))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state103884_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_state103836_)
        (let () (declare (not safe)) (gxc#meta-state-end-phi! _state103836_))
        (let ((__tmp114764
               (lambda (_block103838_ _r103839_)
                 (let* ((_block103840103849_ _block103838_)
                        (_E103842103853_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _block103840103849_))))
                        (_K103843103861_
                         (lambda (_code103856_
                                  _n103857_
                                  _phi103858_
                                  _ctx103859_)
                           (if (let ()
                                 (declare (not safe))
                                 (null? _code103856_))
                               _r103839_
                               (let ((__tmp114765
                                      (let ((__tmp114766
                                             (let ((__tmp114767
                                                    (let ((__tmp114768
                                                           (let ((__tmp114769
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114770 (reverse _code103856_)))
                            (declare (not safe))
                            (cons '%#begin __tmp114770))))
                     (declare (not safe))
                     (cons __tmp114769 '()))))
              (declare (not safe))
              (cons _n103857_ __tmp114768))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _phi103858_
                                                     __tmp114767))))
                                        (declare (not safe))
                                        (cons _ctx103859_ __tmp114766))))
                                 (declare (not safe))
                                 (cons __tmp114765 _r103839_))))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _block103840103849_
                          'gxc#meta-state-block::t))
                       (let* ((_e103844103864_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block103840103849_
                                  '1
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_ctx103867_ _e103844103864_)
                              (_e103845103869_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block103840103849_
                                  '2
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_phi103872_ _e103845103869_)
                              (_e103846103874_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block103840103849_
                                  '3
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_n103877_ _e103846103874_)
                              (_e103847103879_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block103840103849_
                                  '4
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_code103882_ _e103847103879_))
                         (declare (not safe))
                         (_K103843103861_
                          _code103882_
                          _n103877_
                          _phi103872_
                          _ctx103867_))
                       (let () (declare (not safe)) (_E103842103853_))))))
              (__tmp114763
               (##structure-ref _state103836_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl1 __tmp114764 '() __tmp114763))))
    (define gxc#collect-expression-refs
      (lambda (_stx103832_)
        (let ((_ht103834_ (let () (declare (not safe)) (make-hash-table-eq))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-expression-refs _stx103832_ 'table: _ht103834_))
          _ht103834_)))
    (define gxc#collect-refs-ref%
      (lambda (_self103775_ _stx103776_)
        (let* ((_g103778103791_
                (lambda (_g103779103788_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103779103788_))))
               (_g103777103829_
                (lambda (_g103779103794_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103779103794_))
                      (let ((_e103783103796_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103779103794_))))
                        (let ((_hd103782103799_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103783103796_)))
                              (_tl103781103801_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103783103796_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103781103801_))
                              (let ((_e103786103804_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103781103801_))))
                                (let ((_hd103785103807_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103786103804_)))
                                      (_tl103784103809_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103786103804_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl103784103809_))
                                      ((lambda (_L103812_)
                                         (let* ((_bind103824_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _L103812_)))
                                                (_eid103826_
                                                 (if _bind103824_
                                                     (##structure-ref
                                                      _bind103824_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L103812_)))))
                                           (let ((__tmp114771
                                                  (let ()
                                                    (declare (not safe))
                                                    (slot-ref__0
                                                     _self103775_
                                                     'table))))
                                             (declare (not safe))
                                             (hash-put!
                                              __tmp114771
                                              _eid103826_
                                              _eid103826_))))
                                       _hd103785103807_)
                                      (let ()
                                        (declare (not safe))
                                        (_g103778103791_ _g103779103794_)))))
                              (let ()
                                (declare (not safe))
                                (_g103778103791_ _g103779103794_)))))
                      (let ()
                        (declare (not safe))
                        (_g103778103791_ _g103779103794_))))))
          (declare (not safe))
          (_g103777103829_ _stx103776_))))
    (define gxc#collect-refs-setq%
      (lambda (_self103702_ _stx103703_)
        (let* ((_g103705103722_
                (lambda (_g103706103719_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103706103719_))))
               (_g103704103772_
                (lambda (_g103706103725_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103706103725_))
                      (let ((_e103711103727_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103706103725_))))
                        (let ((_hd103710103730_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103711103727_)))
                              (_tl103709103732_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103711103727_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103709103732_))
                              (let ((_e103714103735_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103709103732_))))
                                (let ((_hd103713103738_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103714103735_)))
                                      (_tl103712103740_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103714103735_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl103712103740_))
                                      (let ((_e103717103743_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl103712103740_))))
                                        (let ((_hd103716103746_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e103717103743_)))
                                              (_tl103715103748_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e103717103743_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl103715103748_))
                                              ((lambda (_L103751_ _L103752_)
                                                 (let* ((_bind103767_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _L103752_)))
                                                        (_eid103769_
                                                         (if _bind103767_
                                                             (##structure-ref
                                                              _bind103767_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _L103752_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp114772
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self103702_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp114772
                                                      _eid103769_
                                                      _eid103769_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self103702_
                                                      _L103751_))))
                                               _hd103716103746_
                                               _hd103713103738_)
                                              (let ()
                                                (declare (not safe))
                                                (_g103705103722_
                                                 _g103706103725_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103705103722_ _g103706103725_)))))
                              (let ()
                                (declare (not safe))
                                (_g103705103722_ _g103706103725_)))))
                      (let ()
                        (declare (not safe))
                        (_g103705103722_ _g103706103725_))))))
          (declare (not safe))
          (_g103704103772_ _stx103703_))))
    (define gxc#find-runtime-begin%
      (lambda (_self103659_ _stx103660_)
        (let* ((_g103662103672_
                (lambda (_g103663103669_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103663103669_))))
               (_g103661103699_
                (lambda (_g103663103675_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103663103675_))
                      (let ((_e103667103677_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103663103675_))))
                        (let ((_hd103666103680_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103667103677_)))
                              (_tl103665103682_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103667103677_))))
                          ((lambda (_L103685_)
                             (let ((__tmp114773
                                    (lambda (_g103694103696_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self103659_
                                         _g103694103696_)))))
                               (declare (not safe))
                               (ormap1 __tmp114773 _L103685_)))
                           _tl103665103682_)))
                      (let ()
                        (declare (not safe))
                        (_g103662103672_ _g103663103675_))))))
          (declare (not safe))
          (_g103661103699_ _stx103660_))))
    (define gxc#count-values-single% (lambda (_self103656_ _stx103657_) '1))
    (define gxc#count-values-call%
      (lambda (_self103522_ _stx103523_)
        (let* ((___stx113860113861_ _stx103523_)
               (_g103526103555_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx113860113861_)))))
          (let ((___kont113862113863_
                 (lambda (_L103623_ _L103624_)
                   (length (let ((__tmp114774
                                  (lambda (_g103645103648_ _g103646103650_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g103645103648_
                                            _g103646103650_)))))
                             (declare (not safe))
                             (foldr1 __tmp114774 '() _L103623_)))))
                (___kont113866113867_ (lambda () '#f)))
            (let ((___match113905113906_
                   (lambda (_e103532103567_
                            _hd103531103570_
                            _tl103530103572_
                            _e103535103575_
                            _hd103534103578_
                            _tl103533103580_
                            _e103538103583_
                            _hd103537103586_
                            _tl103536103588_
                            _e103541103591_
                            _hd103540103594_
                            _tl103539103596_
                            ___splice113864113865_
                            _target103542103599_
                            _tl103544103601_)
                     (letrec ((_loop103545103604_
                               (lambda (_hd103543103607_ _rand103549103609_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd103543103607_))
                                     (let ((_e103546103612_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd103543103607_))))
                                       (let ((_lp-tl103548103617_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e103546103612_)))
                                             (_lp-hd103547103615_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e103546103612_))))
                                         (let ((__tmp114775
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _lp-hd103547103615_
                                                        _rand103549103609_))))
                                           (declare (not safe))
                                           (_loop103545103604_
                                            _lp-tl103548103617_
                                            __tmp114775))))
                                     (let ((_rand103550103620_
                                            (reverse _rand103549103609_)))
                                       (let ((_L103623_ _rand103550103620_)
                                             (_L103624_ _hd103540103594_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L103624_
                                                'values))
                                             (___kont113862113863_
                                              _L103623_
                                              _L103624_)
                                             (___kont113866113867_))))))))
                       (let ()
                         (declare (not safe))
                         (_loop103545103604_ _target103542103599_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx113860113861_))
                  (let ((_e103532103567_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx113860113861_))))
                    (let ((_tl103530103572_
                           (let ()
                             (declare (not safe))
                             (##cdr _e103532103567_)))
                          (_hd103531103570_
                           (let ()
                             (declare (not safe))
                             (##car _e103532103567_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl103530103572_))
                          (let ((_e103535103575_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl103530103572_))))
                            (let ((_tl103533103580_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e103535103575_)))
                                  (_hd103534103578_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e103535103575_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd103534103578_))
                                  (let ((_e103538103583_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd103534103578_))))
                                    (let ((_tl103536103588_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e103538103583_)))
                                          (_hd103537103586_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e103538103583_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd103537103586_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd103537103586_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl103536103588_))
                                                  (let ((_e103541103591_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl103536103588_))))
                                                    (let ((_tl103539103596_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e103541103591_)))
                                                          (_hd103540103594_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e103541103591_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl103539103596_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl103533103580_))
                      (let ((___splice113864113865_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl103533103580_ '0))))
                        (let ((_tl103544103601_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice113864113865_ '1)))
                              (_target103542103599_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice113864113865_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl103544103601_))
                              (___match113905113906_
                               _e103532103567_
                               _hd103531103570_
                               _tl103530103572_
                               _e103535103575_
                               _hd103534103578_
                               _tl103533103580_
                               _e103538103583_
                               _hd103537103586_
                               _tl103536103588_
                               _e103541103591_
                               _hd103540103594_
                               _tl103539103596_
                               ___splice113864113865_
                               _target103542103599_
                               _tl103544103601_)
                              (___kont113866113867_))))
                      (___kont113866113867_))
                  (___kont113866113867_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont113866113867_))
                                              (___kont113866113867_))
                                          (___kont113866113867_))))
                                  (___kont113866113867_))))
                          (___kont113866113867_))))
                  (___kont113866113867_)))))))
    (define gxc#count-values-if%
      (lambda (_self103425_ _stx103426_)
        (let* ((_g103428103449_
                (lambda (_g103429103446_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103429103446_))))
               (_g103427103519_
                (lambda (_g103429103452_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103429103452_))
                      (let ((_e103435103454_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103429103452_))))
                        (let ((_hd103434103457_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103435103454_)))
                              (_tl103433103459_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103435103454_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103433103459_))
                              (let ((_e103438103462_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103433103459_))))
                                (let ((_hd103437103465_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103438103462_)))
                                      (_tl103436103467_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103438103462_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl103436103467_))
                                      (let ((_e103441103470_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl103436103467_))))
                                        (let ((_hd103440103473_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e103441103470_)))
                                              (_tl103439103475_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e103441103470_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl103439103475_))
                                              (let ((_e103444103478_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl103439103475_))))
                                                (let ((_hd103443103481_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e103444103478_)))
                                                      (_tl103442103483_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e103444103478_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl103442103483_))
                                                      ((lambda (_L103486_
                                                                _L103487_
                                                                _L103488_)
                                                         (let ((_c1103505103507_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _self103425_ _L103487_))))
                   (if _c1103505103507_
                       (let* ((_c1103510_ _c1103505103507_)
                              (_c2103511103513_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self103425_ _L103486_))))
                         (if _c2103511103513_
                             (let ((_c2103516_ _c2103511103513_))
                               (if (fx= _c1103510_ _c2103516_) _c1103510_ '#f))
                             '#f))
                       '#f)))
               _hd103443103481_
               _hd103440103473_
               _hd103437103465_)
              (let ()
                (declare (not safe))
                (_g103428103449_ _g103429103452_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g103428103449_
                                                 _g103429103452_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103428103449_ _g103429103452_)))))
                              (let ()
                                (declare (not safe))
                                (_g103428103449_ _g103429103452_)))))
                      (let ()
                        (declare (not safe))
                        (_g103428103449_ _g103429103452_))))))
          (declare (not safe))
          (_g103427103519_ _stx103426_))))))
