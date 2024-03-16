(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1710617603)
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
        (letrec ((_hash-e109878_
                  (lambda (_id109880_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _id109880_))))))
          (let ()
            (declare (not safe))
            (make-hash-table
             'test:
             gx#bound-identifier=?
             'hash:
             _hash-e109878_)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp111236 (list gxc#::void::t))
            (__tmp111234
             (let ((__tmp111235
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp111235 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp111236
         '()
         __tmp111234
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _$args109874_
        (apply make-instance gxc#::collect-bindings::t _$args109874_)))
    (define gxc#::collect-bindings-bind-methods!
      (make-promise
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
    (define gxc#apply-collect-bindings
      (lambda (_stx109866_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_self109869_
                (let ((__obj111210
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj111210))
               (__tmp111237
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self109869_ _stx109866_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp111237
           gxc#current-compile-method
           _self109869_))))
    (define gxc#::lift-modules::t
      (let ((__tmp111240 (list gxc#::void::t))
            (__tmp111238
             (let ((__tmp111239
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp111239 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp111240
         '(modules)
         __tmp111238
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _$args109863_
        (apply make-instance gxc#::lift-modules::t _$args109863_)))
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
      (make-promise
       (lambda ()
         (force gxc#::void-bind-methods!)
         (let ()
           (declare (not safe))
           (bind-method!__0 gxc#::lift-modules::t '%#begin gxc#apply-begin%))
         (let ()
           (declare (not safe))
           (bind-method!__0
            gxc#::lift-modules::t
            '%#module
            gxc#lift-modules-module%))
         (let () (declare (not safe)) (seal-class! gxc#::lift-modules::t)))))
    (define gxc#apply-lift-modules__%
      (lambda (_g111241_ _modules109834109837_ _stx109839_)
        (let ((_modules109842_
               (if (let ()
                     (declare (not safe))
                     (eq? _modules109834109837_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _modules109834109837_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_self109844_
                  (let ((__obj111212
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj111212
                       _modules109842_
                       '1
                       gxc#::lift-modules::t
                       '#f))
                    __obj111212))
                 (__tmp111242
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self109844_ _stx109839_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp111242
             gxc#current-compile-method
             _self109844_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_keys109833109851_ . _args109853_)
        (apply gxc#apply-lift-modules__%
               _keys109833109851_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys109833109851_
                  'modules:
                  absent-value))
               _args109853_)))
    (define gxc#apply-lift-modules
      (lambda _args109835109859_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _args109835109859_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp111245 (list))
            (__tmp111243
             (let ((__tmp111244
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp111244 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp111245
         '()
         __tmp111243
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _$args109829_
        (apply make-instance gxc#::find-runtime-code::t _$args109829_)))
    (define gxc#::find-runtime-code-bind-methods!
      (make-promise
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
           (bind-method!__0 gxc#::find-runtime-code::t '%#if gxc#true-method))
         (let ()
           (declare (not safe))
           (bind-method!__0 gxc#::find-runtime-code::t '%#ref gxc#true-method))
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
    (define gxc#apply-find-runtime-code
      (lambda (_stx109821_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_self109824_
                (let ((__obj111214
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj111214))
               (__tmp111246
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self109824_ _stx109821_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp111246
           gxc#current-compile-method
           _self109824_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp111249 (list gxc#::false::t))
            (__tmp111247
             (let ((__tmp111248
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp111248 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp111249
         '()
         __tmp111247
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _$args109818_
        (apply make-instance gxc#::find-lambda-expression::t _$args109818_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (make-promise
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
    (define gxc#apply-find-lambda-expression
      (lambda (_stx109810_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_self109813_
                (let ((__obj111216
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj111216))
               (__tmp111250
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self109813_ _stx109810_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp111250
           gxc#current-compile-method
           _self109813_))))
    (define gxc#::count-values::t
      (let ((__tmp111253 (list gxc#::false-expression::t))
            (__tmp111251
             (let ((__tmp111252
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp111252 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp111253
         '()
         __tmp111251
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _$args109807_
        (apply make-instance gxc#::count-values::t _$args109807_)))
    (define gxc#::count-values-bind-methods!
      (make-promise
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
           (bind-method!__0 gxc#::count-values::t '%#if gxc#count-values-if%))
         (let () (declare (not safe)) (seal-class! gxc#::count-values::t)))))
    (define gxc#apply-count-values
      (lambda (_stx109799_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_self109802_
                (let ((__obj111218
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj111218))
               (__tmp111254
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self109802_ _stx109799_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp111254
           gxc#current-compile-method
           _self109802_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp111255 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp111255
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _$args109796_
        (apply make-instance gxc#::generate-runtime-empty::t _$args109796_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (make-promise
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
    (define gxc#::generate-loader::t
      (let ((__tmp111258 (list gxc#::generate-runtime-empty::t))
            (__tmp111256
             (let ((__tmp111257
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp111257 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp111258
         '()
         __tmp111256
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _$args109792_
        (apply make-instance gxc#::generate-loader::t _$args109792_)))
    (define gxc#::generate-loader-bind-methods!
      (make-promise
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
    (define gxc#apply-generate-loader
      (lambda (_stx109784_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_self109787_
                (let ((__obj111221
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj111221))
               (__tmp111259
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self109787_ _stx109784_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp111259
           gxc#current-compile-method
           _self109787_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp111260 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp111260
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _$args109781_
        (apply make-instance gxc#::generate-runtime::t _$args109781_)))
    (define gxc#::generate-runtime-bind-methods!
      (make-promise
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
    (define gxc#apply-generate-runtime
      (lambda (_stx109773_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_self109776_
                (let ((__obj111223
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj111223))
               (__tmp111261
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self109776_ _stx109773_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp111261
           gxc#current-compile-method
           _self109776_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp111264 (list gxc#::generate-runtime::t))
            (__tmp111262
             (let ((__tmp111263
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp111263 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp111264
         '()
         __tmp111262
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _$args109770_
        (apply make-instance gxc#::generate-runtime-phi::t _$args109770_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (make-promise
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
    (define gxc#apply-generate-runtime-phi
      (lambda (_stx109762_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_self109765_
                (let ((__obj111225
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj111225))
               (__tmp111265
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self109765_ _stx109762_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp111265
           gxc#current-compile-method
           _self109765_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp111266 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp111266
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _$args109759_
        (apply make-instance gxc#::collect-expression-refs::t _$args109759_)))
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
      (make-promise
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
    (define gxc#apply-collect-expression-refs__%
      (lambda (_g111267_ _table109730109733_ _stx109735_)
        (let ((_table109738_
               (if (let ()
                     (declare (not safe))
                     (eq? _table109730109733_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _table109730109733_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_self109740_
                  (let ((__obj111227
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj111227
                       _table109738_
                       '1
                       gxc#::collect-expression-refs::t
                       '#f))
                    __obj111227))
                 (__tmp111268
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self109740_ _stx109735_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp111268
             gxc#current-compile-method
             _self109740_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_keys109729109747_ . _args109749_)
        (apply gxc#apply-collect-expression-refs__%
               _keys109729109747_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys109729109747_ 'table: absent-value))
               _args109749_)))
    (define gxc#apply-collect-expression-refs
      (lambda _args109731109755_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _args109731109755_)))
    (define gxc#::generate-meta::t
      (let ((__tmp111271 (list gxc#::void-expression::t))
            (__tmp111269
             (let ((__tmp111270
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp111270 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp111271
         '(state)
         __tmp111269
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _$args109725_
        (apply make-instance gxc#::generate-meta::t _$args109725_)))
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
      (make-promise
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
           (bind-method!__0 gxc#::generate-meta::t '%#declare gxc#void-method))
         (let () (declare (not safe)) (seal-class! gxc#::generate-meta::t)))))
    (define gxc#apply-generate-meta__%
      (lambda (_g111272_ _state109696109699_ _stx109701_)
        (let ((_state109704_
               (if (let ()
                     (declare (not safe))
                     (eq? _state109696109699_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _state109696109699_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_self109706_
                  (let ((__obj111229
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj111229
                       _state109704_
                       '1
                       gxc#::generate-meta::t
                       '#f))
                    __obj111229))
                 (__tmp111273
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self109706_ _stx109701_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp111273
             gxc#current-compile-method
             _self109706_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_keys109695109713_ . _args109715_)
        (apply gxc#apply-generate-meta__%
               _keys109695109713_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys109695109713_ 'state: absent-value))
               _args109715_)))
    (define gxc#apply-generate-meta
      (lambda _args109697109721_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _args109697109721_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp111276 (list))
            (__tmp111274
             (let ((__tmp111275
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp111275 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp111276
         '(state)
         __tmp111274
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _$args109691_
        (apply make-instance gxc#::generate-meta-phi::t _$args109691_)))
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
      (make-promise
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
    (define gxc#apply-generate-meta-phi__%
      (lambda (_g111277_ _state109662109665_ _stx109667_)
        (let ((_state109670_
               (if (let ()
                     (declare (not safe))
                     (eq? _state109662109665_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _state109662109665_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_self109672_
                  (let ((__obj111231
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj111231
                       _state109670_
                       '1
                       gxc#::generate-meta-phi::t
                       '#f))
                    __obj111231))
                 (__tmp111278
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self109672_ _stx109667_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp111278
             gxc#current-compile-method
             _self109672_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_keys109661109679_ . _args109681_)
        (apply gxc#apply-generate-meta-phi__%
               _keys109661109679_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys109661109679_ 'state: absent-value))
               _args109681_)))
    (define gxc#apply-generate-meta-phi
      (lambda _args109663109687_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _args109663109687_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_self109590_ _stx109591_)
        (let* ((_g109593109610_
                (lambda (_g109594109607_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g109594109607_))))
               (_g109592109657_
                (lambda (_g109594109613_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g109594109613_))
                      (let ((_e109597109615_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g109594109613_))))
                        (let ((_hd109598109618_
                               (let ()
                                 (declare (not safe))
                                 (##car _e109597109615_)))
                              (_tl109599109620_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e109597109615_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl109599109620_))
                              (let ((_e109600109623_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl109599109620_))))
                                (let ((_hd109601109626_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e109600109623_)))
                                      (_tl109602109628_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e109600109623_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl109602109628_))
                                      (let ((_e109603109631_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl109602109628_))))
                                        (let ((_hd109604109634_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e109603109631_)))
                                              (_tl109605109636_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e109603109631_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl109605109636_))
                                              ((lambda (_L109639_ _L109640_)
                                                 (let ((__tmp111279
                                                        (lambda (_bind109655_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _bind109655_))
                      (let ()
                        (declare (not safe))
                        (gxc#add-module-binding! _bind109655_ '#f))
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp111279
                                                    _L109640_)))
                                               _hd109604109634_
                                               _hd109601109626_)
                                              (let ()
                                                (declare (not safe))
                                                (_g109593109610_
                                                 _g109594109613_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g109593109610_ _g109594109613_)))))
                              (let ()
                                (declare (not safe))
                                (_g109593109610_ _g109594109613_)))))
                      (let ()
                        (declare (not safe))
                        (_g109593109610_ _g109594109613_))))))
          (declare (not safe))
          (_g109592109657_ _stx109591_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_self109522_ _stx109523_)
        (let* ((_g109525109542_
                (lambda (_g109526109539_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g109526109539_))))
               (_g109524109587_
                (lambda (_g109526109545_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g109526109545_))
                      (let ((_e109529109547_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g109526109545_))))
                        (let ((_hd109530109550_
                               (let ()
                                 (declare (not safe))
                                 (##car _e109529109547_)))
                              (_tl109531109552_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e109529109547_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl109531109552_))
                              (let ((_e109532109555_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl109531109552_))))
                                (let ((_hd109533109558_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e109532109555_)))
                                      (_tl109534109560_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e109532109555_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl109534109560_))
                                      (let ((_e109535109563_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl109534109560_))))
                                        (let ((_hd109536109566_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e109535109563_)))
                                              (_tl109537109568_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e109535109563_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl109537109568_))
                                              ((lambda (_L109571_ _L109572_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#add-module-binding!
                                                    _L109572_
                                                    '#t)))
                                               _hd109536109566_
                                               _hd109533109558_)
                                              (let ()
                                                (declare (not safe))
                                                (_g109525109542_
                                                 _g109526109545_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g109525109542_ _g109526109545_)))))
                              (let ()
                                (declare (not safe))
                                (_g109525109542_ _g109526109545_)))))
                      (let ()
                        (declare (not safe))
                        (_g109525109542_ _g109526109545_))))))
          (declare (not safe))
          (_g109524109587_ _stx109523_))))
    (define gxc#lift-modules-module%
      (lambda (_self109464_ _stx109465_)
        (let* ((_g109467109481_
                (lambda (_g109468109478_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g109468109478_))))
               (_g109466109519_
                (lambda (_g109468109484_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g109468109484_))
                      (let ((_e109471109486_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g109468109484_))))
                        (let ((_hd109472109489_
                               (let ()
                                 (declare (not safe))
                                 (##car _e109471109486_)))
                              (_tl109473109491_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e109471109486_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl109473109491_))
                              (let ((_e109474109494_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl109473109491_))))
                                (let ((_hd109475109497_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e109474109494_)))
                                      (_tl109476109499_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e109474109494_))))
                                  ((lambda (_L109502_ _L109503_)
                                     (let ((_ctx109516_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _L109503_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0 _self109464_ 'modules))
                                        (let ((__tmp111280
                                               (unbox (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _self109464_
                                                         'modules)))))
                                          (declare (not safe))
                                          (cons _ctx109516_ __tmp111280)))
                                       (let ((__tmp111281
                                              (lambda ()
                                                (let ((__tmp111282
                                                       (##structure-ref
                                                        _ctx109516_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self109464_
                                                   __tmp111282)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp111281
                                          gx#current-expander-context
                                          _ctx109516_))))
                                   _tl109476109499_
                                   _hd109475109497_)))
                              (let ()
                                (declare (not safe))
                                (_g109467109481_ _g109468109484_)))))
                      (let ()
                        (declare (not safe))
                        (_g109467109481_ _g109468109484_))))))
          (declare (not safe))
          (_g109466109519_ _stx109465_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_decls109420109422_ (gxc#current-compile-decls)))
          (if _decls109420109422_
              (let ((_decls109425_ _decls109420109422_))
                (let _lp109427_ ((_rest109429_ _decls109425_))
                  (let* ((_rest109430109438_ _rest109429_)
                         (_else109432109446_ (lambda () '#f))
                         (_K109434109452_
                          (lambda (_decls109449_ _decl109450_)
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _decl109450_ '(not safe)))
                                '#t
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _decl109450_ '(safe)))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_lp109427_ _decls109449_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _rest109430109438_))
                        (let ((_hd109435109455_
                               (let ()
                                 (declare (not safe))
                                 (##car _rest109430109438_)))
                              (_tl109436109457_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _rest109430109438_))))
                          (let* ((_decl109460_ _hd109435109455_)
                                 (_decls109462_ _tl109436109457_))
                            (declare (not safe))
                            (_K109434109452_ _decls109462_ _decl109460_)))
                        (let () (declare (not safe)) (_else109432109446_))))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_id109414_ _syntax?109415_)
        (let ((_eid109417_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _id109414_))
                '1
                gx#binding::t
                '#f))
              (_ht109418_
               (##structure-ref
                (gxc#current-compile-symbol-table)
                '2
                gxc#symbol-table::t
                '#f)))
          (if (interned-symbol? _eid109417_)
              '#!void
              (let ((__tmp111283
                     (let ((__tmp111284
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _eid109417_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp111284 _syntax?109415_))))
                (declare (not safe))
                (hash-put! _ht109418_ _eid109417_ __tmp111283))))))
    (define gxc#runtime-identifier=?
      (lambda (_id1109407_ _id2109408_)
        (letrec ((_symbol-e109410_
                  (lambda (_id109412_)
                    (if (let () (declare (not safe)) (symbol? _id109412_))
                        _id109412_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id _id109412_))))))
          (let ((__tmp111286
                 (let () (declare (not safe)) (_symbol-e109410_ _id1109407_)))
                (__tmp111285
                 (let () (declare (not safe)) (_symbol-e109410_ _id2109408_))))
            (declare (not safe))
            (eq? __tmp111286 __tmp111285)))))
    (define gxc#generate-runtime-binding-id
      (lambda (_id109385_)
        (let ((_$e109387_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _id109385_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _id109385_))
                   '#f)))
          (if _$e109387_
              ((lambda (_bind109390_)
                 (let ((_eid109392_
                        (##structure-ref _bind109390_ '1 gx#binding::t '#f))
                       (_ht109393_
                        (##structure-ref
                         (gxc#current-compile-symbol-table)
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (interned-symbol? _eid109392_)
                       _eid109392_
                       (let ((_$e109395_
                              (let ()
                                (declare (not safe))
                                (hash-get _ht109393_ _eid109392_))))
                         (if _$e109395_
                             (values _$e109395_)
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _bind109390_
                                    'gx#local-binding::t))
                                 (let ((_gid109398_
                                        (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-gensym-reference__0
                                           _eid109392_))))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _ht109393_
                                      _eid109392_
                                      _gid109398_))
                                   _gid109398_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _bind109390_
                                        'gx#module-binding::t))
                                     (let ((_gid109405_
                                            (let ((_$e109400_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _bind109390_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _$e109400_
                                                  ((lambda (_ns109403_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _ns109403_
                                                        '"#"
                                                        _eid109392_)))
                                                   _$e109400_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-gensym-reference__0
                                                     _eid109392_))))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _ht109393_
                                          _eid109392_
                                          _gid109405_))
                                       _gid109405_)
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Cannot compile reference to uninterned binding"
                                        _id109385_
                                        _eid109392_
                                        _bind109390_)))))))))
               _$e109387_)
              (if (interned-symbol?
                   (let () (declare (not safe)) (gx#stx-e _id109385_)))
                  (let () (declare (not safe)) (gx#stx-e _id109385_))
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Cannot compile reference to uninterned identifier"
                     _id109385_)))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_id109383_)
        (if (let () (declare (not safe)) (gx#identifier? _id109383_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _id109383_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-temporary__0)))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_sym109363_ _quote?109364_)
        (let* ((_ht109366_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e109368_
                (let ()
                  (declare (not safe))
                  (hash-get _ht109366_ _sym109363_))))
          (if _$e109368_
              (values _$e109368_)
              (let ((_g109371_
                     (if _quote?109364_
                         (let ((__tmp111287 (gxc#current-compile-timestamp)))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _sym109363_
                            '"__"
                            __tmp111287))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_" _sym109363_ '"_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _ht109366_ _sym109363_ _g109371_))
                _g109371_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_sym109376_)
        (let ((_quote?109378_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-gensym-reference__%
           _sym109376_
           _quote?109378_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g111289_
        (let ((_g111288_ (let () (declare (not safe)) (##length _g111289_))))
          (cond ((let () (declare (not safe)) (##fx= _g111288_ 1))
                 (apply (lambda (_sym109376_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__0
                             _sym109376_)))
                        _g111289_))
                ((let () (declare (not safe)) (##fx= _g111288_ 2))
                 (apply (lambda (_sym109380_ _quote?109381_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__%
                             _sym109380_
                             _quote?109381_)))
                        _g111289_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g111289_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_id109360_)
        (let ((__tmp111290
               (let ()
                 (declare (not safe))
                 (gx#core-identifier-key _id109360_))))
          (declare (not safe))
          (gxc#generate-runtime-identifier-key __tmp111290))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_key109320_)
        (if (interned-symbol? _key109320_)
            _key109320_
            (if (uninterned-symbol? _key109320_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _key109320_))
                (let* ((_key109321109328_ _key109320_)
                       (_E109323109332_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching" _key109321109328_))))
                       (_K109324109348_
                        (lambda (_mark109335_ _eid109336_)
                          (let ((_$e109338_
                                 (##structure-ref
                                  _mark109335_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _$e109338_
                                ((lambda (_ht109341_)
                                   (let ((_$e109343_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _ht109341_
                                             _eid109336_))))
                                     (if _$e109343_
                                         ((lambda (_id109346_)
                                            (if (interned-symbol? _id109346_)
                                                _id109346_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _id109346_))))
                                          _$e109343_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-identifier-key
                                            _eid109336_)))))
                                 _$e109338_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-identifier-key
                                   _eid109336_)))))))
                  (if (let () (declare (not safe)) (##pair? _key109321109328_))
                      (let ((_hd109325109351_
                             (let ()
                               (declare (not safe))
                               (##car _key109321109328_)))
                            (_tl109326109353_
                             (let ()
                               (declare (not safe))
                               (##cdr _key109321109328_))))
                        (let* ((_eid109356_ _hd109325109351_)
                               (_mark109358_ _tl109326109353_))
                          (declare (not safe))
                          (_K109324109348_ _mark109358_ _eid109356_)))
                      (let () (declare (not safe)) (_E109323109332_))))))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_top109307_)
        (if _top109307_
            (let ((_ns109309_
                   (##structure-ref
                    (let ((__tmp111291 (gx#current-expander-context)))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp111291))
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi109310_ (gx#current-expander-phi)))
              (if _ns109309_
                  (if (fxpositive? _phi109310_)
                      (let ((__tmp111293 (number->string _phi109310_))
                            (__tmp111292 (gensym)))
                        (declare (not safe))
                        (make-symbol__1
                         _ns109309_
                         '"["
                         __tmp111293
                         '"]#_"
                         __tmp111292
                         '"_"))
                      (let ((__tmp111294 (gensym)))
                        (declare (not safe))
                        (make-symbol__1 _ns109309_ '"#_" __tmp111294 '"_")))
                  (if (fxpositive? _phi109310_)
                      (let ((__tmp111296 (number->string _phi109310_))
                            (__tmp111295 (gensym)))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp111296
                         '"]#_"
                         __tmp111295
                         '"_"))
                      (let ((__tmp111297 (gensym)))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp111297 '"_")))))
            (let ((__tmp111298 (gensym)))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp111298 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_top109316_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-temporary__% _top109316_))))
    (define gxc#generate-runtime-temporary
      (lambda _g111300_
        (let ((_g111299_ (let () (declare (not safe)) (##length _g111300_))))
          (cond ((let () (declare (not safe)) (##fx= _g111299_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__0)))
                        _g111300_))
                ((let () (declare (not safe)) (##fx= _g111299_ 1))
                 (apply (lambda (_top109318_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__% _top109318_)))
                        _g111300_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g111300_))))))
    (define gxc#generate-runtime-empty
      (lambda (_self109303_ _stx109304_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_self109150_ _stx109151_)
        (letrec ((_simplify109153_
                  (lambda (_body109201_)
                    (let _lp109203_ ((_rest109205_ _body109201_)
                                     (_r109206_ '()))
                      (let* ((_rest109207109215_ _rest109205_)
                             (_else109209109223_
                              (lambda () (reverse _r109206_)))
                             (_K109211109291_
                              (lambda (_rest109226_ _hd109227_)
                                (let* ((_hd109228109244_ _hd109227_)
                                       (_else109232109252_
                                        (lambda ()
                                          (let ((__tmp111301
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd109227_
                                                         _r109206_))))
                                            (declare (not safe))
                                            (_lp109203_
                                             _rest109226_
                                             __tmp111301)))))
                                  (let ((_K109240109281_
                                         (lambda (_exprs109279_)
                                           (let ((__tmp111302
                                                  (let ()
                                                    (declare (not safe))
                                                    (foldr1 cons
                                                            _rest109226_
                                                            _exprs109279_))))
                                             (declare (not safe))
                                             (_lp109203_
                                              __tmp111302
                                              _r109206_))))
                                        (_K109235109265_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest109226_))
                                               (let ((__tmp111303
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _hd109227_
                                                              _r109206_))))
                                                 (declare (not safe))
                                                 (_lp109203_
                                                  _rest109226_
                                                  __tmp111303))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp109203_
                                                  _rest109226_
                                                  _r109206_)))))
                                        (_K109234109257_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest109226_))
                                               (let ((__tmp111304
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _hd109227_
                                                              _r109206_))))
                                                 (declare (not safe))
                                                 (_lp109203_
                                                  _rest109226_
                                                  __tmp111304))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp109203_
                                                  _rest109226_
                                                  _r109206_))))))
                                    (let ((_try-match109231109260_
                                           (lambda ()
                                             (if (let ()
                                                   (declare (not safe))
                                                   (symbol? _hd109228109244_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_K109234109257_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_else109232109252_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd109228109244_))
                                          (let ((_tl109242109286_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd109228109244_)))
                                                (_hd109241109284_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd109228109244_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd109241109284_
                                                         'begin))
                                                (let ((_exprs109289_
                                                       _tl109242109286_))
                                                  (declare (not safe))
                                                  (_K109240109281_
                                                   _exprs109289_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd109241109284_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl109242109286_))
                                                        (let ((_tl109239109273_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl109242109286_))))
                  (if (let () (declare (not safe)) (##null? _tl109239109273_))
                      (let () (declare (not safe)) (_K109235109265_))
                      (let () (declare (not safe)) (_try-match109231109260_))))
                (let () (declare (not safe)) (_try-match109231109260_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_try-match109231109260_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_try-match109231109260_)))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest109207109215_))
                            (let ((_hd109212109294_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest109207109215_)))
                                  (_tl109213109296_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest109207109215_))))
                              (let* ((_hd109299_ _hd109212109294_)
                                     (_rest109301_ _tl109213109296_))
                                (declare (not safe))
                                (_K109211109291_ _rest109301_ _hd109299_)))
                            (let ()
                              (declare (not safe))
                              (_else109209109223_))))))))
          (let* ((_g109155109165_
                  (lambda (_g109156109162_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g109156109162_))))
                 (_g109154109198_
                  (lambda (_g109156109168_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g109156109168_))
                        (let ((_e109158109170_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g109156109168_))))
                          (let ((_hd109159109173_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e109158109170_)))
                                (_tl109160109175_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e109158109170_))))
                            ((lambda (_L109178_)
                               (let* ((_body109193_
                                       (map (lambda (_g109188109190_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self109150_
                                                 _g109188109190_)))
                                            _L109178_))
                                      (_body109195_
                                       (let ()
                                         (declare (not safe))
                                         (_simplify109153_ _body109193_))))
                                 (if (fx= (length _body109195_) '1)
                                     (car _body109195_)
                                     (let ()
                                       (declare (not safe))
                                       (cons 'begin _body109195_)))))
                             _tl109160109175_)))
                        (let ()
                          (declare (not safe))
                          (_g109155109165_ _g109156109168_))))))
            (declare (not safe))
            (_g109154109198_ _stx109151_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_self109111_ _stx109112_)
        (let* ((_g109114109124_
                (lambda (_g109115109121_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g109115109121_))))
               (_g109113109147_
                (lambda (_g109115109127_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g109115109127_))
                      (let ((_e109117109129_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g109115109127_))))
                        (let ((_hd109118109132_
                               (let ()
                                 (declare (not safe))
                                 (##car _e109117109129_)))
                              (_tl109119109134_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e109117109129_))))
                          ((lambda (_L109137_)
                             (let ((__tmp111305
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax->datum _L109137_))))
                               (declare (not safe))
                               (cons 'begin __tmp111305)))
                           _tl109119109134_)))
                      (let ()
                        (declare (not safe))
                        (_g109114109124_ _g109115109127_))))))
          (declare (not safe))
          (_g109113109147_ _stx109112_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_self108875_ _stx108876_)
        (let* ((___stx109903109904_ _stx108876_)
               (_g108880108932_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx109903109904_)))))
          (let ((___kont109905109906_
                 (lambda (_L109093_ _L109094_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self108875_ _L109093_))))
                (___kont109907109908_
                 (lambda (_L109041_ _L109042_ _L109043_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self108875_ _L109041_))))
                (___kont109911109912_
                 (lambda (_L108961_ _L108962_)
                   (let ((_decls108977_ (map gx#syntax->datum _L108962_)))
                     (let ((__tmp111308
                            (lambda ()
                              (let ((__tmp111309
                                     (let ((__tmp111312
                                            (let ()
                                              (declare (not safe))
                                              (cons 'declare _decls108977_)))
                                           (__tmp111310
                                            (let ((__tmp111311
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self108875_
                                                      _L108961_))))
                                              (declare (not safe))
                                              (cons __tmp111311 '()))))
                                       (declare (not safe))
                                       (cons __tmp111312 __tmp111310))))
                                (declare (not safe))
                                (cons 'begin __tmp111309))))
                           (__tmp111306
                            (let ((__tmp111307 (gxc#current-compile-decls)))
                              (declare (not safe))
                              (foldr1 cons __tmp111307 _decls108977_))))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp111308
                        gxc#current-compile-decls
                        __tmp111306))))))
            (let* ((___match109958109959_
                    (lambda (_e108896108985_
                             _hd108897108988_
                             _tl108898108990_
                             _e108899108993_
                             _hd108900108996_
                             _tl108901108998_
                             _e108902109001_
                             _hd108903109004_
                             _tl108904109006_
                             ___splice109909109910_
                             _target108905109009_
                             _tl108907109011_)
                      (letrec ((_loop108908109014_
                                (lambda (_hd108906109017_ _param108912109019_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd108906109017_))
                                      (let ((_e108909109022_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd108906109017_))))
                                        (let ((_lp-tl108911109027_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e108909109022_)))
                                              (_lp-hd108910109025_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e108909109022_))))
                                          (let ((__tmp111313
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd108910109025_
                                                         _param108912109019_))))
                                            (declare (not safe))
                                            (_loop108908109014_
                                             _lp-tl108911109027_
                                             __tmp111313))))
                                      (let ((_param108913109030_
                                             (reverse _param108912109019_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl108901108998_))
                                            (let ((_e108914109033_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl108901108998_))))
                                              (let ((_tl108916109038_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e108914109033_)))
                                                    (_hd108915109036_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e108914109033_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl108916109038_))
                                                    (let ((_L109041_
                                                           _hd108915109036_)
                                                          (_L109042_
                                                           _param108913109030_)
                                                          (_L109043_
                                                           _hd108903109004_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _L109043_))
                       (let ((__tmp111314
                              (memq (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L109043_))
                                    gxc#gambit-annotations)))
                         (declare (not safe))
                         (not __tmp111314)))
                  (___kont109907109908_ _L109041_ _L109042_ _L109043_)
                  (___kont109911109912_ _hd108915109036_ _hd108900108996_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g108880108932_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g108880108932_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop108908109014_ _target108905109009_ '())))))
                   (___match109932109933_
                    (lambda (_e108884109069_
                             _hd108885109072_
                             _tl108886109074_
                             _e108887109077_
                             _hd108888109080_
                             _tl108889109082_
                             _e108890109085_
                             _hd108891109088_
                             _tl108892109090_)
                      (let ((_L109093_ _hd108891109088_)
                            (_L109094_ _hd108888109080_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L109094_))
                            (___kont109905109906_ _L109093_ _L109094_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd108888109080_))
                                (let ((_e108902109001_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd108888109080_))))
                                  (let ((_tl108904109006_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e108902109001_)))
                                        (_hd108903109004_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e108902109001_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl108904109006_))
                                        (let ((___splice109909109910_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl108904109006_
                                                  '0))))
                                          (let ((_tl108907109011_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice109909109910_
                                                    '1)))
                                                (_target108905109009_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice109909109910_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl108907109011_))
                                                (___match109958109959_
                                                 _e108884109069_
                                                 _hd108885109072_
                                                 _tl108886109074_
                                                 _e108887109077_
                                                 _hd108888109080_
                                                 _tl108889109082_
                                                 _e108902109001_
                                                 _hd108903109004_
                                                 _tl108904109006_
                                                 ___splice109909109910_
                                                 _target108905109009_
                                                 _tl108907109011_)
                                                (___kont109911109912_
                                                 _hd108891109088_
                                                 _hd108888109080_))))
                                        (___kont109911109912_
                                         _hd108891109088_
                                         _hd108888109080_))))
                                (___kont109911109912_
                                 _hd108891109088_
                                 _hd108888109080_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx109903109904_))
                  (let ((_e108884109069_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx109903109904_))))
                    (let ((_tl108886109074_
                           (let ()
                             (declare (not safe))
                             (##cdr _e108884109069_)))
                          (_hd108885109072_
                           (let ()
                             (declare (not safe))
                             (##car _e108884109069_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl108886109074_))
                          (let ((_e108887109077_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl108886109074_))))
                            (let ((_tl108889109082_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e108887109077_)))
                                  (_hd108888109080_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e108887109077_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl108889109082_))
                                  (let ((_e108890109085_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl108889109082_))))
                                    (let ((_tl108892109090_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e108890109085_)))
                                          (_hd108891109088_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e108890109085_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl108892109090_))
                                          (___match109932109933_
                                           _e108884109069_
                                           _hd108885109072_
                                           _tl108886109074_
                                           _e108887109077_
                                           _hd108888109080_
                                           _tl108889109082_
                                           _e108890109085_
                                           _hd108891109088_
                                           _tl108892109090_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd108888109080_))
                                              (let ((_e108902109001_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd108888109080_))))
                                                (let ((_tl108904109006_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e108902109001_)))
                                                      (_hd108903109004_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e108902109001_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl108904109006_))
                                                      (let ((___splice109909109910_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl108904109006_ '0))))
                (let ((_tl108907109011_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice109909109910_ '1)))
                      (_target108905109009_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice109909109910_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl108907109011_))
                      (___match109958109959_
                       _e108884109069_
                       _hd108885109072_
                       _tl108886109074_
                       _e108887109077_
                       _hd108888109080_
                       _tl108889109082_
                       _e108902109001_
                       _hd108903109004_
                       _tl108904109006_
                       ___splice109909109910_
                       _target108905109009_
                       _tl108907109011_)
                      (let () (declare (not safe)) (_g108880108932_)))))
              (let () (declare (not safe)) (_g108880108932_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g108880108932_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd108888109080_))
                                      (let ((_e108902109001_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd108888109080_))))
                                        (let ((_tl108904109006_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e108902109001_)))
                                              (_hd108903109004_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e108902109001_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl108904109006_))
                                              (let ((___splice109909109910_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl108904109006_
                                                        '0))))
                                                (let ((_tl108907109011_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice109909109910_
                                                          '1)))
                                                      (_target108905109009_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice109909109910_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl108907109011_))
                                                      (___match109958109959_
                                                       _e108884109069_
                                                       _hd108885109072_
                                                       _tl108886109074_
                                                       _e108887109077_
                                                       _hd108888109080_
                                                       _tl108889109082_
                                                       _e108902109001_
                                                       _hd108903109004_
                                                       _tl108904109006_
                                                       ___splice109909109910_
                                                       _target108905109009_
                                                       _tl108907109011_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g108880108932_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g108880108932_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g108880108932_))))))
                          (let () (declare (not safe)) (_g108880108932_)))))
                  (let () (declare (not safe)) (_g108880108932_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_self108834_ _stx108835_)
        (let* ((_g108837108847_
                (lambda (_g108838108844_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g108838108844_))))
               (_g108836108872_
                (lambda (_g108838108850_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g108838108850_))
                      (let ((_e108840108852_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g108838108850_))))
                        (let ((_hd108841108855_
                               (let ()
                                 (declare (not safe))
                                 (##car _e108840108852_)))
                              (_tl108842108857_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e108840108852_))))
                          ((lambda (_L108860_)
                             (let ((_decls108870_
                                    (map gx#syntax->datum _L108860_)))
                               (gxc#current-compile-decls
                                (let ((__tmp111315
                                       (gxc#current-compile-decls)))
                                  (declare (not safe))
                                  (foldr1 cons __tmp111315 _decls108870_)))
                               (let ()
                                 (declare (not safe))
                                 (cons 'declare _decls108870_))))
                           _tl108842108857_)))
                      (let ()
                        (declare (not safe))
                        (_g108837108847_ _g108838108850_))))))
          (declare (not safe))
          (_g108836108872_ _stx108835_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_self108580_ _stx108581_)
        (let* ((_g108583108600_
                (lambda (_g108584108597_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g108584108597_))))
               (_g108582108831_
                (lambda (_g108584108603_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g108584108603_))
                      (let ((_e108587108605_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g108584108603_))))
                        (let ((_hd108588108608_
                               (let ()
                                 (declare (not safe))
                                 (##car _e108587108605_)))
                              (_tl108589108610_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e108587108605_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl108589108610_))
                              (let ((_e108590108613_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl108589108610_))))
                                (let ((_hd108591108616_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e108590108613_)))
                                      (_tl108592108618_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e108590108613_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl108592108618_))
                                      (let ((_e108593108621_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl108592108618_))))
                                        (let ((_hd108594108624_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e108593108621_)))
                                              (_tl108595108626_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e108593108621_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl108595108626_))
                                              ((lambda (_L108629_ _L108630_)
                                                 (let* ((___stx110011110012_
                                                         _L108630_)
                                                        (_g108647108661_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx110011110012_)))))
                                                   (let ((___kont110013110014_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self108580_
                                                               _L108629_))))
                                                         (___kont110015110016_
                                                          (lambda (_L108793_)
                                                            (let ((_eid108802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _L108793_))))
                      (let ((_lambda-expr108803108805_
                             (let ()
                               (declare (not safe))
                               (gxc#apply-find-lambda-expression _L108629_))))
                        (if _lambda-expr108803108805_
                            (let* ((_lambda-expr108808_
                                    _lambda-expr108803108805_)
                                   (__tmp111316
                                    (gxc#current-compile-runtime-names)))
                              (declare (not safe))
                              (hash-put!
                               __tmp111316
                               _lambda-expr108808_
                               _eid108802_))
                            '#f))
                      (let ((__tmp111317
                             (let ((__tmp111318
                                    (let ((__tmp111319
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self108580_
                                              _L108629_))))
                                      (declare (not safe))
                                      (cons __tmp111319 '()))))
                               (declare (not safe))
                               (cons _eid108802_ __tmp111318))))
                        (declare (not safe))
                        (cons 'define __tmp111317)))))
                 (___kont110017110018_
                  (lambda ()
                    (let* ((_tmp108668_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_body108777_
                            (let _lp108670_ ((_rest108672_ _L108630_)
                                             (_k108673_ '0)
                                             (_r108674_ '()))
                              (let* ((___stx109981109982_ _rest108672_)
                                     (_g108679108696_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx109981109982_)))))
                                (let ((___kont109983109984_
                                       (lambda (_L108764_)
                                         (let ((__tmp111320
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _k108673_ '1))))
                                           (declare (not safe))
                                           (_lp108670_
                                            _L108764_
                                            __tmp111320
                                            _r108674_))))
                                      (___kont109985109986_
                                       (lambda (_L108737_ _L108738_)
                                         (let ((__tmp111327
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _k108673_ '1)))
                                               (__tmp111321
                                                (let ((__tmp111322
                                                       (let ((__tmp111323
                                                              (let ((__tmp111326
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-binding-id _L108738_)))
                            (__tmp111324
                             (let ((__tmp111325
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-values-ref
                                       _tmp108668_
                                       _k108673_
                                       _L108737_))))
                               (declare (not safe))
                               (cons __tmp111325 '()))))
                        (declare (not safe))
                        (cons __tmp111326 __tmp111324))))
                 (declare (not safe))
                 (cons 'define __tmp111323))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp111322
                                                        _r108674_))))
                                           (declare (not safe))
                                           (_lp108670_
                                            _L108737_
                                            __tmp111327
                                            __tmp111321))))
                                      (___kont109987109988_
                                       (lambda (_L108708_)
                                         (let ((__tmp111328
                                                (let ((__tmp111329
                                                       (let ((__tmp111330
                                                              (let ((__tmp111333
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-binding-id _L108708_)))
                            (__tmp111331
                             (let ((__tmp111332
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-values->list
                                       _tmp108668_
                                       _k108673_))))
                               (declare (not safe))
                               (cons __tmp111332 '()))))
                        (declare (not safe))
                        (cons __tmp111333 __tmp111331))))
                 (declare (not safe))
                 (cons 'define __tmp111330))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp111329 '()))))
                                           (declare (not safe))
                                           (foldl1 cons
                                                   __tmp111328
                                                   _r108674_))))
                                      (___kont109989109990_
                                       (lambda () (reverse _r108674_))))
                                  (let ((_g108677108724_
                                         (lambda ()
                                           (let ((_L108708_
                                                  ___stx109981109982_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier? _L108708_))
                                                 (___kont109987109988_
                                                  _L108708_)
                                                 (___kont109989109990_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx109981109982_))
                                        (let ((_e108682108753_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx109981109982_))))
                                          (let ((_tl108684108758_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108682108753_)))
                                                (_hd108683108756_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108682108753_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd108683108756_))
                                                (let ((_e108685108761_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd108683108756_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e108685108761_
                                                                '#f))
                                                      (___kont109983109984_
                                                       _tl108684108758_)
                                                      (___kont109985109986_
                                                       _tl108684108758_
                                                       _hd108683108756_)))
                                                (___kont109985109986_
                                                 _tl108684108758_
                                                 _hd108683108756_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g108677108724_)))))))))
                      (let ((__tmp111334
                             (let ((__tmp111337
                                    (let ((__tmp111338
                                           (let ((__tmp111339
                                                  (let ((__tmp111340
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self108580_
                                                            _L108629_))))
                                                    (declare (not safe))
                                                    (cons __tmp111340 '()))))
                                             (declare (not safe))
                                             (cons _tmp108668_ __tmp111339))))
                                      (declare (not safe))
                                      (cons 'define __tmp111338)))
                                   (__tmp111335
                                    (let ((__tmp111336
                                           (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-check-values
                                              _tmp108668_
                                              _L108630_
                                              _L108629_))))
                                      (declare (not safe))
                                      (cons __tmp111336 _body108777_))))
                               (declare (not safe))
                               (cons __tmp111337 __tmp111335))))
                        (declare (not safe))
                        (cons 'begin __tmp111334))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx110011110012_))
                                                         (let ((_e108649108815_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx110011110012_))))
                   (let ((_tl108651108820_
                          (let ()
                            (declare (not safe))
                            (##cdr _e108649108815_)))
                         (_hd108650108818_
                          (let ()
                            (declare (not safe))
                            (##car _e108649108815_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _hd108650108818_))
                         (let ((_e108652108823_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd108650108818_))))
                           (if (let ()
                                 (declare (not safe))
                                 (equal? _e108652108823_ '#f))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl108651108820_))
                                   (___kont110013110014_)
                                   (___kont110017110018_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl108651108820_))
                                   (___kont110015110016_ _hd108650108818_)
                                   (___kont110017110018_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl108651108820_))
                             (___kont110015110016_ _hd108650108818_)
                             (___kont110017110018_)))))
                 (___kont110017110018_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd108594108624_
                                               _hd108591108616_)
                                              (let ()
                                                (declare (not safe))
                                                (_g108583108600_
                                                 _g108584108603_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g108583108600_ _g108584108603_)))))
                              (let ()
                                (declare (not safe))
                                (_g108583108600_ _g108584108603_)))))
                      (let ()
                        (declare (not safe))
                        (_g108583108600_ _g108584108603_))))))
          (declare (not safe))
          (_g108582108831_ _stx108581_))))
    (define gxc#generate-runtime-check-values
      (lambda (_vals108556_ _hd108557_ _expr108558_)
        (let ((_$e108560_
               (let ()
                 (declare (not safe))
                 (gxc#apply-count-values _expr108558_))))
          (if _$e108560_
              ((lambda (_count108563_)
                 (let ((_len108565_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _hd108557_)))
                       (_cmp108566_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _hd108557_))
                            fx=
                            fx>=)))
                   (if (or (fx= _len108565_ '0)
                           (_cmp108566_ _count108563_ _len108565_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _expr108558_
                          _hd108557_)))))
               _$e108560_)
              (let* ((_len108571_
                      (let () (declare (not safe)) (gx#stx-length _hd108557_)))
                     (_cmp108573_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _hd108557_))
                          '##fx=
                          '##fx>=))
                     (_errmsg108575_
                      (string-append
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-list? _hd108557_))
                           '"Context expects "
                           '"Context expects at least ")
                       (number->string _len108571_)
                       '" values"))
                     (_count108577_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (and (let ((__tmp111341
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _hd108557_))))
                           (declare (not safe))
                           (not __tmp111341))
                         (fx= _len108571_ '0))
                    '#!void
                    (let ((__tmp111342
                           (let ((__tmp111361
                                  (let ((__tmp111362
                                         (let ((__tmp111363
                                                (let ((__tmp111364
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-values-count
                                                          _vals108556_))))
                                                  (declare (not safe))
                                                  (cons __tmp111364 '()))))
                                           (declare (not safe))
                                           (cons _count108577_ __tmp111363))))
                                    (declare (not safe))
                                    (cons __tmp111362 '())))
                                 (__tmp111343
                                  (let ((__tmp111344
                                         (let ((__tmp111345
                                                (let ((__tmp111350
                                                       (let ((__tmp111351
                                                              (let ((__tmp111352
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-decls-unsafe?))
                                 (let ((__tmp111353
                                        (let ((__tmp111354
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _len108571_ '()))))
                                          (declare (not safe))
                                          (cons _count108577_ __tmp111354))))
                                   (declare (not safe))
                                   (cons _cmp108573_ __tmp111353))
                                 (let ((__tmp111355
                                        (let ((__tmp111356
                                               (let ((__tmp111357
                                                      (let ((__tmp111358
                                                             (let ((__tmp111359
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp111360
                                   (let ()
                                     (declare (not safe))
                                     (cons _len108571_ '()))))
                              (declare (not safe))
                              (cons _count108577_ __tmp111360))))
                       (declare (not safe))
                       (cons _cmp108573_ __tmp111359))))
                (declare (not safe))
                (cons __tmp111358 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '(declare (not safe))
                                                       __tmp111357))))
                                          (declare (not safe))
                                          (cons '() __tmp111356))))
                                   (declare (not safe))
                                   (cons 'let __tmp111355)))))
                        (declare (not safe))
                        (cons __tmp111352 '()))))
                 (declare (not safe))
                 (cons 'not __tmp111351)))
              (__tmp111346
               (let ((__tmp111347
                      (let ((__tmp111348
                             (let ((__tmp111349
                                    (let ()
                                      (declare (not safe))
                                      (cons _count108577_ '()))))
                               (declare (not safe))
                               (cons _errmsg108575_ __tmp111349))))
                        (declare (not safe))
                        (cons 'error __tmp111348))))
                 (declare (not safe))
                 (cons __tmp111347 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp111350
                                                        __tmp111346))))
                                           (declare (not safe))
                                           (cons 'if __tmp111345))))
                                    (declare (not safe))
                                    (cons __tmp111344 '()))))
                             (declare (not safe))
                             (cons __tmp111361 __tmp111343))))
                      (declare (not safe))
                      (cons 'let __tmp111342))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_var108551_)
        (letrec ((_generate-inline108553_
                  (lambda ()
                    (let ((__tmp111365
                           (let ((__tmp111370
                                  (let ((__tmp111371
                                         (let ()
                                           (declare (not safe))
                                           (cons _var108551_ '()))))
                                    (declare (not safe))
                                    (cons '##values? __tmp111371)))
                                 (__tmp111366
                                  (let ((__tmp111368
                                         (let ((__tmp111369
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _var108551_ '()))))
                                           (declare (not safe))
                                           (cons '##vector-length
                                                 __tmp111369)))
                                        (__tmp111367
                                         (let ()
                                           (declare (not safe))
                                           (cons '1 '()))))
                                    (declare (not safe))
                                    (cons __tmp111368 __tmp111367))))
                             (declare (not safe))
                             (cons __tmp111370 __tmp111366))))
                      (declare (not safe))
                      (cons 'if __tmp111365)))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline108553_))
              (let ((__tmp111372
                     (let ((__tmp111373
                            (let ((__tmp111374
                                   (let ((__tmp111375
                                          (let ()
                                            (declare (not safe))
                                            (_generate-inline108553_))))
                                     (declare (not safe))
                                     (cons __tmp111375 '()))))
                              (declare (not safe))
                              (cons '(declare (not safe)) __tmp111374))))
                       (declare (not safe))
                       (cons '() __tmp111373))))
                (declare (not safe))
                (cons 'let __tmp111372))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_var108544_ _i108545_ _rest108546_)
        (letrec ((_generate-inline108548_
                  (lambda ()
                    (if (and (fx= _i108545_ '0)
                             (let ((__tmp111376
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _rest108546_))))
                               (declare (not safe))
                               (not __tmp111376)))
                        (let ((__tmp111377
                               (let ((__tmp111383
                                      (let ((__tmp111384
                                             (let ()
                                               (declare (not safe))
                                               (cons _var108544_ '()))))
                                        (declare (not safe))
                                        (cons '##values? __tmp111384)))
                                     (__tmp111378
                                      (let ((__tmp111380
                                             (let ((__tmp111381
                                                    (let ((__tmp111382
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '0 '()))))
                                                      (declare (not safe))
                                                      (cons _var108544_
                                                            __tmp111382))))
                                               (declare (not safe))
                                               (cons '##vector-ref
                                                     __tmp111381)))
                                            (__tmp111379
                                             (let ()
                                               (declare (not safe))
                                               (cons _var108544_ '()))))
                                        (declare (not safe))
                                        (cons __tmp111380 __tmp111379))))
                                 (declare (not safe))
                                 (cons __tmp111383 __tmp111378))))
                          (declare (not safe))
                          (cons 'if __tmp111377))
                        (let ((__tmp111385
                               (let ((__tmp111386
                                      (let ()
                                        (declare (not safe))
                                        (cons _i108545_ '()))))
                                 (declare (not safe))
                                 (cons _var108544_ __tmp111386))))
                          (declare (not safe))
                          (cons '##vector-ref __tmp111385))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline108548_))
              (let ((__tmp111387
                     (let ((__tmp111388
                            (let ((__tmp111389
                                   (let ((__tmp111390
                                          (let ()
                                            (declare (not safe))
                                            (_generate-inline108548_))))
                                     (declare (not safe))
                                     (cons __tmp111390 '()))))
                              (declare (not safe))
                              (cons '(declare (not safe)) __tmp111389))))
                       (declare (not safe))
                       (cons '() __tmp111388))))
                (declare (not safe))
                (cons 'let __tmp111387))))))
    (define gxc#generate-runtime-values->list
      (lambda (_var108541_ _i108542_)
        (if (fx= _i108542_ '0)
            (if (let ()
                  (declare (not safe))
                  (gxc#current-compile-decls-unsafe?))
                (let ((__tmp111391
                       (let ((__tmp111398
                              (let ((__tmp111399
                                     (let ()
                                       (declare (not safe))
                                       (cons _var108541_ '()))))
                                (declare (not safe))
                                (cons '##values? __tmp111399)))
                             (__tmp111392
                              (let ((__tmp111396
                                     (let ((__tmp111397
                                            (let ()
                                              (declare (not safe))
                                              (cons _var108541_ '()))))
                                       (declare (not safe))
                                       (cons '##vector->list __tmp111397)))
                                    (__tmp111393
                                     (let ((__tmp111394
                                            (let ((__tmp111395
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _var108541_ '()))))
                                              (declare (not safe))
                                              (cons 'list __tmp111395))))
                                       (declare (not safe))
                                       (cons __tmp111394 '()))))
                                (declare (not safe))
                                (cons __tmp111396 __tmp111393))))
                         (declare (not safe))
                         (cons __tmp111398 __tmp111392))))
                  (declare (not safe))
                  (cons 'if __tmp111391))
                (let ((__tmp111400
                       (let ((__tmp111401
                              (let ((__tmp111402
                                     (let ((__tmp111403
                                            (let ((__tmp111404
                                                   (let ((__tmp111411
                                                          (let ((__tmp111412
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _var108541_ '()))))
                    (declare (not safe))
                    (cons '##values? __tmp111412)))
                 (__tmp111405
                  (let ((__tmp111409
                         (let ((__tmp111410
                                (let ()
                                  (declare (not safe))
                                  (cons _var108541_ '()))))
                           (declare (not safe))
                           (cons '##vector->list __tmp111410)))
                        (__tmp111406
                         (let ((__tmp111407
                                (let ((__tmp111408
                                       (let ()
                                         (declare (not safe))
                                         (cons _var108541_ '()))))
                                  (declare (not safe))
                                  (cons 'list __tmp111408))))
                           (declare (not safe))
                           (cons __tmp111407 '()))))
                    (declare (not safe))
                    (cons __tmp111409 __tmp111406))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp111411
                                                           __tmp111405))))
                                              (declare (not safe))
                                              (cons 'if __tmp111404))))
                                       (declare (not safe))
                                       (cons __tmp111403 '()))))
                                (declare (not safe))
                                (cons '(declare (not safe)) __tmp111402))))
                         (declare (not safe))
                         (cons '() __tmp111401))))
                  (declare (not safe))
                  (cons 'let __tmp111400)))
            (if (fx= _i108542_ '1)
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (let ((__tmp111413
                           (let ((__tmp111420
                                  (let ((__tmp111421
                                         (let ()
                                           (declare (not safe))
                                           (cons _var108541_ '()))))
                                    (declare (not safe))
                                    (cons '##values? __tmp111421)))
                                 (__tmp111414
                                  (let ((__tmp111416
                                         (let ((__tmp111417
                                                (let ((__tmp111418
                                                       (let ((__tmp111419
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _var108541_ '()))))
                 (declare (not safe))
                 (cons '##vector->list __tmp111419))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp111418 '()))))
                                           (declare (not safe))
                                           (cons '##cdr __tmp111417)))
                                        (__tmp111415
                                         (let ()
                                           (declare (not safe))
                                           (cons ''() '()))))
                                    (declare (not safe))
                                    (cons __tmp111416 __tmp111415))))
                             (declare (not safe))
                             (cons __tmp111420 __tmp111414))))
                      (declare (not safe))
                      (cons 'if __tmp111413))
                    (let ((__tmp111422
                           (let ((__tmp111423
                                  (let ((__tmp111424
                                         (let ((__tmp111425
                                                (let ((__tmp111426
                                                       (let ((__tmp111433
                                                              (let ((__tmp111434
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _var108541_ '()))))
                        (declare (not safe))
                        (cons '##values? __tmp111434)))
                     (__tmp111427
                      (let ((__tmp111429
                             (let ((__tmp111430
                                    (let ((__tmp111431
                                           (let ((__tmp111432
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _var108541_ '()))))
                                             (declare (not safe))
                                             (cons '##vector->list
                                                   __tmp111432))))
                                      (declare (not safe))
                                      (cons __tmp111431 '()))))
                               (declare (not safe))
                               (cons '##cdr __tmp111430)))
                            (__tmp111428
                             (let () (declare (not safe)) (cons ''() '()))))
                        (declare (not safe))
                        (cons __tmp111429 __tmp111428))))
                 (declare (not safe))
                 (cons __tmp111433 __tmp111427))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'if __tmp111426))))
                                           (declare (not safe))
                                           (cons __tmp111425 '()))))
                                    (declare (not safe))
                                    (cons '(declare (not safe)) __tmp111424))))
                             (declare (not safe))
                             (cons '() __tmp111423))))
                      (declare (not safe))
                      (cons 'let __tmp111422)))
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (let ((__tmp111435
                           (let ((__tmp111437
                                  (let ((__tmp111438
                                         (let ()
                                           (declare (not safe))
                                           (cons _var108541_ '()))))
                                    (declare (not safe))
                                    (cons '##vector->list __tmp111438)))
                                 (__tmp111436
                                  (let ()
                                    (declare (not safe))
                                    (cons _i108542_ '()))))
                             (declare (not safe))
                             (cons __tmp111437 __tmp111436))))
                      (declare (not safe))
                      (cons '##list-tail __tmp111435))
                    (let ((__tmp111439
                           (let ((__tmp111440
                                  (let ((__tmp111441
                                         (let ((__tmp111442
                                                (let ((__tmp111443
                                                       (let ((__tmp111445
                                                              (let ((__tmp111446
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _var108541_ '()))))
                        (declare (not safe))
                        (cons '##vector->list __tmp111446)))
                     (__tmp111444
                      (let () (declare (not safe)) (cons _i108542_ '()))))
                 (declare (not safe))
                 (cons __tmp111445 __tmp111444))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '##list-tail
                                                        __tmp111443))))
                                           (declare (not safe))
                                           (cons __tmp111442 '()))))
                                    (declare (not safe))
                                    (cons '(declare (not safe)) __tmp111441))))
                             (declare (not safe))
                             (cons '() __tmp111440))))
                      (declare (not safe))
                      (cons 'let __tmp111439)))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_self108473_ _stx108474_)
        (let* ((_g108476108493_
                (lambda (_g108477108490_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g108477108490_))))
               (_g108475108538_
                (lambda (_g108477108496_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g108477108496_))
                      (let ((_e108480108498_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g108477108496_))))
                        (let ((_hd108481108501_
                               (let ()
                                 (declare (not safe))
                                 (##car _e108480108498_)))
                              (_tl108482108503_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e108480108498_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl108482108503_))
                              (let ((_e108483108506_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl108482108503_))))
                                (let ((_hd108484108509_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e108483108506_)))
                                      (_tl108485108511_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e108483108506_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl108485108511_))
                                      (let ((_e108486108514_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl108485108511_))))
                                        (let ((_hd108487108517_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e108486108514_)))
                                              (_tl108488108519_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e108486108514_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl108488108519_))
                                              ((lambda (_L108522_ _L108523_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-lambda-form
                                                    _self108473_
                                                    _L108523_
                                                    _L108522_)))
                                               _hd108487108517_
                                               _hd108484108509_)
                                              (let ()
                                                (declare (not safe))
                                                (_g108476108493_
                                                 _g108477108496_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g108476108493_ _g108477108496_)))))
                              (let ()
                                (declare (not safe))
                                (_g108476108493_ _g108477108496_)))))
                      (let ()
                        (declare (not safe))
                        (_g108476108493_ _g108477108496_))))))
          (declare (not safe))
          (_g108475108538_ _stx108474_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_self108432_ _hd108433_ _body108434_)
        (let* ((_hd108436_
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-lambda-head _hd108433_)))
               (_body108438_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _self108432_ _body108434_)))
               (_body108470_
                (let* ((_body108439108447_ _body108438_)
                       (_else108441108455_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (cons _body108438_ '()))))
                       (_K108443108460_
                        (lambda (_exprs108458_) _exprs108458_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _body108439108447_))
                      (let ((_hd108444108463_
                             (let ()
                               (declare (not safe))
                               (##car _body108439108447_)))
                            (_tl108445108465_
                             (let ()
                               (declare (not safe))
                               (##cdr _body108439108447_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _hd108444108463_ 'begin))
                            (let ((_exprs108468_ _tl108445108465_))
                              (declare (not safe))
                              (_K108443108460_ _exprs108468_))
                            (let ()
                              (declare (not safe))
                              (_else108441108455_))))
                      (let () (declare (not safe)) (_else108441108455_))))))
          (let ((__tmp111447
                 (let () (declare (not safe)) (cons _hd108436_ _body108470_))))
            (declare (not safe))
            (cons 'lambda __tmp111447)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_hd108430_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _hd108430_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_self106972_ _stx106973_)
        (letrec ((_dispatch-case?106975_
                  (lambda (_hd107660_ _body107661_)
                    (let* ((_form107663_
                            (let ((__tmp111448
                                   (let ()
                                     (declare (not safe))
                                     (cons _body107661_ '()))))
                              (declare (not safe))
                              (cons _hd107660_ __tmp111448)))
                           (___stx110043110044_ _form107663_)
                           (_g107668107825_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx110043110044_)))))
                      (let ((___kont110045110046_
                             (lambda (_L108350_ _L108351_ _L108352_) '#t))
                            (___kont110051110052_
                             (lambda (_L108138_
                                      _L108139_
                                      _L108140_
                                      _L108141_
                                      _L108142_
                                      _L108143_)
                               '#t))
                            (___kont110057110058_
                             (lambda (_L107933_ _L107934_ _L107935_ _L107936_)
                               '#t))
                            (___kont110059110060_ (lambda () '#f)))
                        (let* ((___match110184110185_
                                (lambda (_e107785107837_
                                         _hd107786107840_
                                         _tl107787107842_
                                         _e107788107845_
                                         _hd107789107848_
                                         _tl107790107850_
                                         _e107791107853_
                                         _hd107792107856_
                                         _tl107793107858_
                                         _e107794107861_
                                         _hd107795107864_
                                         _tl107796107866_
                                         _e107797107869_
                                         _hd107798107872_
                                         _tl107799107874_
                                         _e107800107877_
                                         _hd107801107880_
                                         _tl107802107882_
                                         _e107803107885_
                                         _hd107804107888_
                                         _tl107805107890_
                                         _e107806107893_
                                         _hd107807107896_
                                         _tl107808107898_
                                         _e107809107901_
                                         _hd107810107904_
                                         _tl107811107906_
                                         _e107812107909_
                                         _hd107813107912_
                                         _tl107814107914_
                                         _e107815107917_
                                         _hd107816107920_
                                         _tl107817107922_
                                         _e107818107925_
                                         _hd107819107928_
                                         _tl107820107930_)
                                  (let ((_L107933_ _hd107819107928_)
                                        (_L107934_ _hd107810107904_)
                                        (_L107935_ _hd107801107880_)
                                        (_L107936_ _hd107786107840_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _L107936_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _L107935_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L107936_
                                                _L107933_))
                                             (let ((__tmp111449
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#free-identifier=?
                                                       _L107934_
                                                       _L107936_))))
                                               (declare (not safe))
                                               (not __tmp111449)))
                                        (___kont110057110058_
                                         _L107933_
                                         _L107934_
                                         _L107935_
                                         _L107936_)
                                        (___kont110059110060_)))))
                               (___match110156110157_
                                (lambda (_e107785107837_
                                         _hd107786107840_
                                         _tl107787107842_
                                         _e107788107845_
                                         _hd107789107848_
                                         _tl107790107850_
                                         _e107791107853_
                                         _hd107792107856_
                                         _tl107793107858_
                                         _e107794107861_
                                         _hd107795107864_
                                         _tl107796107866_
                                         _e107797107869_
                                         _hd107798107872_
                                         _tl107799107874_
                                         _e107800107877_
                                         _hd107801107880_
                                         _tl107802107882_
                                         _e107803107885_
                                         _hd107804107888_
                                         _tl107805107890_
                                         _e107806107893_
                                         _hd107807107896_
                                         _tl107808107898_
                                         _e107809107901_
                                         _hd107810107904_
                                         _tl107811107906_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl107805107890_))
                                      (let ((_e107812107909_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl107805107890_))))
                                        (let ((_tl107814107914_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e107812107909_)))
                                              (_hd107813107912_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e107812107909_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd107813107912_))
                                              (let ((_e107815107917_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd107813107912_))))
                                                (let ((_tl107817107922_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e107815107917_)))
                                                      (_hd107816107920_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e107815107917_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd107816107920_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _hd107816107920_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl107817107922_))
                      (let ((_e107818107925_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl107817107922_))))
                        (let ((_tl107820107930_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e107818107925_)))
                              (_hd107819107928_
                               (let ()
                                 (declare (not safe))
                                 (##car _e107818107925_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl107820107930_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl107814107914_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl107790107850_))
                                      (___match110184110185_
                                       _e107785107837_
                                       _hd107786107840_
                                       _tl107787107842_
                                       _e107788107845_
                                       _hd107789107848_
                                       _tl107790107850_
                                       _e107791107853_
                                       _hd107792107856_
                                       _tl107793107858_
                                       _e107794107861_
                                       _hd107795107864_
                                       _tl107796107866_
                                       _e107797107869_
                                       _hd107798107872_
                                       _tl107799107874_
                                       _e107800107877_
                                       _hd107801107880_
                                       _tl107802107882_
                                       _e107803107885_
                                       _hd107804107888_
                                       _tl107805107890_
                                       _e107806107893_
                                       _hd107807107896_
                                       _tl107808107898_
                                       _e107809107901_
                                       _hd107810107904_
                                       _tl107811107906_
                                       _e107812107909_
                                       _hd107813107912_
                                       _tl107814107914_
                                       _e107815107917_
                                       _hd107816107920_
                                       _tl107817107922_
                                       _e107818107925_
                                       _hd107819107928_
                                       _tl107820107930_)
                                      (___kont110059110060_))
                                  (___kont110059110060_))
                              (___kont110059110060_))))
                      (___kont110059110060_))
                  (___kont110059110060_))
              (___kont110059110060_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont110059110060_))))
                                      (___kont110059110060_))))
                               (___match110086110087_
                                (lambda (_e107721107978_
                                         _hd107722107981_
                                         _tl107723107983_
                                         ___splice110053110054_
                                         _target107724107986_
                                         _tl107726107988_)
                                  (letrec ((_loop107727107991_
                                            (lambda (_hd107725107994_
                                                     _arg107731107996_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd107725107994_))
                                                  (let ((_e107728107999_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd107725107994_))))
                                                    (let ((_lp-tl107730108004_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e107728107999_)))
                                                          (_lp-hd107729108002_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e107728107999_))))
                                                      (let ((__tmp111450
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd107729108002_ _arg107731107996_))))
                (declare (not safe))
                (_loop107727107991_ _lp-tl107730108004_ __tmp111450))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg107732108007_
                                                         (reverse _arg107731107996_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl107723107983_))
                                                        (let ((_e107733108010_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl107723107983_))))
                  (let ((_tl107735108015_
                         (let () (declare (not safe)) (##cdr _e107733108010_)))
                        (_hd107734108013_
                         (let ()
                           (declare (not safe))
                           (##car _e107733108010_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd107734108013_))
                        (let ((_e107736108018_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd107734108013_))))
                          (let ((_tl107738108023_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107736108018_)))
                                (_hd107737108021_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107736108018_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd107737108021_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd107737108021_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl107738108023_))
                                        (let ((_e107739108026_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl107738108023_))))
                                          (let ((_tl107741108031_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107739108026_)))
                                                (_hd107740108029_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107739108026_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd107740108029_))
                                                (let ((_e107742108034_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd107740108029_))))
                                                  (let ((_tl107744108039_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e107742108034_)))
                                                        (_hd107743108037_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e107742108034_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd107743108037_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd107743108037_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl107744108039_))
                        (let ((_e107745108042_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl107744108039_))))
                          (let ((_tl107747108047_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107745108042_)))
                                (_hd107746108045_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107745108042_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl107747108047_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl107741108031_))
                                    (let ((_e107748108050_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl107741108031_))))
                                      (let ((_tl107750108055_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e107748108050_)))
                                            (_hd107749108053_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e107748108050_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd107749108053_))
                                            (let ((_e107751108058_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd107749108053_))))
                                              (let ((_tl107753108063_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e107751108058_)))
                                                    (_hd107752108061_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e107751108058_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd107752108061_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd107752108061_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl107753108063_))
                                                            (let ((_e107754108066_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl107753108063_))))
                      (let ((_tl107756108071_
                             (let ()
                               (declare (not safe))
                               (##cdr _e107754108066_)))
                            (_hd107755108069_
                             (let ()
                               (declare (not safe))
                               (##car _e107754108066_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl107756108071_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl107750108055_))
                                (if (fx>= (let ()
                                            (declare (not safe))
                                            (gx#stx-length _tl107750108055_))
                                          '1)
                                    (let ((___splice110055110056_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl107750108055_
                                              '1))))
                                      (let ((_tl107759108076_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice110055110056_
                                                '1)))
                                            (_target107757108074_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice110055110056_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl107759108076_))
                                            (let ((_e107766108079_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl107759108076_))))
                                              (let ((_tl107768108084_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e107766108079_)))
                                                    (_hd107767108082_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e107766108079_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd107767108082_))
                                                    (let ((_e107769108087_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd107767108082_))))
                                                      (let ((_tl107771108092_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e107769108087_)))
                    (_hd107770108090_
                     (let () (declare (not safe)) (##car _e107769108087_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd107770108090_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd107770108090_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl107771108092_))
                            (let ((_e107772108095_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl107771108092_))))
                              (let ((_tl107774108100_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e107772108095_)))
                                    (_hd107773108098_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e107772108095_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl107774108100_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl107768108084_))
                                        (letrec ((_loop107760108103_
                                                  (lambda (_hd107758108106_
                                                           _xarg107764108108_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd107758108106_))
                                                        (let ((_e107761108111_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd107758108106_))))
                  (let ((_lp-tl107763108116_
                         (let () (declare (not safe)) (##cdr _e107761108111_)))
                        (_lp-hd107762108114_
                         (let ()
                           (declare (not safe))
                           (##car _e107761108111_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd107762108114_))
                        (let ((_e107775108119_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd107762108114_))))
                          (let ((_tl107777108124_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107775108119_)))
                                (_hd107776108122_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107775108119_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd107776108122_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd107776108122_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl107777108124_))
                                        (let ((_e107778108127_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl107777108124_))))
                                          (let ((_tl107780108132_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107778108127_)))
                                                (_hd107779108130_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107778108127_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl107780108132_))
                                                (let ((__tmp111451
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd107779108130_
                                                               _xarg107764108108_))))
                                                  (declare (not safe))
                                                  (_loop107760108103_
                                                   _lp-tl107763108116_
                                                   __tmp111451))
                                                (___match110156110157_
                                                 _e107721107978_
                                                 _hd107722107981_
                                                 _tl107723107983_
                                                 _e107733108010_
                                                 _hd107734108013_
                                                 _tl107735108015_
                                                 _e107736108018_
                                                 _hd107737108021_
                                                 _tl107738108023_
                                                 _e107739108026_
                                                 _hd107740108029_
                                                 _tl107741108031_
                                                 _e107742108034_
                                                 _hd107743108037_
                                                 _tl107744108039_
                                                 _e107745108042_
                                                 _hd107746108045_
                                                 _tl107747108047_
                                                 _e107748108050_
                                                 _hd107749108053_
                                                 _tl107750108055_
                                                 _e107751108058_
                                                 _hd107752108061_
                                                 _tl107753108063_
                                                 _e107754108066_
                                                 _hd107755108069_
                                                 _tl107756108071_))))
                                        (___match110156110157_
                                         _e107721107978_
                                         _hd107722107981_
                                         _tl107723107983_
                                         _e107733108010_
                                         _hd107734108013_
                                         _tl107735108015_
                                         _e107736108018_
                                         _hd107737108021_
                                         _tl107738108023_
                                         _e107739108026_
                                         _hd107740108029_
                                         _tl107741108031_
                                         _e107742108034_
                                         _hd107743108037_
                                         _tl107744108039_
                                         _e107745108042_
                                         _hd107746108045_
                                         _tl107747108047_
                                         _e107748108050_
                                         _hd107749108053_
                                         _tl107750108055_
                                         _e107751108058_
                                         _hd107752108061_
                                         _tl107753108063_
                                         _e107754108066_
                                         _hd107755108069_
                                         _tl107756108071_))
                                    (___match110156110157_
                                     _e107721107978_
                                     _hd107722107981_
                                     _tl107723107983_
                                     _e107733108010_
                                     _hd107734108013_
                                     _tl107735108015_
                                     _e107736108018_
                                     _hd107737108021_
                                     _tl107738108023_
                                     _e107739108026_
                                     _hd107740108029_
                                     _tl107741108031_
                                     _e107742108034_
                                     _hd107743108037_
                                     _tl107744108039_
                                     _e107745108042_
                                     _hd107746108045_
                                     _tl107747108047_
                                     _e107748108050_
                                     _hd107749108053_
                                     _tl107750108055_
                                     _e107751108058_
                                     _hd107752108061_
                                     _tl107753108063_
                                     _e107754108066_
                                     _hd107755108069_
                                     _tl107756108071_))
                                (___match110156110157_
                                 _e107721107978_
                                 _hd107722107981_
                                 _tl107723107983_
                                 _e107733108010_
                                 _hd107734108013_
                                 _tl107735108015_
                                 _e107736108018_
                                 _hd107737108021_
                                 _tl107738108023_
                                 _e107739108026_
                                 _hd107740108029_
                                 _tl107741108031_
                                 _e107742108034_
                                 _hd107743108037_
                                 _tl107744108039_
                                 _e107745108042_
                                 _hd107746108045_
                                 _tl107747108047_
                                 _e107748108050_
                                 _hd107749108053_
                                 _tl107750108055_
                                 _e107751108058_
                                 _hd107752108061_
                                 _tl107753108063_
                                 _e107754108066_
                                 _hd107755108069_
                                 _tl107756108071_))))
                        (___match110156110157_
                         _e107721107978_
                         _hd107722107981_
                         _tl107723107983_
                         _e107733108010_
                         _hd107734108013_
                         _tl107735108015_
                         _e107736108018_
                         _hd107737108021_
                         _tl107738108023_
                         _e107739108026_
                         _hd107740108029_
                         _tl107741108031_
                         _e107742108034_
                         _hd107743108037_
                         _tl107744108039_
                         _e107745108042_
                         _hd107746108045_
                         _tl107747108047_
                         _e107748108050_
                         _hd107749108053_
                         _tl107750108055_
                         _e107751108058_
                         _hd107752108061_
                         _tl107753108063_
                         _e107754108066_
                         _hd107755108069_
                         _tl107756108071_))))
                (let ((_xarg107765108135_ (reverse _xarg107764108108_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl107735108015_))
                      (let ((_L108138_ _hd107773108098_)
                            (_L108139_ _xarg107765108135_)
                            (_L108140_ _hd107755108069_)
                            (_L108141_ _hd107746108045_)
                            (_L108142_ _tl107726107988_)
                            (_L108143_ _arg107732108007_))
                        (if (and (let ((__tmp111452
                                        (let ((__tmp111453
                                               (lambda (_g108186108189_
                                                        _g108187108191_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g108186108189_
                                                         _g108187108191_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp111453 '() _L108143_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp111452))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L108142_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L108141_ 'apply))
                                 (fx= (length (let ((__tmp111454
                                                     (lambda (_g108193108196_
                                                              _g108194108198_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g108193108196_
                                                               _g108194108198_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp111454
                                                        '()
                                                        _L108143_)))
                                      (length (let ((__tmp111455
                                                     (lambda (_g108200108203_
                                                              _g108201108205_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g108200108203_
                                                               _g108201108205_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp111455
                                                        '()
                                                        _L108139_))))
                                 (let ((__tmp111458
                                        (let ((__tmp111459
                                               (lambda (_g108207108210_
                                                        _g108208108212_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g108207108210_
                                                         _g108208108212_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp111459 '() _L108143_)))
                                       (__tmp111456
                                        (let ((__tmp111457
                                               (lambda (_g108214108217_
                                                        _g108215108219_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g108214108217_
                                                         _g108215108219_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp111457 '() _L108139_))))
                                   (declare (not safe))
                                   (andmap2 gx#free-identifier=?
                                            __tmp111458
                                            __tmp111456))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L108142_ _L108138_))
                                 (let ((__tmp111460
                                        (let ((__tmp111464
                                               (lambda (_g108221108223_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#free-identifier=?
                                                    _g108221108223_
                                                    _L108140_))))
                                              (__tmp111461
                                               (let ((__tmp111463
                                                      (lambda (_g108225108228_
                                                               _g108226108230_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g108225108228_
                                                                _g108226108230_))))
                                                     (__tmp111462
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L108142_ '()))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp111463
                                                         __tmp111462
                                                         _L108143_))))
                                          (declare (not safe))
                                          (find __tmp111464 __tmp111461))))
                                   (declare (not safe))
                                   (not __tmp111460)))
                            (___kont110051110052_
                             _L108138_
                             _L108139_
                             _L108140_
                             _L108141_
                             _L108142_
                             _L108143_)
                            (___match110156110157_
                             _e107721107978_
                             _hd107722107981_
                             _tl107723107983_
                             _e107733108010_
                             _hd107734108013_
                             _tl107735108015_
                             _e107736108018_
                             _hd107737108021_
                             _tl107738108023_
                             _e107739108026_
                             _hd107740108029_
                             _tl107741108031_
                             _e107742108034_
                             _hd107743108037_
                             _tl107744108039_
                             _e107745108042_
                             _hd107746108045_
                             _tl107747108047_
                             _e107748108050_
                             _hd107749108053_
                             _tl107750108055_
                             _e107751108058_
                             _hd107752108061_
                             _tl107753108063_
                             _e107754108066_
                             _hd107755108069_
                             _tl107756108071_)))
                      (___match110156110157_
                       _e107721107978_
                       _hd107722107981_
                       _tl107723107983_
                       _e107733108010_
                       _hd107734108013_
                       _tl107735108015_
                       _e107736108018_
                       _hd107737108021_
                       _tl107738108023_
                       _e107739108026_
                       _hd107740108029_
                       _tl107741108031_
                       _e107742108034_
                       _hd107743108037_
                       _tl107744108039_
                       _e107745108042_
                       _hd107746108045_
                       _tl107747108047_
                       _e107748108050_
                       _hd107749108053_
                       _tl107750108055_
                       _e107751108058_
                       _hd107752108061_
                       _tl107753108063_
                       _e107754108066_
                       _hd107755108069_
                       _tl107756108071_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop107760108103_
                                             _target107757108074_
                                             '())))
                                        (___match110156110157_
                                         _e107721107978_
                                         _hd107722107981_
                                         _tl107723107983_
                                         _e107733108010_
                                         _hd107734108013_
                                         _tl107735108015_
                                         _e107736108018_
                                         _hd107737108021_
                                         _tl107738108023_
                                         _e107739108026_
                                         _hd107740108029_
                                         _tl107741108031_
                                         _e107742108034_
                                         _hd107743108037_
                                         _tl107744108039_
                                         _e107745108042_
                                         _hd107746108045_
                                         _tl107747108047_
                                         _e107748108050_
                                         _hd107749108053_
                                         _tl107750108055_
                                         _e107751108058_
                                         _hd107752108061_
                                         _tl107753108063_
                                         _e107754108066_
                                         _hd107755108069_
                                         _tl107756108071_))
                                    (___match110156110157_
                                     _e107721107978_
                                     _hd107722107981_
                                     _tl107723107983_
                                     _e107733108010_
                                     _hd107734108013_
                                     _tl107735108015_
                                     _e107736108018_
                                     _hd107737108021_
                                     _tl107738108023_
                                     _e107739108026_
                                     _hd107740108029_
                                     _tl107741108031_
                                     _e107742108034_
                                     _hd107743108037_
                                     _tl107744108039_
                                     _e107745108042_
                                     _hd107746108045_
                                     _tl107747108047_
                                     _e107748108050_
                                     _hd107749108053_
                                     _tl107750108055_
                                     _e107751108058_
                                     _hd107752108061_
                                     _tl107753108063_
                                     _e107754108066_
                                     _hd107755108069_
                                     _tl107756108071_))))
                            (___match110156110157_
                             _e107721107978_
                             _hd107722107981_
                             _tl107723107983_
                             _e107733108010_
                             _hd107734108013_
                             _tl107735108015_
                             _e107736108018_
                             _hd107737108021_
                             _tl107738108023_
                             _e107739108026_
                             _hd107740108029_
                             _tl107741108031_
                             _e107742108034_
                             _hd107743108037_
                             _tl107744108039_
                             _e107745108042_
                             _hd107746108045_
                             _tl107747108047_
                             _e107748108050_
                             _hd107749108053_
                             _tl107750108055_
                             _e107751108058_
                             _hd107752108061_
                             _tl107753108063_
                             _e107754108066_
                             _hd107755108069_
                             _tl107756108071_))
                        (___match110156110157_
                         _e107721107978_
                         _hd107722107981_
                         _tl107723107983_
                         _e107733108010_
                         _hd107734108013_
                         _tl107735108015_
                         _e107736108018_
                         _hd107737108021_
                         _tl107738108023_
                         _e107739108026_
                         _hd107740108029_
                         _tl107741108031_
                         _e107742108034_
                         _hd107743108037_
                         _tl107744108039_
                         _e107745108042_
                         _hd107746108045_
                         _tl107747108047_
                         _e107748108050_
                         _hd107749108053_
                         _tl107750108055_
                         _e107751108058_
                         _hd107752108061_
                         _tl107753108063_
                         _e107754108066_
                         _hd107755108069_
                         _tl107756108071_))
                    (___match110156110157_
                     _e107721107978_
                     _hd107722107981_
                     _tl107723107983_
                     _e107733108010_
                     _hd107734108013_
                     _tl107735108015_
                     _e107736108018_
                     _hd107737108021_
                     _tl107738108023_
                     _e107739108026_
                     _hd107740108029_
                     _tl107741108031_
                     _e107742108034_
                     _hd107743108037_
                     _tl107744108039_
                     _e107745108042_
                     _hd107746108045_
                     _tl107747108047_
                     _e107748108050_
                     _hd107749108053_
                     _tl107750108055_
                     _e107751108058_
                     _hd107752108061_
                     _tl107753108063_
                     _e107754108066_
                     _hd107755108069_
                     _tl107756108071_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match110156110157_
                                                     _e107721107978_
                                                     _hd107722107981_
                                                     _tl107723107983_
                                                     _e107733108010_
                                                     _hd107734108013_
                                                     _tl107735108015_
                                                     _e107736108018_
                                                     _hd107737108021_
                                                     _tl107738108023_
                                                     _e107739108026_
                                                     _hd107740108029_
                                                     _tl107741108031_
                                                     _e107742108034_
                                                     _hd107743108037_
                                                     _tl107744108039_
                                                     _e107745108042_
                                                     _hd107746108045_
                                                     _tl107747108047_
                                                     _e107748108050_
                                                     _hd107749108053_
                                                     _tl107750108055_
                                                     _e107751108058_
                                                     _hd107752108061_
                                                     _tl107753108063_
                                                     _e107754108066_
                                                     _hd107755108069_
                                                     _tl107756108071_))))
                                            (___match110156110157_
                                             _e107721107978_
                                             _hd107722107981_
                                             _tl107723107983_
                                             _e107733108010_
                                             _hd107734108013_
                                             _tl107735108015_
                                             _e107736108018_
                                             _hd107737108021_
                                             _tl107738108023_
                                             _e107739108026_
                                             _hd107740108029_
                                             _tl107741108031_
                                             _e107742108034_
                                             _hd107743108037_
                                             _tl107744108039_
                                             _e107745108042_
                                             _hd107746108045_
                                             _tl107747108047_
                                             _e107748108050_
                                             _hd107749108053_
                                             _tl107750108055_
                                             _e107751108058_
                                             _hd107752108061_
                                             _tl107753108063_
                                             _e107754108066_
                                             _hd107755108069_
                                             _tl107756108071_))))
                                    (___match110156110157_
                                     _e107721107978_
                                     _hd107722107981_
                                     _tl107723107983_
                                     _e107733108010_
                                     _hd107734108013_
                                     _tl107735108015_
                                     _e107736108018_
                                     _hd107737108021_
                                     _tl107738108023_
                                     _e107739108026_
                                     _hd107740108029_
                                     _tl107741108031_
                                     _e107742108034_
                                     _hd107743108037_
                                     _tl107744108039_
                                     _e107745108042_
                                     _hd107746108045_
                                     _tl107747108047_
                                     _e107748108050_
                                     _hd107749108053_
                                     _tl107750108055_
                                     _e107751108058_
                                     _hd107752108061_
                                     _tl107753108063_
                                     _e107754108066_
                                     _hd107755108069_
                                     _tl107756108071_))
                                (___match110156110157_
                                 _e107721107978_
                                 _hd107722107981_
                                 _tl107723107983_
                                 _e107733108010_
                                 _hd107734108013_
                                 _tl107735108015_
                                 _e107736108018_
                                 _hd107737108021_
                                 _tl107738108023_
                                 _e107739108026_
                                 _hd107740108029_
                                 _tl107741108031_
                                 _e107742108034_
                                 _hd107743108037_
                                 _tl107744108039_
                                 _e107745108042_
                                 _hd107746108045_
                                 _tl107747108047_
                                 _e107748108050_
                                 _hd107749108053_
                                 _tl107750108055_
                                 _e107751108058_
                                 _hd107752108061_
                                 _tl107753108063_
                                 _e107754108066_
                                 _hd107755108069_
                                 _tl107756108071_))
                            (___kont110059110060_))))
                    (___kont110059110060_))
                (___kont110059110060_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont110059110060_))))
                                            (___kont110059110060_))))
                                    (___kont110059110060_))
                                (___kont110059110060_))))
                        (___kont110059110060_))
                    (___kont110059110060_))
                (___kont110059110060_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont110059110060_))))
                                        (___kont110059110060_))
                                    (___kont110059110060_))
                                (___kont110059110060_))))
                        (___kont110059110060_))))
                (___kont110059110060_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop107727107991_
                                       _target107724107986_
                                       '())))))
                               (___match110074110075_
                                (lambda (_e107673108238_
                                         _hd107674108241_
                                         _tl107675108243_
                                         ___splice110047110048_
                                         _target107676108246_
                                         _tl107678108248_)
                                  (letrec ((_loop107679108251_
                                            (lambda (_hd107677108254_
                                                     _arg107683108256_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd107677108254_))
                                                  (let ((_e107680108259_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd107677108254_))))
                                                    (let ((_lp-tl107682108264_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e107680108259_)))
                                                          (_lp-hd107681108262_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e107680108259_))))
                                                      (let ((__tmp111465
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd107681108262_ _arg107683108256_))))
                (declare (not safe))
                (_loop107679108251_ _lp-tl107682108264_ __tmp111465))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg107684108267_
                                                         (reverse _arg107683108256_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl107675108243_))
                                                        (let ((_e107685108270_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl107675108243_))))
                  (let ((_tl107687108275_
                         (let () (declare (not safe)) (##cdr _e107685108270_)))
                        (_hd107686108273_
                         (let ()
                           (declare (not safe))
                           (##car _e107685108270_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd107686108273_))
                        (let ((_e107688108278_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd107686108273_))))
                          (let ((_tl107690108283_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107688108278_)))
                                (_hd107689108281_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107688108278_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd107689108281_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd107689108281_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl107690108283_))
                                        (let ((_e107691108286_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl107690108283_))))
                                          (let ((_tl107693108291_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107691108286_)))
                                                (_hd107692108289_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107691108286_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd107692108289_))
                                                (let ((_e107694108294_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd107692108289_))))
                                                  (let ((_tl107696108299_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e107694108294_)))
                                                        (_hd107695108297_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e107694108294_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd107695108297_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd107695108297_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl107696108299_))
                        (let ((_e107697108302_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl107696108299_))))
                          (let ((_tl107699108307_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107697108302_)))
                                (_hd107698108305_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107697108302_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl107699108307_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl107693108291_))
                                    (let ((___splice110049110050_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl107693108291_
                                              '0))))
                                      (let ((_tl107702108312_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice110049110050_
                                                '1)))
                                            (_target107700108310_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice110049110050_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl107702108312_))
                                            (letrec ((_loop107703108315_
                                                      (lambda (_hd107701108318_
                                                               _xarg107707108320_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _hd107701108318_))
                                                            (let ((_e107704108323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd107701108318_))))
                      (let ((_lp-tl107706108328_
                             (let ()
                               (declare (not safe))
                               (##cdr _e107704108323_)))
                            (_lp-hd107705108326_
                             (let ()
                               (declare (not safe))
                               (##car _e107704108323_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _lp-hd107705108326_))
                            (let ((_e107709108331_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _lp-hd107705108326_))))
                              (let ((_tl107711108336_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e107709108331_)))
                                    (_hd107710108334_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e107709108331_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd107710108334_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#ref _hd107710108334_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl107711108336_))
                                            (let ((_e107712108339_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl107711108336_))))
                                              (let ((_tl107714108344_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e107712108339_)))
                                                    (_hd107713108342_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e107712108339_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl107714108344_))
                                                    (let ((__tmp111466
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd107713108342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xarg107707108320_))))
              (declare (not safe))
              (_loop107703108315_ _lp-tl107706108328_ __tmp111466))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match110086110087_
                                                     _e107673108238_
                                                     _hd107674108241_
                                                     _tl107675108243_
                                                     ___splice110047110048_
                                                     _target107676108246_
                                                     _tl107678108248_))))
                                            (___match110086110087_
                                             _e107673108238_
                                             _hd107674108241_
                                             _tl107675108243_
                                             ___splice110047110048_
                                             _target107676108246_
                                             _tl107678108248_))
                                        (___match110086110087_
                                         _e107673108238_
                                         _hd107674108241_
                                         _tl107675108243_
                                         ___splice110047110048_
                                         _target107676108246_
                                         _tl107678108248_))
                                    (___match110086110087_
                                     _e107673108238_
                                     _hd107674108241_
                                     _tl107675108243_
                                     ___splice110047110048_
                                     _target107676108246_
                                     _tl107678108248_))))
                            (___match110086110087_
                             _e107673108238_
                             _hd107674108241_
                             _tl107675108243_
                             ___splice110047110048_
                             _target107676108246_
                             _tl107678108248_))))
                    (let ((_xarg107708108347_ (reverse _xarg107707108320_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl107687108275_))
                          (let ((_L108350_ _xarg107708108347_)
                                (_L108351_ _hd107698108305_)
                                (_L108352_ _arg107684108267_))
                            (if (and (let ((__tmp111467
                                            (let ((__tmp111468
                                                   (lambda (_g108380108383_
                                                            _g108381108385_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g108380108383_
                                                             _g108381108385_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp111468
                                                      '()
                                                      _L108352_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp111467))
                                     (fx= (length (let ((__tmp111469
                                                         (lambda (_g108387108390_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g108388108392_)
                   (let ()
                     (declare (not safe))
                     (cons _g108387108390_ _g108388108392_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp111469
                                                            '()
                                                            _L108352_)))
                                          (length (let ((__tmp111470
                                                         (lambda (_g108394108397_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g108395108399_)
                   (let ()
                     (declare (not safe))
                     (cons _g108394108397_ _g108395108399_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp111470
                                                            '()
                                                            _L108350_))))
                                     (let ((__tmp111473
                                            (let ((__tmp111474
                                                   (lambda (_g108401108404_
                                                            _g108402108406_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g108401108404_
                                                             _g108402108406_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp111474
                                                      '()
                                                      _L108352_)))
                                           (__tmp111471
                                            (let ((__tmp111472
                                                   (lambda (_g108408108411_
                                                            _g108409108413_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g108408108411_
                                                             _g108409108413_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp111472
                                                      '()
                                                      _L108350_))))
                                       (declare (not safe))
                                       (andmap2 gx#free-identifier=?
                                                __tmp111473
                                                __tmp111471))
                                     (let ((__tmp111475
                                            (let ((__tmp111478
                                                   (lambda (_g108415108417_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _g108415108417_
                                                        _L108351_))))
                                                  (__tmp111476
                                                   (let ((__tmp111477
                                                          (lambda (_g108419108422_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g108420108424_)
                    (let ()
                      (declare (not safe))
                      (cons _g108419108422_ _g108420108424_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr1 __tmp111477
                                                             '()
                                                             _L108352_))))
                                              (declare (not safe))
                                              (find __tmp111478 __tmp111476))))
                                       (declare (not safe))
                                       (not __tmp111475)))
                                (___kont110045110046_
                                 _L108350_
                                 _L108351_
                                 _L108352_)
                                (___match110086110087_
                                 _e107673108238_
                                 _hd107674108241_
                                 _tl107675108243_
                                 ___splice110047110048_
                                 _target107676108246_
                                 _tl107678108248_)))
                          (___match110086110087_
                           _e107673108238_
                           _hd107674108241_
                           _tl107675108243_
                           ___splice110047110048_
                           _target107676108246_
                           _tl107678108248_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop107703108315_
                                                 _target107700108310_
                                                 '())))
                                            (___match110086110087_
                                             _e107673108238_
                                             _hd107674108241_
                                             _tl107675108243_
                                             ___splice110047110048_
                                             _target107676108246_
                                             _tl107678108248_))))
                                    (___match110086110087_
                                     _e107673108238_
                                     _hd107674108241_
                                     _tl107675108243_
                                     ___splice110047110048_
                                     _target107676108246_
                                     _tl107678108248_))
                                (___match110086110087_
                                 _e107673108238_
                                 _hd107674108241_
                                 _tl107675108243_
                                 ___splice110047110048_
                                 _target107676108246_
                                 _tl107678108248_))))
                        (___match110086110087_
                         _e107673108238_
                         _hd107674108241_
                         _tl107675108243_
                         ___splice110047110048_
                         _target107676108246_
                         _tl107678108248_))
                    (___match110086110087_
                     _e107673108238_
                     _hd107674108241_
                     _tl107675108243_
                     ___splice110047110048_
                     _target107676108246_
                     _tl107678108248_))
                (___match110086110087_
                 _e107673108238_
                 _hd107674108241_
                 _tl107675108243_
                 ___splice110047110048_
                 _target107676108246_
                 _tl107678108248_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match110086110087_
                                                 _e107673108238_
                                                 _hd107674108241_
                                                 _tl107675108243_
                                                 ___splice110047110048_
                                                 _target107676108246_
                                                 _tl107678108248_))))
                                        (___match110086110087_
                                         _e107673108238_
                                         _hd107674108241_
                                         _tl107675108243_
                                         ___splice110047110048_
                                         _target107676108246_
                                         _tl107678108248_))
                                    (___match110086110087_
                                     _e107673108238_
                                     _hd107674108241_
                                     _tl107675108243_
                                     ___splice110047110048_
                                     _target107676108246_
                                     _tl107678108248_))
                                (___match110086110087_
                                 _e107673108238_
                                 _hd107674108241_
                                 _tl107675108243_
                                 ___splice110047110048_
                                 _target107676108246_
                                 _tl107678108248_))))
                        (___match110086110087_
                         _e107673108238_
                         _hd107674108241_
                         _tl107675108243_
                         ___splice110047110048_
                         _target107676108246_
                         _tl107678108248_))))
                (___match110086110087_
                 _e107673108238_
                 _hd107674108241_
                 _tl107675108243_
                 ___splice110047110048_
                 _target107676108246_
                 _tl107678108248_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop107679108251_
                                       _target107676108246_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx110043110044_))
                              (let ((_e107673108238_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx110043110044_))))
                                (let ((_tl107675108243_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e107673108238_)))
                                      (_hd107674108241_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e107673108238_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd107674108241_))
                                      (let ((___splice110047110048_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd107674108241_
                                                '0))))
                                        (let ((_tl107678108248_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice110047110048_
                                                  '1)))
                                              (_target107676108246_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice110047110048_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl107678108248_))
                                              (___match110074110075_
                                               _e107673108238_
                                               _hd107674108241_
                                               _tl107675108243_
                                               ___splice110047110048_
                                               _target107676108246_
                                               _tl107678108248_)
                                              (___match110086110087_
                                               _e107673108238_
                                               _hd107674108241_
                                               _tl107675108243_
                                               ___splice110047110048_
                                               _target107676108246_
                                               _tl107678108248_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl107675108243_))
                                          (let ((_e107788107845_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl107675108243_))))
                                            (let ((_tl107790107850_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e107788107845_)))
                                                  (_hd107789107848_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e107788107845_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd107789107848_))
                                                  (let ((_e107791107853_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd107789107848_))))
                                                    (let ((_tl107793107858_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e107791107853_)))
                                                          (_hd107792107856_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e107791107853_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd107792107856_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _hd107792107856_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl107793107858_))
                          (let ((_e107794107861_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl107793107858_))))
                            (let ((_tl107796107866_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e107794107861_)))
                                  (_hd107795107864_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e107794107861_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd107795107864_))
                                  (let ((_e107797107869_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd107795107864_))))
                                    (let ((_tl107799107874_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e107797107869_)))
                                          (_hd107798107872_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e107797107869_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd107798107872_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd107798107872_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl107799107874_))
                                                  (let ((_e107800107877_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl107799107874_))))
                                                    (let ((_tl107802107882_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e107800107877_)))
                                                          (_hd107801107880_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e107800107877_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl107802107882_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl107796107866_))
                      (let ((_e107803107885_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl107796107866_))))
                        (let ((_tl107805107890_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e107803107885_)))
                              (_hd107804107888_
                               (let ()
                                 (declare (not safe))
                                 (##car _e107803107885_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd107804107888_))
                              (let ((_e107806107893_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd107804107888_))))
                                (let ((_tl107808107898_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e107806107893_)))
                                      (_hd107807107896_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e107806107893_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd107807107896_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd107807107896_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl107808107898_))
                                              (let ((_e107809107901_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl107808107898_))))
                                                (let ((_tl107811107906_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e107809107901_)))
                                                      (_hd107810107904_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e107809107901_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl107811107906_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl107805107890_))
                                                          (let ((_e107812107909_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl107805107890_))))
                    (let ((_tl107814107914_
                           (let ()
                             (declare (not safe))
                             (##cdr _e107812107909_)))
                          (_hd107813107912_
                           (let ()
                             (declare (not safe))
                             (##car _e107812107909_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd107813107912_))
                          (let ((_e107815107917_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd107813107912_))))
                            (let ((_tl107817107922_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e107815107917_)))
                                  (_hd107816107920_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e107815107917_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd107816107920_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd107816107920_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl107817107922_))
                                          (let ((_e107818107925_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl107817107922_))))
                                            (let ((_tl107820107930_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e107818107925_)))
                                                  (_hd107819107928_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e107818107925_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl107820107930_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl107814107914_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl107790107850_))
                                                          (___match110184110185_
                                                           _e107673108238_
                                                           _hd107674108241_
                                                           _tl107675108243_
                                                           _e107788107845_
                                                           _hd107789107848_
                                                           _tl107790107850_
                                                           _e107791107853_
                                                           _hd107792107856_
                                                           _tl107793107858_
                                                           _e107794107861_
                                                           _hd107795107864_
                                                           _tl107796107866_
                                                           _e107797107869_
                                                           _hd107798107872_
                                                           _tl107799107874_
                                                           _e107800107877_
                                                           _hd107801107880_
                                                           _tl107802107882_
                                                           _e107803107885_
                                                           _hd107804107888_
                                                           _tl107805107890_
                                                           _e107806107893_
                                                           _hd107807107896_
                                                           _tl107808107898_
                                                           _e107809107901_
                                                           _hd107810107904_
                                                           _tl107811107906_
                                                           _e107812107909_
                                                           _hd107813107912_
                                                           _tl107814107914_
                                                           _e107815107917_
                                                           _hd107816107920_
                                                           _tl107817107922_
                                                           _e107818107925_
                                                           _hd107819107928_
                                                           _tl107820107930_)
                                                          (___kont110059110060_))
                                                      (___kont110059110060_))
                                                  (___kont110059110060_))))
                                          (___kont110059110060_))
                                      (___kont110059110060_))
                                  (___kont110059110060_))))
                          (___kont110059110060_))))
                  (___kont110059110060_))
              (___kont110059110060_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont110059110060_))
                                          (___kont110059110060_))
                                      (___kont110059110060_))))
                              (___kont110059110060_))))
                      (___kont110059110060_))
                  (___kont110059110060_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont110059110060_))
                                              (___kont110059110060_))
                                          (___kont110059110060_))))
                                  (___kont110059110060_))))
                          (___kont110059110060_))
                      (___kont110059110060_))
                  (___kont110059110060_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont110059110060_))))
                                          (___kont110059110060_)))))
                              (___kont110059110060_)))))))
                 (_dispatch-case-e106976_
                  (lambda (_hd107124_ _body107125_)
                    (let* ((_form107127_
                            (let ((__tmp111479
                                   (let ()
                                     (declare (not safe))
                                     (cons _body107125_ '()))))
                              (declare (not safe))
                              (cons _hd107124_ __tmp111479)))
                           (___stx110187110188_ _form107127_)
                           (_g107131107255_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx110187110188_)))))
                      (let ((___kont110189110190_
                             (lambda (_L107626_ _L107627_ _L107628_)
                               (let ((__tmp111480
                                      (let ((__tmp111482
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp111481
                                             (let ()
                                               (declare (not safe))
                                               (cons _L107627_ '()))))
                                        (declare (not safe))
                                        (cons __tmp111482 __tmp111481))))
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self106972_ __tmp111480))))
                            (___kont110195110196_
                             (lambda (_L107474_ _L107475_ _L107476_ _L107477_)
                               (let ((__tmp111483
                                      (let ((__tmp111485
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp111484
                                             (let ()
                                               (declare (not safe))
                                               (cons _L107474_ '()))))
                                        (declare (not safe))
                                        (cons __tmp111485 __tmp111484))))
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self106972_ __tmp111483))))
                            (___kont110199110200_
                             (lambda (_L107340_ _L107341_ _L107342_)
                               (let ((__tmp111486
                                      (let ((__tmp111488
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp111487
                                             (let ()
                                               (declare (not safe))
                                               (cons _L107340_ '()))))
                                        (declare (not safe))
                                        (cons __tmp111488 __tmp111487))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _self106972_
                                  __tmp111486)))))
                        (let* ((___match110296110297_
                                (lambda (_e107221107260_
                                         _hd107222107263_
                                         _tl107223107265_
                                         _e107224107268_
                                         _hd107225107271_
                                         _tl107226107273_
                                         _e107227107276_
                                         _hd107228107279_
                                         _tl107229107281_
                                         _e107230107284_
                                         _hd107231107287_
                                         _tl107232107289_
                                         _e107233107292_
                                         _hd107234107295_
                                         _tl107235107297_
                                         _e107236107300_
                                         _hd107237107303_
                                         _tl107238107305_
                                         _e107239107308_
                                         _hd107240107311_
                                         _tl107241107313_
                                         _e107242107316_
                                         _hd107243107319_
                                         _tl107244107321_
                                         _e107245107324_
                                         _hd107246107327_
                                         _tl107247107329_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl107241107313_))
                                      (let ((_e107248107332_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl107241107313_))))
                                        (let ((_tl107250107337_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e107248107332_)))
                                              (_hd107249107335_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e107248107332_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl107250107337_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl107226107273_))
                                                  (___kont110199110200_
                                                   _hd107246107327_
                                                   _hd107237107303_
                                                   _hd107222107263_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g107131107255_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g107131107255_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g107131107255_)))))
                               (___match110226110227_
                                (lambda (_e107182107378_
                                         _hd107183107381_
                                         _tl107184107383_
                                         ___splice110197110198_
                                         _target107185107386_
                                         _tl107187107388_)
                                  (letrec ((_loop107188107391_
                                            (lambda (_hd107186107394_
                                                     _arg107192107396_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd107186107394_))
                                                  (let ((_e107189107399_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd107186107394_))))
                                                    (let ((_lp-tl107191107404_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e107189107399_)))
                                                          (_lp-hd107190107402_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e107189107399_))))
                                                      (let ((__tmp111489
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd107190107402_ _arg107192107396_))))
                (declare (not safe))
                (_loop107188107391_ _lp-tl107191107404_ __tmp111489))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg107193107407_
                                                         (reverse _arg107192107396_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl107184107383_))
                                                        (let ((_e107194107410_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl107184107383_))))
                  (let ((_tl107196107415_
                         (let () (declare (not safe)) (##cdr _e107194107410_)))
                        (_hd107195107413_
                         (let ()
                           (declare (not safe))
                           (##car _e107194107410_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd107195107413_))
                        (let ((_e107197107418_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd107195107413_))))
                          (let ((_tl107199107423_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107197107418_)))
                                (_hd107198107421_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107197107418_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd107198107421_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd107198107421_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl107199107423_))
                                        (let ((_e107200107426_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl107199107423_))))
                                          (let ((_tl107202107431_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107200107426_)))
                                                (_hd107201107429_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107200107426_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd107201107429_))
                                                (let ((_e107203107434_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd107201107429_))))
                                                  (let ((_tl107205107439_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e107203107434_)))
                                                        (_hd107204107437_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e107203107434_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd107204107437_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd107204107437_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl107205107439_))
                        (let ((_e107206107442_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl107205107439_))))
                          (let ((_tl107208107447_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107206107442_)))
                                (_hd107207107445_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107206107442_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl107208107447_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl107202107431_))
                                    (let ((_e107209107450_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl107202107431_))))
                                      (let ((_tl107211107455_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e107209107450_)))
                                            (_hd107210107453_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e107209107450_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd107210107453_))
                                            (let ((_e107212107458_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd107210107453_))))
                                              (let ((_tl107214107463_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e107212107458_)))
                                                    (_hd107213107461_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e107212107458_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd107213107461_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd107213107461_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl107214107463_))
                                                            (let ((_e107215107466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl107214107463_))))
                      (let ((_tl107217107471_
                             (let ()
                               (declare (not safe))
                               (##cdr _e107215107466_)))
                            (_hd107216107469_
                             (let ()
                               (declare (not safe))
                               (##car _e107215107466_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl107217107471_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl107196107415_))
                                (___kont110195110196_
                                 _hd107216107469_
                                 _hd107207107445_
                                 _tl107187107388_
                                 _arg107193107407_)
                                (___match110296110297_
                                 _e107182107378_
                                 _hd107183107381_
                                 _tl107184107383_
                                 _e107194107410_
                                 _hd107195107413_
                                 _tl107196107415_
                                 _e107197107418_
                                 _hd107198107421_
                                 _tl107199107423_
                                 _e107200107426_
                                 _hd107201107429_
                                 _tl107202107431_
                                 _e107203107434_
                                 _hd107204107437_
                                 _tl107205107439_
                                 _e107206107442_
                                 _hd107207107445_
                                 _tl107208107447_
                                 _e107209107450_
                                 _hd107210107453_
                                 _tl107211107455_
                                 _e107212107458_
                                 _hd107213107461_
                                 _tl107214107463_
                                 _e107215107466_
                                 _hd107216107469_
                                 _tl107217107471_))
                            (let () (declare (not safe)) (_g107131107255_)))))
                    (let () (declare (not safe)) (_g107131107255_)))
                (let () (declare (not safe)) (_g107131107255_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g107131107255_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g107131107255_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g107131107255_)))
                                (let ()
                                  (declare (not safe))
                                  (_g107131107255_)))))
                        (let () (declare (not safe)) (_g107131107255_)))
                    (let () (declare (not safe)) (_g107131107255_)))
                (let () (declare (not safe)) (_g107131107255_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g107131107255_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g107131107255_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g107131107255_)))
                                (let ()
                                  (declare (not safe))
                                  (_g107131107255_)))))
                        (let () (declare (not safe)) (_g107131107255_)))))
                (let () (declare (not safe)) (_g107131107255_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop107188107391_
                                       _target107185107386_
                                       '())))))
                               (___match110214110215_
                                (lambda (_e107136107514_
                                         _hd107137107517_
                                         _tl107138107519_
                                         ___splice110191110192_
                                         _target107139107522_
                                         _tl107141107524_)
                                  (letrec ((_loop107142107527_
                                            (lambda (_hd107140107530_
                                                     _arg107146107532_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd107140107530_))
                                                  (let ((_e107143107535_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd107140107530_))))
                                                    (let ((_lp-tl107145107540_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e107143107535_)))
                                                          (_lp-hd107144107538_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e107143107535_))))
                                                      (let ((__tmp111490
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd107144107538_ _arg107146107532_))))
                (declare (not safe))
                (_loop107142107527_ _lp-tl107145107540_ __tmp111490))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg107147107543_
                                                         (reverse _arg107146107532_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl107138107519_))
                                                        (let ((_e107148107546_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl107138107519_))))
                  (let ((_tl107150107551_
                         (let () (declare (not safe)) (##cdr _e107148107546_)))
                        (_hd107149107549_
                         (let ()
                           (declare (not safe))
                           (##car _e107148107546_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd107149107549_))
                        (let ((_e107151107554_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd107149107549_))))
                          (let ((_tl107153107559_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107151107554_)))
                                (_hd107152107557_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107151107554_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd107152107557_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd107152107557_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl107153107559_))
                                        (let ((_e107154107562_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl107153107559_))))
                                          (let ((_tl107156107567_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107154107562_)))
                                                (_hd107155107565_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107154107562_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd107155107565_))
                                                (let ((_e107157107570_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd107155107565_))))
                                                  (let ((_tl107159107575_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e107157107570_)))
                                                        (_hd107158107573_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e107157107570_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd107158107573_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd107158107573_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl107159107575_))
                        (let ((_e107160107578_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl107159107575_))))
                          (let ((_tl107162107583_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107160107578_)))
                                (_hd107161107581_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107160107578_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl107162107583_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl107156107567_))
                                    (let ((___splice110193110194_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl107156107567_
                                              '0))))
                                      (let ((_tl107165107588_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice110193110194_
                                                '1)))
                                            (_target107163107586_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice110193110194_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl107165107588_))
                                            (letrec ((_loop107166107591_
                                                      (lambda (_hd107164107594_
                                                               _xarg107170107596_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _hd107164107594_))
                                                            (let ((_e107167107599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd107164107594_))))
                      (let ((_lp-tl107169107604_
                             (let ()
                               (declare (not safe))
                               (##cdr _e107167107599_)))
                            (_lp-hd107168107602_
                             (let ()
                               (declare (not safe))
                               (##car _e107167107599_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _lp-hd107168107602_))
                            (let ((_e107172107607_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _lp-hd107168107602_))))
                              (let ((_tl107174107612_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e107172107607_)))
                                    (_hd107173107610_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e107172107607_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd107173107610_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#ref _hd107173107610_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl107174107612_))
                                            (let ((_e107175107615_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl107174107612_))))
                                              (let ((_tl107177107620_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e107175107615_)))
                                                    (_hd107176107618_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e107175107615_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl107177107620_))
                                                    (let ((__tmp111491
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd107176107618_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xarg107170107596_))))
              (declare (not safe))
              (_loop107166107591_ _lp-tl107169107604_ __tmp111491))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match110226110227_
                                                     _e107136107514_
                                                     _hd107137107517_
                                                     _tl107138107519_
                                                     ___splice110191110192_
                                                     _target107139107522_
                                                     _tl107141107524_))))
                                            (___match110226110227_
                                             _e107136107514_
                                             _hd107137107517_
                                             _tl107138107519_
                                             ___splice110191110192_
                                             _target107139107522_
                                             _tl107141107524_))
                                        (___match110226110227_
                                         _e107136107514_
                                         _hd107137107517_
                                         _tl107138107519_
                                         ___splice110191110192_
                                         _target107139107522_
                                         _tl107141107524_))
                                    (___match110226110227_
                                     _e107136107514_
                                     _hd107137107517_
                                     _tl107138107519_
                                     ___splice110191110192_
                                     _target107139107522_
                                     _tl107141107524_))))
                            (___match110226110227_
                             _e107136107514_
                             _hd107137107517_
                             _tl107138107519_
                             ___splice110191110192_
                             _target107139107522_
                             _tl107141107524_))))
                    (let ((_xarg107171107623_ (reverse _xarg107170107596_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl107150107551_))
                          (___kont110189110190_
                           _xarg107171107623_
                           _hd107161107581_
                           _arg107147107543_)
                          (___match110226110227_
                           _e107136107514_
                           _hd107137107517_
                           _tl107138107519_
                           ___splice110191110192_
                           _target107139107522_
                           _tl107141107524_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop107166107591_
                                                 _target107163107586_
                                                 '())))
                                            (___match110226110227_
                                             _e107136107514_
                                             _hd107137107517_
                                             _tl107138107519_
                                             ___splice110191110192_
                                             _target107139107522_
                                             _tl107141107524_))))
                                    (___match110226110227_
                                     _e107136107514_
                                     _hd107137107517_
                                     _tl107138107519_
                                     ___splice110191110192_
                                     _target107139107522_
                                     _tl107141107524_))
                                (___match110226110227_
                                 _e107136107514_
                                 _hd107137107517_
                                 _tl107138107519_
                                 ___splice110191110192_
                                 _target107139107522_
                                 _tl107141107524_))))
                        (___match110226110227_
                         _e107136107514_
                         _hd107137107517_
                         _tl107138107519_
                         ___splice110191110192_
                         _target107139107522_
                         _tl107141107524_))
                    (___match110226110227_
                     _e107136107514_
                     _hd107137107517_
                     _tl107138107519_
                     ___splice110191110192_
                     _target107139107522_
                     _tl107141107524_))
                (___match110226110227_
                 _e107136107514_
                 _hd107137107517_
                 _tl107138107519_
                 ___splice110191110192_
                 _target107139107522_
                 _tl107141107524_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match110226110227_
                                                 _e107136107514_
                                                 _hd107137107517_
                                                 _tl107138107519_
                                                 ___splice110191110192_
                                                 _target107139107522_
                                                 _tl107141107524_))))
                                        (___match110226110227_
                                         _e107136107514_
                                         _hd107137107517_
                                         _tl107138107519_
                                         ___splice110191110192_
                                         _target107139107522_
                                         _tl107141107524_))
                                    (___match110226110227_
                                     _e107136107514_
                                     _hd107137107517_
                                     _tl107138107519_
                                     ___splice110191110192_
                                     _target107139107522_
                                     _tl107141107524_))
                                (___match110226110227_
                                 _e107136107514_
                                 _hd107137107517_
                                 _tl107138107519_
                                 ___splice110191110192_
                                 _target107139107522_
                                 _tl107141107524_))))
                        (___match110226110227_
                         _e107136107514_
                         _hd107137107517_
                         _tl107138107519_
                         ___splice110191110192_
                         _target107139107522_
                         _tl107141107524_))))
                (___match110226110227_
                 _e107136107514_
                 _hd107137107517_
                 _tl107138107519_
                 ___splice110191110192_
                 _target107139107522_
                 _tl107141107524_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop107142107527_
                                       _target107139107522_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx110187110188_))
                              (let ((_e107136107514_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx110187110188_))))
                                (let ((_tl107138107519_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e107136107514_)))
                                      (_hd107137107517_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e107136107514_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd107137107517_))
                                      (let ((___splice110191110192_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd107137107517_
                                                '0))))
                                        (let ((_tl107141107524_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice110191110192_
                                                  '1)))
                                              (_target107139107522_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice110191110192_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl107141107524_))
                                              (___match110214110215_
                                               _e107136107514_
                                               _hd107137107517_
                                               _tl107138107519_
                                               ___splice110191110192_
                                               _target107139107522_
                                               _tl107141107524_)
                                              (___match110226110227_
                                               _e107136107514_
                                               _hd107137107517_
                                               _tl107138107519_
                                               ___splice110191110192_
                                               _target107139107522_
                                               _tl107141107524_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl107138107519_))
                                          (let ((_e107224107268_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl107138107519_))))
                                            (let ((_tl107226107273_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e107224107268_)))
                                                  (_hd107225107271_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e107224107268_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd107225107271_))
                                                  (let ((_e107227107276_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd107225107271_))))
                                                    (let ((_tl107229107281_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e107227107276_)))
                                                          (_hd107228107279_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e107227107276_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd107228107279_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _hd107228107279_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl107229107281_))
                          (let ((_e107230107284_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl107229107281_))))
                            (let ((_tl107232107289_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e107230107284_)))
                                  (_hd107231107287_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e107230107284_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd107231107287_))
                                  (let ((_e107233107292_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd107231107287_))))
                                    (let ((_tl107235107297_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e107233107292_)))
                                          (_hd107234107295_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e107233107292_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd107234107295_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd107234107295_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl107235107297_))
                                                  (let ((_e107236107300_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl107235107297_))))
                                                    (let ((_tl107238107305_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e107236107300_)))
                                                          (_hd107237107303_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e107236107300_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl107238107305_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl107232107289_))
                      (let ((_e107239107308_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl107232107289_))))
                        (let ((_tl107241107313_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e107239107308_)))
                              (_hd107240107311_
                               (let ()
                                 (declare (not safe))
                                 (##car _e107239107308_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd107240107311_))
                              (let ((_e107242107316_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd107240107311_))))
                                (let ((_tl107244107321_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e107242107316_)))
                                      (_hd107243107319_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e107242107316_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd107243107319_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd107243107319_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl107244107321_))
                                              (let ((_e107245107324_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl107244107321_))))
                                                (let ((_tl107247107329_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e107245107324_)))
                                                      (_hd107246107327_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e107245107324_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl107247107329_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl107241107313_))
                                                          (let ((_e107248107332_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl107241107313_))))
                    (let ((_tl107250107337_
                           (let ()
                             (declare (not safe))
                             (##cdr _e107248107332_)))
                          (_hd107249107335_
                           (let ()
                             (declare (not safe))
                             (##car _e107248107332_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl107250107337_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl107226107273_))
                              (___kont110199110200_
                               _hd107246107327_
                               _hd107237107303_
                               _hd107137107517_)
                              (let () (declare (not safe)) (_g107131107255_)))
                          (let () (declare (not safe)) (_g107131107255_)))))
                  (let () (declare (not safe)) (_g107131107255_)))
              (let () (declare (not safe)) (_g107131107255_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g107131107255_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g107131107255_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g107131107255_)))))
                              (let ()
                                (declare (not safe))
                                (_g107131107255_)))))
                      (let () (declare (not safe)) (_g107131107255_)))
                  (let () (declare (not safe)) (_g107131107255_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g107131107255_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g107131107255_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g107131107255_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g107131107255_)))))
                          (let () (declare (not safe)) (_g107131107255_)))
                      (let () (declare (not safe)) (_g107131107255_)))
                  (let () (declare (not safe)) (_g107131107255_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g107131107255_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g107131107255_))))))
                              (let ()
                                (declare (not safe))
                                (_g107131107255_))))))))
                 (_generate1106977_
                  (lambda (_args107112_ _arglen107113_ _hd107114_ _body107115_)
                    (let* ((_len107117_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _hd107114_)))
                           (_condition107119_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _hd107114_))
                                (if (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-decls-unsafe?))
                                    (let ((__tmp111492
                                           (let ((__tmp111493
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _len107117_ '()))))
                                             (declare (not safe))
                                             (cons _arglen107113_
                                                   __tmp111493))))
                                      (declare (not safe))
                                      (cons '##fx= __tmp111492))
                                    (let ((__tmp111494
                                           (let ((__tmp111495
                                                  (let ((__tmp111496
                                                         (let ((__tmp111497
                                                                (let ((__tmp111498
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp111499
                                      (let ()
                                        (declare (not safe))
                                        (cons _len107117_ '()))))
                                 (declare (not safe))
                                 (cons _arglen107113_ __tmp111499))))
                          (declare (not safe))
                          (cons '##fx= __tmp111498))))
                   (declare (not safe))
                   (cons __tmp111497 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '(declare (not safe))
                                                          __tmp111496))))
                                             (declare (not safe))
                                             (cons '() __tmp111495))))
                                      (declare (not safe))
                                      (cons 'let __tmp111494)))
                                (if (> _len107117_ '0)
                                    (if (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-decls-unsafe?))
                                        (let ((__tmp111500
                                               (let ((__tmp111501
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _len107117_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _arglen107113_
                                                       __tmp111501))))
                                          (declare (not safe))
                                          (cons '##fx>= __tmp111500))
                                        (let ((__tmp111502
                                               (let ((__tmp111503
                                                      (let ((__tmp111504
                                                             (let ((__tmp111505
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp111506
                                   (let ((__tmp111507
                                          (let ()
                                            (declare (not safe))
                                            (cons _len107117_ '()))))
                                     (declare (not safe))
                                     (cons _arglen107113_ __tmp111507))))
                              (declare (not safe))
                              (cons '##fx>= __tmp111506))))
                       (declare (not safe))
                       (cons __tmp111505 '()))))
                (declare (not safe))
                (cons '(declare (not safe)) __tmp111504))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp111503))))
                                          (declare (not safe))
                                          (cons 'let __tmp111502)))
                                    '#t)))
                           (_dispatch107121_
                            (if (let ()
                                  (declare (not safe))
                                  (_dispatch-case?106975_
                                   _hd107114_
                                   _body107115_))
                                (let ()
                                  (declare (not safe))
                                  (_dispatch-case-e106976_
                                   _hd107114_
                                   _body107115_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-lambda-form
                                   _self106972_
                                   _hd107114_
                                   _body107115_)))))
                      (let ((__tmp111508
                             (let ((__tmp111509
                                    (let ((__tmp111510
                                           (let ((__tmp111511
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _args107112_ '()))))
                                             (declare (not safe))
                                             (cons _dispatch107121_
                                                   __tmp111511))))
                                      (declare (not safe))
                                      (cons 'apply __tmp111510))))
                               (declare (not safe))
                               (cons __tmp111509 '()))))
                        (declare (not safe))
                        (cons _condition107119_ __tmp111508))))))
          (let* ((_g106979107007_
                  (lambda (_g106980107004_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g106980107004_))))
                 (_g106978107109_
                  (lambda (_g106980107010_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g106980107010_))
                        (let ((_e106983107012_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g106980107010_))))
                          (let ((_hd106984107015_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e106983107012_)))
                                (_tl106985107017_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e106983107012_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl106985107017_))
                                (let ((_g111512_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl106985107017_
                                          '0))))
                                  (begin
                                    (let ((_g111513_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g111512_)
                                                 (##vector-length _g111512_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g111513_ 2)))
                                          (error "Context expects 2 values"
                                                 _g111513_)))
                                    (let ((_target106986107020_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g111512_ 0)))
                                          (_tl106988107022_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g111512_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl106988107022_))
                                          (letrec ((_loop106989107025_
                                                    (lambda (_hd106987107028_
                                                             _body106993107030_
                                                             _hd106994107032_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd106987107028_))
                                                          (let ((_e106990107035_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd106987107028_))))
                    (let ((_lp-hd106991107038_
                           (let ()
                             (declare (not safe))
                             (##car _e106990107035_)))
                          (_lp-tl106992107040_
                           (let ()
                             (declare (not safe))
                             (##cdr _e106990107035_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _lp-hd106991107038_))
                          (let ((_e106997107043_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _lp-hd106991107038_))))
                            (let ((_hd106998107046_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e106997107043_)))
                                  (_tl106999107048_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e106997107043_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl106999107048_))
                                  (let ((_e107000107051_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl106999107048_))))
                                    (let ((_hd107001107054_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e107000107051_)))
                                          (_tl107002107056_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e107000107051_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl107002107056_))
                                          (let ((__tmp111515
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd107001107054_
                                                         _body106993107030_)))
                                                (__tmp111514
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd106998107046_
                                                         _hd106994107032_))))
                                            (declare (not safe))
                                            (_loop106989107025_
                                             _lp-tl106992107040_
                                             __tmp111515
                                             __tmp111514))
                                          (let ()
                                            (declare (not safe))
                                            (_g106979107007_
                                             _g106980107010_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g106979107007_ _g106980107010_)))))
                          (let ()
                            (declare (not safe))
                            (_g106979107007_ _g106980107010_)))))
                  (let ((_body106995107059_ (reverse _body106993107030_))
                        (_hd106996107061_ (reverse _hd106994107032_)))
                    ((lambda (_L107064_ _L107065_)
                       (let ((_args107084_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_arglen107085_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_name107086_
                              (let ((_$e107081_
                                     (let ((__tmp111516
                                            (gxc#current-compile-runtime-names)))
                                       (declare (not safe))
                                       (hash-get __tmp111516 _stx106973_))))
                                (if _$e107081_
                                    _$e107081_
                                    ''case-lambda-dispatch))))
                         (let ((__tmp111517
                                (let ((__tmp111518
                                       (let ((__tmp111519
                                              (let ((__tmp111520
                                                     (let ((__tmp111533
                                                            (let ((__tmp111534
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp111535
                                  (let ((__tmp111536
                                         (if (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls-unsafe?))
                                             (let ((__tmp111537
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args107084_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '##length __tmp111537))
                                             (let ((__tmp111538
                                                    (let ((__tmp111539
                                                           (let ((__tmp111540
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp111541
                                 (let ((__tmp111542
                                        (let ()
                                          (declare (not safe))
                                          (cons _args107084_ '()))))
                                   (declare (not safe))
                                   (cons '##length __tmp111542))))
                            (declare (not safe))
                            (cons __tmp111541 '()))))
                     (declare (not safe))
                     (cons '(declare (not safe)) __tmp111540))))
              (declare (not safe))
              (cons '() __tmp111539))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'let __tmp111538)))))
                                    (declare (not safe))
                                    (cons __tmp111536 '()))))
                             (declare (not safe))
                             (cons _arglen107085_ __tmp111535))))
                      (declare (not safe))
                      (cons __tmp111534 '())))
                   (__tmp111521
                    (let ((__tmp111522
                           (let ((__tmp111523
                                  (let ((__tmp111527
                                         (let ((__tmp111528
                                                (let ((__tmp111529
                                                       (let ((__tmp111530
                                                              (let ((__tmp111531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp111532
                                    (let ()
                                      (declare (not safe))
                                      (cons _args107084_ '()))))
                               (declare (not safe))
                               (cons _name107086_ __tmp111532))))
                        (declare (not safe))
                        (cons '##raise-wrong-number-of-arguments-exception
                              __tmp111531))))
                 (declare (not safe))
                 (cons __tmp111530 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'else __tmp111529))))
                                           (declare (not safe))
                                           (cons __tmp111528 '())))
                                        (__tmp111524
                                         (map (lambda (_g107087107090_
                                                       _g107088107092_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate1106977_
                                                   _args107084_
                                                   _arglen107085_
                                                   _g107087107090_
                                                   _g107088107092_)))
                                              (let ((__tmp111525
                                                     (lambda (_g107094107097_
                                                              _g107095107099_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g107094107097_
                                                               _g107095107099_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp111525
                                                        '()
                                                        _L107065_))
                                              (let ((__tmp111526
                                                     (lambda (_g107101107104_
                                                              _g107102107106_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g107101107104_
                                                               _g107102107106_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp111526
                                                        '()
                                                        _L107064_)))))
                                    (declare (not safe))
                                    (foldr1 cons __tmp111527 __tmp111524))))
                             (declare (not safe))
                             (cons 'cond __tmp111523))))
                      (declare (not safe))
                      (cons __tmp111522 '()))))
               (declare (not safe))
               (cons __tmp111533 __tmp111521))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'let __tmp111520))))
                                         (declare (not safe))
                                         (cons __tmp111519 '()))))
                                  (declare (not safe))
                                  (cons _args107084_ __tmp111518))))
                           (declare (not safe))
                           (cons 'lambda __tmp111517))))
                     _body106995107059_
                     _hd106996107061_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_loop106989107025_
                                               _target106986107020_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_g106979107007_
                                             _g106980107010_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g106979107007_ _g106980107010_)))))
                        (let ()
                          (declare (not safe))
                          (_g106979107007_ _g106980107010_))))))
            (declare (not safe))
            (_g106978107109_ _stx106973_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_self106243_ _stx106244_ _compiled-body?106245_)
        (letrec ((_generate-simple106247_
                  (lambda (_hd106957_ _body106958_)
                    (let ((__tmp111543
                           (let ((__tmp111544
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-simple-let
                                     _self106243_
                                     'let
                                     _hd106957_
                                     _body106958_
                                     _compiled-body?106245_))))
                             (declare (not safe))
                             (_coalesce-let*106249_ __tmp111544))))
                      (declare (not safe))
                      (_coalesce-boolean106248_ __tmp111543))))
                 (_coalesce-boolean106248_
                  (lambda (_code106818_)
                    (if (gxc#current-compile-boolean-context)
                        (let* ((_code106819106845_ _code106818_)
                               (_else106821106853_ (lambda () _code106818_))
                               (_K106823106890_
                                (lambda (_expr2106856_
                                         _expr1106857_
                                         _id106858_)
                                  (let* ((_expr2106859106867_ _expr2106856_)
                                         (_else106861106875_
                                          (lambda ()
                                            (let ((__tmp111545
                                                   (let ((__tmp111546
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _expr2106856_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _expr1106857_
                                                           __tmp111546))))
                                              (declare (not safe))
                                              (cons 'or __tmp111545))))
                                         (_K106863106880_
                                          (lambda (_exprs106878_)
                                            (let ((__tmp111547
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _expr1106857_
                                                           _exprs106878_))))
                                              (declare (not safe))
                                              (cons 'or __tmp111547)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _expr2106859106867_))
                                        (let ((_hd106864106883_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _expr2106859106867_)))
                                              (_tl106865106885_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _expr2106859106867_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd106864106883_ 'or))
                                              (let ((_exprs106888_
                                                     _tl106865106885_))
                                                (declare (not safe))
                                                (_K106863106880_
                                                 _exprs106888_))
                                              (let ()
                                                (declare (not safe))
                                                (_else106861106875_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else106861106875_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _code106819106845_))
                              (let ((_hd106824106893_
                                     (let ()
                                       (declare (not safe))
                                       (##car _code106819106845_)))
                                    (_tl106825106895_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _code106819106845_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _hd106824106893_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tl106825106895_))
                                        (let ((_hd106826106898_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tl106825106895_)))
                                              (_tl106827106900_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tl106825106895_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _hd106826106898_))
                                              (let ((_hd106838106903_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _hd106826106898_)))
                                                    (_tl106839106905_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _hd106826106898_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _hd106838106903_))
                                                    (let ((_hd106840106908_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _hd106838106903_)))
                                                          (_tl106841106910_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _hd106838106903_))))
                                                      (let ((_id106913_
                                                             _hd106840106908_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _tl106841106910_))
                                                            (let ((_hd106842106915_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _tl106841106910_)))
                          (_tl106843106917_
                           (let ()
                             (declare (not safe))
                             (##cdr _tl106841106910_))))
                      (let ((_expr1106920_ _hd106842106915_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _tl106843106917_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl106839106905_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl106827106900_))
                                    (let ((_hd106828106922_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl106827106900_)))
                                          (_tl106829106924_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl106827106900_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd106828106922_))
                                          (let ((_hd106830106927_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd106828106922_)))
                                                (_tl106831106929_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd106828106922_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd106830106927_ 'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl106831106929_))
                                                    (let ((_hd106832106932_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl106831106929_)))
                                                          (_tl106833106934_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl106831106929_))))
                                                      (if ((lambda (_g106936106938_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (eq? _g106936106938_ _id106913_)))
                   _hd106832106932_)
                  (if (let () (declare (not safe)) (##pair? _tl106833106934_))
                      (let ((_hd106834106941_
                             (let ()
                               (declare (not safe))
                               (##car _tl106833106934_)))
                            (_tl106835106943_
                             (let ()
                               (declare (not safe))
                               (##cdr _tl106833106934_))))
                        (if ((lambda (_g106945106947_)
                               (let ()
                                 (declare (not safe))
                                 (eq? _g106945106947_ _id106913_)))
                             _hd106834106941_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl106835106943_))
                                (let ((_hd106836106950_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl106835106943_)))
                                      (_tl106837106952_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl106835106943_))))
                                  (let ((_expr2106955_ _hd106836106950_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl106837106952_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _tl106829106924_))
                                            (let ()
                                              (declare (not safe))
                                              (_K106823106890_
                                               _expr2106955_
                                               _expr1106920_
                                               _id106913_))
                                            (let ()
                                              (declare (not safe))
                                              (_else106821106853_)))
                                        (let ()
                                          (declare (not safe))
                                          (_else106821106853_)))))
                                (let ()
                                  (declare (not safe))
                                  (_else106821106853_)))
                            (let ()
                              (declare (not safe))
                              (_else106821106853_))))
                      (let () (declare (not safe)) (_else106821106853_)))
                  (let () (declare (not safe)) (_else106821106853_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else106821106853_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_else106821106853_))))
                                          (let ()
                                            (declare (not safe))
                                            (_else106821106853_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else106821106853_)))
                                (let ()
                                  (declare (not safe))
                                  (_else106821106853_)))
                            (let ()
                              (declare (not safe))
                              (_else106821106853_)))))
                    (let () (declare (not safe)) (_else106821106853_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else106821106853_))))
                                              (let ()
                                                (declare (not safe))
                                                (_else106821106853_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else106821106853_)))
                                    (let ()
                                      (declare (not safe))
                                      (_else106821106853_))))
                              (let ()
                                (declare (not safe))
                                (_else106821106853_))))
                        _code106818_)))
                 (_coalesce-let*106249_
                  (lambda (_code106551_)
                    (let* ((_code106552106616_ _code106551_)
                           (_else106556106624_ (lambda () _code106551_)))
                      (let ((_K106598106769_
                             (lambda (_body106765_ _expr106766_ _id106767_)
                               (let ((__tmp111548
                                      (let ((__tmp111549
                                             (let ((__tmp111550
                                                    (let ((__tmp111551
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr106766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id106767_ __tmp111551))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp111550 '()))))
                                        (declare (not safe))
                                        (cons __tmp111549 _body106765_))))
                                 (declare (not safe))
                                 (cons 'let __tmp111548))))
                            (_K106575106694_
                             (lambda (_body106688_
                                      _expr2106689_
                                      _id2106690_
                                      _expr1106691_
                                      _id1106692_)
                               (let ((__tmp111552
                                      (let ((__tmp111553
                                             (let ((__tmp111557
                                                    (let ((__tmp111558
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr1106691_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id1106692_ __tmp111558)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp111554
                                                    (let ((__tmp111555
                                                           (let ((__tmp111556
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _expr2106689_ '()))))
                     (declare (not safe))
                     (cons _id2106690_ __tmp111556))))
              (declare (not safe))
              (cons __tmp111555 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp111557
                                                     __tmp111554))))
                                        (declare (not safe))
                                        (cons __tmp111553 _body106688_))))
                                 (declare (not safe))
                                 (cons 'let* __tmp111552))))
                            (_K106558106633_
                             (lambda (_body106628_
                                      _bind106629_
                                      _expr1106630_
                                      _id1106631_)
                               (let ((__tmp111559
                                      (let ((__tmp111560
                                             (let ((__tmp111561
                                                    (let ((__tmp111562
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr1106630_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id1106631_ __tmp111562))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp111561
                                                     _bind106629_))))
                                        (declare (not safe))
                                        (cons __tmp111560 _body106628_))))
                                 (declare (not safe))
                                 (cons 'let* __tmp111559)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _code106552106616_))
                            (let ((_tl106600106774_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _code106552106616_)))
                                  (_hd106599106772_
                                   (let ()
                                     (declare (not safe))
                                     (##car _code106552106616_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd106599106772_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl106600106774_))
                                      (let ((_tl106602106779_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl106600106774_)))
                                            (_hd106601106777_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl106600106774_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _hd106601106777_))
                                            (let ((_tl106610106784_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _hd106601106777_)))
                                                  (_hd106609106782_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _hd106601106777_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _hd106609106782_))
                                                  (let ((_tl106612106789_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _hd106609106782_)))
                                                        (_hd106611106787_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _hd106609106782_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl106612106789_))
                                                        (let ((_tl106614106796_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl106612106789_)))
                      (_hd106613106794_
                       (let () (declare (not safe)) (##car _tl106612106789_))))
                  (if (let () (declare (not safe)) (##null? _tl106614106796_))
                      (if (let ()
                            (declare (not safe))
                            (##null? _tl106610106784_))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _tl106602106779_))
                              (let ((_tl106604106803_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _tl106602106779_)))
                                    (_hd106603106801_
                                     (let ()
                                       (declare (not safe))
                                       (##car _tl106602106779_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd106603106801_))
                                    (let ((_tl106606106808_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd106603106801_)))
                                          (_hd106605106806_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd106603106801_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd106605106806_ 'let))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _tl106606106808_))
                                              (let ((_tl106608106813_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _tl106606106808_)))
                                                    (_hd106607106811_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _tl106606106808_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _hd106607106811_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl106604106803_))
                                                        (let ((_id106792_
                                                               _hd106611106787_)
                                                              (_expr106799_
                                                               _hd106613106794_)
                                                              (_body106816_
                                                               _tl106608106813_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K106598106769_
                                                             _body106816_
                                                             _expr106799_
                                                             _id106792_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_else106556106624_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _hd106607106811_))
                                                        (let ((_tl106587106743_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _hd106607106811_)))
                      (_hd106586106741_
                       (let () (declare (not safe)) (##car _hd106607106811_))))
                  (if (let () (declare (not safe)) (##pair? _hd106586106741_))
                      (let ((_tl106589106748_
                             (let ()
                               (declare (not safe))
                               (##cdr _hd106586106741_)))
                            (_hd106588106746_
                             (let ()
                               (declare (not safe))
                               (##car _hd106586106741_))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl106589106748_))
                            (let ((_tl106591106755_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl106589106748_)))
                                  (_hd106590106753_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl106589106748_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl106591106755_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl106587106743_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl106604106803_))
                                          (let ((_id1106717_ _hd106611106787_)
                                                (_expr1106724_
                                                 _hd106613106794_)
                                                (_id2106751_ _hd106588106746_)
                                                (_expr2106758_
                                                 _hd106590106753_)
                                                (_body106760_
                                                 _tl106608106813_))
                                            (let ()
                                              (declare (not safe))
                                              (_K106575106694_
                                               _body106760_
                                               _expr2106758_
                                               _id2106751_
                                               _expr1106724_
                                               _id1106717_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else106556106624_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else106556106624_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else106556106624_))))
                            (let ()
                              (declare (not safe))
                              (_else106556106624_))))
                      (let () (declare (not safe)) (_else106556106624_))))
                (let () (declare (not safe)) (_else106556106624_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_else106556106624_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd106605106806_ 'let*))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl106606106808_))
                                                  (let ((_tl106568106677_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl106606106808_)))
                                                        (_hd106567106675_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl106606106808_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl106604106803_))
                                                        (let ((_id1106656_
                                                               _hd106611106787_)
                                                              (_expr1106663_
                                                               _hd106613106794_)
                                                              (_bind106680_
                                                               _hd106567106675_)
                                                              (_body106682_
                                                               _tl106568106677_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K106558106633_
                                                             _body106682_
                                                             _bind106680_
                                                             _expr1106663_
                                                             _id1106656_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_else106556106624_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else106556106624_)))
                                              (let ()
                                                (declare (not safe))
                                                (_else106556106624_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_else106556106624_))))
                              (let ()
                                (declare (not safe))
                                (_else106556106624_)))
                          (let () (declare (not safe)) (_else106556106624_)))
                      (let () (declare (not safe)) (_else106556106624_))))
                (let () (declare (not safe)) (_else106556106624_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else106556106624_))))
                                            (let ()
                                              (declare (not safe))
                                              (_else106556106624_))))
                                      (let ()
                                        (declare (not safe))
                                        (_else106556106624_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else106556106624_))))
                            (let ()
                              (declare (not safe))
                              (_else106556106624_)))))))
                 (_generate-values106250_
                  (lambda (_hd106364_ _body106365_)
                    (let _lp106367_ ((_rest106369_ _hd106364_)
                                     (_bind106370_ '())
                                     (_check106371_ '())
                                     (_post106372_ '()))
                      (let* ((___stx110498110499_ _rest106369_)
                             (_g106375106386_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx110498110499_)))))
                        (let ((___kont110500110501_
                               (lambda (_L106413_ _L106414_)
                                 (let* ((___stx110454110455_ _L106414_)
                                        (_g106429106454_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx110454110455_)))))
                                   (let ((___kont110456110457_
                                          (lambda (_L106527_ _L106528_)
                                            (let ((_eid106542_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _L106528_)))
                                                  (_expr106543_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self106243_
                                                      _L106527_))))
                                              (let ((__tmp111563
                                                     (let ((__tmp111564
                                                            (let ((__tmp111565
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr106543_ '()))))
                      (declare (not safe))
                      (cons _eid106542_ __tmp111565))))
               (declare (not safe))
               (cons __tmp111564 _bind106370_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp106367_
                                                 _L106413_
                                                 __tmp111563
                                                 _check106371_
                                                 _post106372_)))))
                                         (___kont110458110459_
                                          (lambda (_L106475_ _L106476_)
                                            (let* ((_vals106489_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_check-values106491_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _vals106489_
                                                       _L106476_
                                                       _L106475_)))
                                                   (_refs106493_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _vals106489_
                                                       _L106476_)))
                                                   (_expr106495_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self106243_
                                                       _L106475_))))
                                              (let ((__tmp111568
                                                     (let ((__tmp111569
                                                            (let ((__tmp111570
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr106495_ '()))))
                      (declare (not safe))
                      (cons _vals106489_ __tmp111570))))
               (declare (not safe))
               (cons __tmp111569 _bind106370_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp111567
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _check-values106491_
                                                             _check106371_)))
                                                    (__tmp111566
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _refs106493_
                                                             _post106372_))))
                                                (declare (not safe))
                                                (_lp106367_
                                                 _L106413_
                                                 __tmp111568
                                                 __tmp111567
                                                 __tmp111566))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx110454110455_))
                                         (let ((_e106433106503_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx110454110455_))))
                                           (let ((_tl106435106508_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e106433106503_)))
                                                 (_hd106434106506_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e106433106503_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _hd106434106506_))
                                                 (let ((_e106436106511_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _hd106434106506_))))
                                                   (let ((_tl106438106516_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e106436106511_)))
                                                         (_hd106437106514_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e106436106511_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl106438106516_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl106435106508_))
                     (let ((_e106439106519_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl106435106508_))))
                       (let ((_tl106441106524_
                              (let ()
                                (declare (not safe))
                                (##cdr _e106439106519_)))
                             (_hd106440106522_
                              (let ()
                                (declare (not safe))
                                (##car _e106439106519_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl106441106524_))
                             (___kont110456110457_
                              _hd106440106522_
                              _hd106437106514_)
                             (let () (declare (not safe)) (_g106429106454_)))))
                     (let () (declare (not safe)) (_g106429106454_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl106435106508_))
                     (let ((_e106447106467_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl106435106508_))))
                       (let ((_tl106449106472_
                              (let ()
                                (declare (not safe))
                                (##cdr _e106447106467_)))
                             (_hd106448106470_
                              (let ()
                                (declare (not safe))
                                (##car _e106447106467_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl106449106472_))
                             (___kont110458110459_
                              _hd106448106470_
                              _hd106434106506_)
                             (let () (declare (not safe)) (_g106429106454_)))))
                     (let () (declare (not safe)) (_g106429106454_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl106435106508_))
                                                     (let ((_e106447106467_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl106435106508_))))
                                                       (let ((_tl106449106472_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e106447106467_)))
                     (_hd106448106470_
                      (let () (declare (not safe)) (##car _e106447106467_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl106449106472_))
                     (___kont110458110459_ _hd106448106470_ _hd106434106506_)
                     (let () (declare (not safe)) (_g106429106454_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g106429106454_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g106429106454_)))))))
                              (___kont110502110503_
                               (lambda ()
                                 (let* ((_body106393_
                                         (if _compiled-body?106245_
                                             _body106365_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self106243_
                                                _body106365_))))
                                        (_body106395_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-post106251_
                                            _post106372_
                                            _body106393_)))
                                        (_body106397_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-check106252_
                                            _check106371_
                                            _body106395_))))
                                   (let ((__tmp111571
                                          (let ((__tmp111573
                                                 (reverse _bind106370_))
                                                (__tmp111572
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _body106397_ '()))))
                                            (declare (not safe))
                                            (cons __tmp111573 __tmp111572))))
                                     (declare (not safe))
                                     (cons 'let __tmp111571))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx110498110499_))
                              (let ((_e106379106405_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx110498110499_))))
                                (let ((_tl106381106410_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106379106405_)))
                                      (_hd106380106408_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106379106405_))))
                                  (___kont110500110501_
                                   _tl106381106410_
                                   _hd106380106408_)))
                              (___kont110502110503_)))))))
                 (_generate-values-post106251_
                  (lambda (_post106323_ _body106324_)
                    (let _lp106326_ ((_rest106328_ _post106323_)
                                     (_body106329_ _body106324_))
                      (let* ((_rest106330106338_ _rest106328_)
                             (_else106332106346_ (lambda () _body106329_))
                             (_K106334106352_
                              (lambda (_rest106349_ _bind106350_)
                                (let ((__tmp111574
                                       (let ((__tmp111575
                                              (let ((__tmp111576
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body106329_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _bind106350_
                                                      __tmp111576))))
                                         (declare (not safe))
                                         (cons 'let __tmp111575))))
                                  (declare (not safe))
                                  (_lp106326_ _rest106349_ __tmp111574)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest106330106338_))
                            (let ((_hd106335106355_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest106330106338_)))
                                  (_tl106336106357_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest106330106338_))))
                              (let* ((_bind106360_ _hd106335106355_)
                                     (_rest106362_ _tl106336106357_))
                                (declare (not safe))
                                (_K106334106352_ _rest106362_ _bind106360_)))
                            (let ()
                              (declare (not safe))
                              (_else106332106346_)))))))
                 (_generate-values-check106252_
                  (lambda (_check106320_ _body106321_)
                    (let ((__tmp111577
                           (let ((__tmp111579
                                  (let ()
                                    (declare (not safe))
                                    (cons _body106321_ '())))
                                 (__tmp111578 (reverse _check106320_)))
                             (declare (not safe))
                             (foldr1 cons __tmp111579 __tmp111578))))
                      (declare (not safe))
                      (cons 'begin __tmp111577)))))
          (let* ((_g106254106271_
                  (lambda (_g106255106268_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g106255106268_))))
                 (_g106253106317_
                  (lambda (_g106255106274_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g106255106274_))
                        (let ((_e106258106276_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g106255106274_))))
                          (let ((_hd106259106279_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e106258106276_)))
                                (_tl106260106281_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e106258106276_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl106260106281_))
                                (let ((_e106261106284_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl106260106281_))))
                                  (let ((_hd106262106287_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e106261106284_)))
                                        (_tl106263106289_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e106261106284_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl106263106289_))
                                        (let ((_e106264106292_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl106263106289_))))
                                          (let ((_hd106265106295_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e106264106292_)))
                                                (_tl106266106297_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e106264106292_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl106266106297_))
                                                ((lambda (_L106300_ _L106301_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L106301_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-simple106247_
                                                          _L106301_
                                                          _L106300_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values106250_
                                                          _L106301_
                                                          _L106300_))))
                                                 _hd106265106295_
                                                 _hd106262106287_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g106254106271_
                                                   _g106255106274_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g106254106271_ _g106255106274_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g106254106271_ _g106255106274_)))))
                        (let ()
                          (declare (not safe))
                          (_g106254106271_ _g106255106274_))))))
            (declare (not safe))
            (_g106253106317_ _stx106244_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_self106963_ _stx106964_)
        (let ((_compiled-body?106966_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-let-values%__%
           _self106963_
           _stx106964_
           _compiled-body?106966_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g111581_
        (let ((_g111580_ (let () (declare (not safe)) (##length _g111581_))))
          (cond ((let () (declare (not safe)) (##fx= _g111580_ 2))
                 (apply (lambda (_self106963_ _stx106964_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__0
                             _self106963_
                             _stx106964_)))
                        _g111581_))
                ((let () (declare (not safe)) (##fx= _g111580_ 3))
                 (apply (lambda (_self106968_
                                 _stx106969_
                                 _compiled-body?106970_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__%
                             _self106968_
                             _stx106969_
                             _compiled-body?106970_)))
                        _g111581_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g111581_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_vals106137_ _hd106138_)
        (let _lp106140_ ((_rest106142_ _hd106138_)
                         (_k106143_ '0)
                         (_r106144_ '()))
          (let* ((___stx110512110513_ _rest106142_)
                 (_g106149106166_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx110512110513_)))))
            (let ((___kont110514110515_
                   (lambda (_L106229_)
                     (let ((__tmp111582
                            (let () (declare (not safe)) (fx+ _k106143_ '1))))
                       (declare (not safe))
                       (_lp106140_ _L106229_ __tmp111582 _r106144_))))
                  (___kont110516110517_
                   (lambda (_L106202_ _L106203_)
                     (let ((__tmp111588
                            (let () (declare (not safe)) (fx+ _k106143_ '1)))
                           (__tmp111583
                            (let ((__tmp111584
                                   (let ((__tmp111587
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-binding-id
                                             _L106203_)))
                                         (__tmp111585
                                          (let ((__tmp111586
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-values-ref
                                                    _vals106137_
                                                    _k106143_
                                                    _L106202_))))
                                            (declare (not safe))
                                            (cons __tmp111586 '()))))
                                     (declare (not safe))
                                     (cons __tmp111587 __tmp111585))))
                              (declare (not safe))
                              (cons __tmp111584 _r106144_))))
                       (declare (not safe))
                       (_lp106140_ _L106202_ __tmp111588 __tmp111583))))
                  (___kont110518110519_
                   (lambda (_L106178_)
                     (let ((__tmp111589
                            (let ((__tmp111590
                                   (let ((__tmp111593
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-binding-id
                                             _L106178_)))
                                         (__tmp111591
                                          (let ((__tmp111592
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-values->list
                                                    _vals106137_
                                                    _k106143_))))
                                            (declare (not safe))
                                            (cons __tmp111592 '()))))
                                     (declare (not safe))
                                     (cons __tmp111593 __tmp111591))))
                              (declare (not safe))
                              (cons __tmp111590 '()))))
                       (declare (not safe))
                       (foldl1 cons __tmp111589 _r106144_))))
                  (___kont110520110521_ (lambda () (reverse _r106144_))))
              (let ((_g106147106189_
                     (lambda ()
                       (let ((_L106178_ ___stx110512110513_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _L106178_))
                             (___kont110518110519_ _L106178_)
                             (___kont110520110521_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx110512110513_))
                    (let ((_e106152106218_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx110512110513_))))
                      (let ((_tl106154106223_
                             (let ()
                               (declare (not safe))
                               (##cdr _e106152106218_)))
                            (_hd106153106221_
                             (let ()
                               (declare (not safe))
                               (##car _e106152106218_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _hd106153106221_))
                            (let ((_e106155106226_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd106153106221_))))
                              (if (let ()
                                    (declare (not safe))
                                    (equal? _e106155106226_ '#f))
                                  (___kont110514110515_ _tl106154106223_)
                                  (___kont110516110517_
                                   _tl106154106223_
                                   _hd106153106221_)))
                            (___kont110516110517_
                             _tl106154106223_
                             _hd106153106221_))))
                    (let () (declare (not safe)) (_g106147106189_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_self105816_ _stx105817_ _compiled-body?105818_)
        (letrec ((_generate-simple105820_
                  (lambda (_hd106122_ _body106123_)
                    (let ()
                      (declare (not safe))
                      (gxc#generate-runtime-simple-let
                       _self105816_
                       'letrec
                       _hd106122_
                       _body106123_
                       _compiled-body?105818_))))
                 (_generate-values105821_
                  (lambda (_hd105901_ _body105902_)
                    (let _lp105904_ ((_rest105906_ _hd105901_)
                                     (_bind105907_ '())
                                     (_check105908_ '())
                                     (_post105909_ '()))
                      (let* ((___stx110586110587_ _rest105906_)
                             (_g105912105923_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx110586110587_)))))
                        (let ((___kont110588110589_
                               (lambda (_L105950_ _L105951_)
                                 (let* ((___stx110542110543_ _L105951_)
                                        (_g105966105991_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx110542110543_)))))
                                   (let ((___kont110544110545_
                                          (lambda (_L106098_ _L106099_)
                                            (let ((_eid106113_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _L106099_)))
                                                  (_expr106114_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self105816_
                                                      _L106098_))))
                                              (let ((__tmp111594
                                                     (let ((__tmp111595
                                                            (let ((__tmp111596
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr106114_ '()))))
                      (declare (not safe))
                      (cons _eid106113_ __tmp111596))))
               (declare (not safe))
               (cons __tmp111595 _bind105907_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp105904_
                                                 _L105950_
                                                 __tmp111594
                                                 _check105908_
                                                 _post105909_)))))
                                         (___kont110546110547_
                                          (lambda (_L106012_ _L106013_)
                                            (let* ((_vals106026_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_check-values106028_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _vals106026_
                                                       _L106013_
                                                       _L106012_)))
                                                   (_refs106030_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _vals106026_
                                                       _L106013_)))
                                                   (_expr106032_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self105816_
                                                       _L106012_))))
                                              (let ((__tmp111599
                                                     (let ((__tmp111602
                                                            (let ((__tmp111603
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp111604
                                  (let ()
                                    (declare (not safe))
                                    (cons _expr106032_ '()))))
                             (declare (not safe))
                             (cons _vals106026_ __tmp111604))))
                      (declare (not safe))
                      (cons __tmp111603 _bind105907_)))
                   (__tmp111600
                    (map (lambda (_e106034106036_)
                           (let* ((_g106038106047_ _e106034106036_)
                                  (_E106040106051_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _g106038106047_))))
                                  (_K106041106056_
                                   (lambda (_eid106054_)
                                     (let ((__tmp111601
                                            (let ()
                                              (declare (not safe))
                                              (cons '#!void '()))))
                                       (declare (not safe))
                                       (cons _eid106054_ __tmp111601)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _g106038106047_))
                                 (let ((_hd106042106059_
                                        (let ()
                                          (declare (not safe))
                                          (##car _g106038106047_)))
                                       (_tl106043106061_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _g106038106047_))))
                                   (let ((_eid106064_ _hd106042106059_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##pair? _tl106043106061_))
                                         (let ((_tl106045106066_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _tl106043106061_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##null? _tl106045106066_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_K106041106056_ _eid106064_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_E106040106051_))))
                                         (let ()
                                           (declare (not safe))
                                           (_E106040106051_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_E106040106051_)))))
                         _refs106030_)))
               (declare (not safe))
               (foldl1 cons __tmp111602 __tmp111600)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp111598
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _check-values106028_
                                                             _check105908_)))
                                                    (__tmp111597
                                                     (let ()
                                                       (declare (not safe))
                                                       (foldl1 cons
                                                               _refs106030_
                                                               _post105909_))))
                                                (declare (not safe))
                                                (_lp105904_
                                                 _L105950_
                                                 __tmp111599
                                                 __tmp111598
                                                 __tmp111597))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx110542110543_))
                                         (let ((_e105970106074_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx110542110543_))))
                                           (let ((_tl105972106079_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e105970106074_)))
                                                 (_hd105971106077_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e105970106074_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _hd105971106077_))
                                                 (let ((_e105973106082_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _hd105971106077_))))
                                                   (let ((_tl105975106087_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e105973106082_)))
                                                         (_hd105974106085_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e105973106082_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl105975106087_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl105972106079_))
                     (let ((_e105976106090_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl105972106079_))))
                       (let ((_tl105978106095_
                              (let ()
                                (declare (not safe))
                                (##cdr _e105976106090_)))
                             (_hd105977106093_
                              (let ()
                                (declare (not safe))
                                (##car _e105976106090_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl105978106095_))
                             (___kont110544110545_
                              _hd105977106093_
                              _hd105974106085_)
                             (let () (declare (not safe)) (_g105966105991_)))))
                     (let () (declare (not safe)) (_g105966105991_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl105972106079_))
                     (let ((_e105984106004_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl105972106079_))))
                       (let ((_tl105986106009_
                              (let ()
                                (declare (not safe))
                                (##cdr _e105984106004_)))
                             (_hd105985106007_
                              (let ()
                                (declare (not safe))
                                (##car _e105984106004_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl105986106009_))
                             (___kont110546110547_
                              _hd105985106007_
                              _hd105971106077_)
                             (let () (declare (not safe)) (_g105966105991_)))))
                     (let () (declare (not safe)) (_g105966105991_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl105972106079_))
                                                     (let ((_e105984106004_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl105972106079_))))
                                                       (let ((_tl105986106009_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e105984106004_)))
                     (_hd105985106007_
                      (let () (declare (not safe)) (##car _e105984106004_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl105986106009_))
                     (___kont110546110547_ _hd105985106007_ _hd105971106077_)
                     (let () (declare (not safe)) (_g105966105991_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g105966105991_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g105966105991_)))))))
                              (___kont110590110591_
                               (lambda ()
                                 (let* ((_body105930_
                                         (if _compiled-body?105818_
                                             _body105902_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self105816_
                                                _body105902_))))
                                        (_body105932_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-post105823_
                                            _post105909_
                                            _body105930_)))
                                        (_body105934_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-check105822_
                                            _check105908_
                                            _body105932_))))
                                   (let ((__tmp111605
                                          (let ((__tmp111607
                                                 (reverse _bind105907_))
                                                (__tmp111606
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _body105934_ '()))))
                                            (declare (not safe))
                                            (cons __tmp111607 __tmp111606))))
                                     (declare (not safe))
                                     (cons 'letrec __tmp111605))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx110586110587_))
                              (let ((_e105916105942_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx110586110587_))))
                                (let ((_tl105918105947_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105916105942_)))
                                      (_hd105917105945_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105916105942_))))
                                  (___kont110588110589_
                                   _tl105918105947_
                                   _hd105917105945_)))
                              (___kont110590110591_)))))))
                 (_generate-values-check105822_
                  (lambda (_check105898_ _body105899_)
                    (let ((__tmp111608
                           (let ((__tmp111610
                                  (let ()
                                    (declare (not safe))
                                    (cons _body105899_ '())))
                                 (__tmp111609 (reverse _check105898_)))
                             (declare (not safe))
                             (foldr1 cons __tmp111610 __tmp111609))))
                      (declare (not safe))
                      (cons 'begin __tmp111608))))
                 (_generate-values-post105823_
                  (lambda (_post105891_ _body105892_)
                    (let ((__tmp111611
                           (let ((__tmp111613
                                  (let ()
                                    (declare (not safe))
                                    (cons _body105892_ '())))
                                 (__tmp111612
                                  (map (lambda (_g105893105895_)
                                         (let ()
                                           (declare (not safe))
                                           (cons 'set! _g105893105895_)))
                                       (reverse _post105891_))))
                             (declare (not safe))
                             (foldr1 cons __tmp111613 __tmp111612))))
                      (declare (not safe))
                      (cons 'begin __tmp111611)))))
          (let* ((_g105825105842_
                  (lambda (_g105826105839_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g105826105839_))))
                 (_g105824105888_
                  (lambda (_g105826105845_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g105826105845_))
                        (let ((_e105829105847_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g105826105845_))))
                          (let ((_hd105830105850_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105829105847_)))
                                (_tl105831105852_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105829105847_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl105831105852_))
                                (let ((_e105832105855_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl105831105852_))))
                                  (let ((_hd105833105858_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e105832105855_)))
                                        (_tl105834105860_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e105832105855_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl105834105860_))
                                        (let ((_e105835105863_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl105834105860_))))
                                          (let ((_hd105836105866_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e105835105863_)))
                                                (_tl105837105868_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e105835105863_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl105837105868_))
                                                ((lambda (_L105871_ _L105872_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L105872_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-simple105820_
                                                          _L105872_
                                                          _L105871_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values105821_
                                                          _L105872_
                                                          _L105871_))))
                                                 _hd105836105866_
                                                 _hd105833105858_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g105825105842_
                                                   _g105826105845_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g105825105842_ _g105826105845_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g105825105842_ _g105826105845_)))))
                        (let ()
                          (declare (not safe))
                          (_g105825105842_ _g105826105845_))))))
            (declare (not safe))
            (_g105824105888_ _stx105817_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_self106128_ _stx106129_)
        (let ((_compiled-body?106131_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-letrec-values%__%
           _self106128_
           _stx106129_
           _compiled-body?106131_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g111615_
        (let ((_g111614_ (let () (declare (not safe)) (##length _g111615_))))
          (cond ((let () (declare (not safe)) (##fx= _g111614_ 2))
                 (apply (lambda (_self106128_ _stx106129_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__0
                             _self106128_
                             _stx106129_)))
                        _g111615_))
                ((let () (declare (not safe)) (##fx= _g111614_ 3))
                 (apply (lambda (_self106133_
                                 _stx106134_
                                 _compiled-body?106135_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__%
                             _self106133_
                             _stx106134_
                             _compiled-body?106135_)))
                        _g111615_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g111615_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_self105397_ _stx105398_)
        (letrec ((_generate-values105400_
                  (lambda (_hd105643_ _body105644_)
                    (let _lp105646_ ((_rest105648_ _hd105643_)
                                     (_bind105649_ '()))
                      (let* ((_rest105650105658_ _rest105648_)
                             (_else105652105669_
                              (lambda ()
                                (let ((_bind105666_ (reverse _bind105649_))
                                      (_body105667_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self105397_
                                          _body105644_))))
                                  (let ((__tmp111616
                                         (let ((__tmp111617
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _body105667_ '()))))
                                           (declare (not safe))
                                           (cons _bind105666_ __tmp111617))))
                                    (declare (not safe))
                                    (cons 'letrec* __tmp111616)))))
                             (_K105654105803_
                              (lambda (_rest105672_ _hd-bind105673_)
                                (let* ((___stx110600110601_ _hd-bind105673_)
                                       (_g105676105701_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx110600110601_)))))
                                  (let ((___kont110602110603_
                                         (lambda (_L105782_ _L105783_)
                                           (let ((_eid105797_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _L105783_)))
                                                 (_expr105798_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _self105397_
                                                     _L105782_))))
                                             (let ((__tmp111618
                                                    (let ((__tmp111619
                                                           (let ((__tmp111620
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _expr105798_ '()))))
                     (declare (not safe))
                     (cons _eid105797_ __tmp111620))))
              (declare (not safe))
              (cons __tmp111619 _bind105649_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp105646_
                                                _rest105672_
                                                __tmp111618)))))
                                        (___kont110604110605_
                                         (lambda (_L105722_ _L105723_)
                                           (let* ((_vals105742_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_tmp105744_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_check-values105746_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-check-values
                                                      _tmp105744_
                                                      _L105723_
                                                      _L105722_)))
                                                  (_refs105748_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-let-values-bind
                                                      _vals105742_
                                                      _L105723_)))
                                                  (_expr105750_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self105397_
                                                      _L105722_))))
                                             (let ((__tmp111621
                                                    (let ((__tmp111622
                                                           (let ((__tmp111623
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp111624
                                 (let ((__tmp111625
                                        (let ((__tmp111626
                                               (let ((__tmp111629
                                                      (let ((__tmp111630
                                                             (let ((__tmp111631
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _expr105750_ '()))))
                       (declare (not safe))
                       (cons _tmp105744_ __tmp111631))))
                (declare (not safe))
                (cons __tmp111630 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp111627
                                                      (let ((__tmp111628
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _tmp105744_ '()))))
                (declare (not safe))
                (cons _check-values105746_ __tmp111628))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp111629
                                                       __tmp111627))))
                                          (declare (not safe))
                                          (cons 'let __tmp111626))))
                                   (declare (not safe))
                                   (cons __tmp111625 '()))))
                            (declare (not safe))
                            (cons _vals105742_ __tmp111624))))
                     (declare (not safe))
                     (cons __tmp111623 _bind105649_))))
              (declare (not safe))
              (foldl1 cons __tmp111622 _refs105748_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp105646_
                                                _rest105672_
                                                __tmp111621))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx110600110601_))
                                        (let ((_e105680105758_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx110600110601_))))
                                          (let ((_tl105682105763_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e105680105758_)))
                                                (_hd105681105761_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e105680105758_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd105681105761_))
                                                (let ((_e105683105766_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd105681105761_))))
                                                  (let ((_tl105685105771_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e105683105766_)))
                                                        (_hd105684105769_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e105683105766_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl105685105771_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl105682105763_))
                                                            (let ((_e105686105774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl105682105763_))))
                      (let ((_tl105688105779_
                             (let ()
                               (declare (not safe))
                               (##cdr _e105686105774_)))
                            (_hd105687105777_
                             (let ()
                               (declare (not safe))
                               (##car _e105686105774_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl105688105779_))
                            (___kont110602110603_
                             _hd105687105777_
                             _hd105684105769_)
                            (let () (declare (not safe)) (_g105676105701_)))))
                    (let () (declare (not safe)) (_g105676105701_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl105682105763_))
                    (let ((_e105694105714_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl105682105763_))))
                      (let ((_tl105696105719_
                             (let ()
                               (declare (not safe))
                               (##cdr _e105694105714_)))
                            (_hd105695105717_
                             (let ()
                               (declare (not safe))
                               (##car _e105694105714_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl105696105719_))
                            (___kont110604110605_
                             _hd105695105717_
                             _hd105681105761_)
                            (let () (declare (not safe)) (_g105676105701_)))))
                    (let () (declare (not safe)) (_g105676105701_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl105682105763_))
                                                    (let ((_e105694105714_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl105682105763_))))
                                                      (let ((_tl105696105719_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e105694105714_)))
                    (_hd105695105717_
                     (let () (declare (not safe)) (##car _e105694105714_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl105696105719_))
                    (___kont110604110605_ _hd105695105717_ _hd105681105761_)
                    (let () (declare (not safe)) (_g105676105701_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g105676105701_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g105676105701_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest105650105658_))
                            (let ((_hd105655105806_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest105650105658_)))
                                  (_tl105656105808_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest105650105658_))))
                              (let* ((_hd-bind105811_ _hd105655105806_)
                                     (_rest105813_ _tl105656105808_))
                                (declare (not safe))
                                (_K105654105803_
                                 _rest105813_
                                 _hd-bind105811_)))
                            (let ()
                              (declare (not safe))
                              (_else105652105669_)))))))
                 (_generate-letrec?105401_
                  (lambda (_hd105533_)
                    (let _lp105535_ ((_rest105537_ _hd105533_))
                      (let* ((_rest105538105546_ _rest105537_)
                             (_else105540105554_ (lambda () '#t))
                             (_K105542105631_
                              (lambda (_rest105557_ _hd-bind105558_)
                                (let* ((_g105560105577_
                                        (lambda (_g105561105574_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g105561105574_))))
                                       (_g105559105628_
                                        (lambda (_g105561105580_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _g105561105580_))
                                              (let ((_e105564105582_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _g105561105580_))))
                                                (let ((_hd105565105585_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e105564105582_)))
                                                      (_tl105566105587_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e105564105582_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd105565105585_))
                                                      (let ((_e105567105590_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd105565105585_))))
                (let ((_hd105568105593_
                       (let () (declare (not safe)) (##car _e105567105590_)))
                      (_tl105569105595_
                       (let () (declare (not safe)) (##cdr _e105567105590_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl105569105595_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl105566105587_))
                          (let ((_e105570105598_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl105566105587_))))
                            (let ((_hd105571105601_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e105570105598_)))
                                  (_tl105572105603_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e105570105598_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl105572105603_))
                                  ((lambda (_L105606_ _L105607_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_is-lambda-expr?105402_ _L105606_))
                                         (let ()
                                           (declare (not safe))
                                           (_lp105535_ _rest105557_))
                                         '#f))
                                   _hd105571105601_
                                   _hd105568105593_)
                                  (let ()
                                    (declare (not safe))
                                    (_g105560105577_ _g105561105580_)))))
                          (let ()
                            (declare (not safe))
                            (_g105560105577_ _g105561105580_)))
                      (let ()
                        (declare (not safe))
                        (_g105560105577_ _g105561105580_)))))
              (let ()
                (declare (not safe))
                (_g105560105577_ _g105561105580_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g105560105577_
                                                 _g105561105580_))))))
                                  (declare (not safe))
                                  (_g105559105628_ _hd-bind105558_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest105538105546_))
                            (let ((_hd105543105634_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest105538105546_)))
                                  (_tl105544105636_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest105538105546_))))
                              (let* ((_hd-bind105639_ _hd105543105634_)
                                     (_rest105641_ _tl105544105636_))
                                (declare (not safe))
                                (_K105542105631_
                                 _rest105641_
                                 _hd-bind105639_)))
                            (let ()
                              (declare (not safe))
                              (_else105540105554_)))))))
                 (_is-lambda-expr?105402_
                  (lambda (_expr105470_)
                    (let* ((___stx110644110645_ _expr105470_)
                           (_g105473105487_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx110644110645_)))))
                      (let ((___kont110646110647_
                             (lambda (_L105515_ _L105516_) '#t))
                            (___kont110648110649_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? ___stx110644110645_))
                            (let ((_e105477105499_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e ___stx110644110645_))))
                              (let ((_tl105479105504_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e105477105499_)))
                                    (_hd105478105502_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e105477105499_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd105478105502_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd105478105502_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl105479105504_))
                                            (let ((_e105480105507_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl105479105504_))))
                                              (let ((_tl105482105512_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e105480105507_)))
                                                    (_hd105481105510_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e105480105507_))))
                                                (___kont110646110647_
                                                 _tl105482105512_
                                                 _hd105481105510_)))
                                            (___kont110648110649_))
                                        (___kont110648110649_))
                                    (___kont110648110649_))))
                            (___kont110648110649_)))))))
          (let* ((_g105404105421_
                  (lambda (_g105405105418_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g105405105418_))))
                 (_g105403105467_
                  (lambda (_g105405105424_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g105405105424_))
                        (let ((_e105408105426_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g105405105424_))))
                          (let ((_hd105409105429_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105408105426_)))
                                (_tl105410105431_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105408105426_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl105410105431_))
                                (let ((_e105411105434_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl105410105431_))))
                                  (let ((_hd105412105437_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e105411105434_)))
                                        (_tl105413105439_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e105411105434_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl105413105439_))
                                        (let ((_e105414105442_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl105413105439_))))
                                          (let ((_hd105415105445_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e105414105442_)))
                                                (_tl105416105447_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e105414105442_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl105416105447_))
                                                ((lambda (_L105450_ _L105451_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L105451_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-letrec?105401_
                                                              _L105451_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _self105397_
                                                              'letrec
                                                              _L105451_
                                                              _L105450_
                                                              '#f))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _self105397_
                                                              'letrec*
                                                              _L105451_
                                                              _L105450_
                                                              '#f)))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values105400_
                                                          _L105451_
                                                          _L105450_))))
                                                 _hd105415105445_
                                                 _hd105412105437_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g105404105421_
                                                   _g105405105424_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g105404105421_ _g105405105424_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g105404105421_ _g105405105424_)))))
                        (let ()
                          (declare (not safe))
                          (_g105404105421_ _g105405105424_))))))
            (declare (not safe))
            (_g105403105467_ _stx105398_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_hd105334_)
        (let _lp105336_ ((_rest105338_ _hd105334_))
          (let* ((_rest105339105355_ _rest105338_)
                 (_else105342105363_ (lambda () '#f)))
            (let ((_K105345105376_
                   (lambda (_rest105374_)
                     (let () (declare (not safe)) (_lp105336_ _rest105374_))))
                  (_K105344105368_ (lambda () '#t)))
              (let ((_try-match105341105371_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest105339105355_))
                           (let () (declare (not safe)) (_K105344105368_))
                           (let ()
                             (declare (not safe))
                             (_else105342105363_))))))
                (if (let () (declare (not safe)) (##pair? _rest105339105355_))
                    (let ((_tl105347105381_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest105339105355_)))
                          (_hd105346105379_
                           (let ()
                             (declare (not safe))
                             (##car _rest105339105355_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _hd105346105379_))
                          (let ((_tl105349105386_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _hd105346105379_)))
                                (_hd105348105384_
                                 (let ()
                                   (declare (not safe))
                                   (##car _hd105346105379_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd105348105384_))
                                (let ((_tl105353105389_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd105348105384_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl105353105389_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl105349105386_))
                                          (let ((_tl105351105392_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl105349105386_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _tl105351105392_))
                                                (let ((_rest105395_
                                                       _tl105347105381_))
                                                  (declare (not safe))
                                                  (_lp105336_ _rest105395_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_else105342105363_))))
                                          (let ()
                                            (declare (not safe))
                                            (_else105342105363_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else105342105363_))))
                                (let ()
                                  (declare (not safe))
                                  (_else105342105363_))))
                          (let () (declare (not safe)) (_else105342105363_))))
                    (let ()
                      (declare (not safe))
                      (_try-match105341105371_)))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_self105245_
               _form105246_
               _hd105247_
               _body105248_
               _compiled-body?105249_)
        (letrec ((_generate1105251_
                  (lambda (_bind105290_)
                    (let* ((_bind105291105302_ _bind105290_)
                           (_E105293105306_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _bind105291105302_))))
                           (_K105294105312_
                            (lambda (_expr105309_ _id105310_)
                              (let ((__tmp111634
                                     (let ()
                                       (declare (not safe))
                                       (gxc#generate-runtime-binding-id*
                                        _id105310_)))
                                    (__tmp111632
                                     (let ((__tmp111633
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self105245_
                                               _expr105309_))))
                                       (declare (not safe))
                                       (cons __tmp111633 '()))))
                                (declare (not safe))
                                (cons __tmp111634 __tmp111632)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _bind105291105302_))
                          (let ((_hd105295105315_
                                 (let ()
                                   (declare (not safe))
                                   (##car _bind105291105302_)))
                                (_tl105296105317_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _bind105291105302_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd105295105315_))
                                (let ((_hd105299105320_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd105295105315_)))
                                      (_tl105300105322_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd105295105315_))))
                                  (let ((_id105325_ _hd105299105320_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl105300105322_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl105296105317_))
                                            (let ((_hd105297105327_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl105296105317_)))
                                                  (_tl105298105329_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl105296105317_))))
                                              (let ((_expr105332_
                                                     _hd105297105327_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _tl105298105329_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K105294105312_
                                                       _expr105332_
                                                       _id105325_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E105293105306_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_E105293105306_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E105293105306_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E105293105306_))))
                          (let () (declare (not safe)) (_E105293105306_)))))))
          (let* ((_bind105253_ (map _generate1105251_ _hd105247_))
                 (_body105255_
                  (if _compiled-body?105249_
                      _body105248_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self105245_ _body105248_))))
                 (_body105287_
                  (let* ((_body105256105264_ _body105255_)
                         (_else105258105272_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (cons _body105255_ '()))))
                         (_K105260105277_
                          (lambda (_exprs105275_) _exprs105275_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _body105256105264_))
                        (let ((_hd105261105280_
                               (let ()
                                 (declare (not safe))
                                 (##car _body105256105264_)))
                              (_tl105262105282_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _body105256105264_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _hd105261105280_ 'begin))
                              (let ((_exprs105285_ _tl105262105282_))
                                (declare (not safe))
                                (_K105260105277_ _exprs105285_))
                              (let ()
                                (declare (not safe))
                                (_else105258105272_))))
                        (let () (declare (not safe)) (_else105258105272_))))))
            (let ((__tmp111635
                   (let ()
                     (declare (not safe))
                     (cons _bind105253_ _body105287_))))
              (declare (not safe))
              (cons _form105246_ __tmp111635))))))
    (define gxc#generate-runtime-quote%
      (lambda (_self105152_ _stx105153_)
        (letrec ((_generate1105155_
                  (lambda (_datum105207_)
                    (if (or (let () (declare (not safe)) (null? _datum105207_))
                            (interned-symbol? _datum105207_)
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _datum105207_))
                            (let ()
                              (declare (not safe))
                              (eof-object? _datum105207_)))
                        _datum105207_
                        (if (uninterned-symbol? _datum105207_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _datum105207_
                               '#t))
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _datum105207_))
                                (let ((__tmp111638
                                       (let ((__tmp111639 (car _datum105207_)))
                                         (declare (not safe))
                                         (_generate1105155_ __tmp111639)))
                                      (__tmp111636
                                       (let ((__tmp111637 (cdr _datum105207_)))
                                         (declare (not safe))
                                         (_generate1105155_ __tmp111637))))
                                  (declare (not safe))
                                  (cons __tmp111638 __tmp111636))
                                (if (let ()
                                      (declare (not safe))
                                      (box? _datum105207_))
                                    (let ((__tmp111640
                                           (let ((__tmp111641
                                                  (unbox _datum105207_)))
                                             (declare (not safe))
                                             (_generate1105155_ __tmp111641))))
                                      (declare (not safe))
                                      (box __tmp111640))
                                    (if (let ()
                                          (declare (not safe))
                                          (vector? _datum105207_))
                                        (vector-map
                                         _generate1105155_
                                         _datum105207_)
                                        (if (or (s8vector? _datum105207_)
                                                (let ()
                                                  (declare (not safe))
                                                  (u8vector? _datum105207_))
                                                (s16vector? _datum105207_)
                                                (u16vector? _datum105207_)
                                                (s32vector? _datum105207_)
                                                (u32vector? _datum105207_)
                                                (s64vector? _datum105207_)
                                                (u64vector? _datum105207_)
                                                (f32vector? _datum105207_)
                                                (f64vector? _datum105207_))
                                            _datum105207_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _stx105153_)))))))))))
          (let* ((_g105157105170_
                  (lambda (_g105158105167_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g105158105167_))))
                 (_g105156105204_
                  (lambda (_g105158105173_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g105158105173_))
                        (let ((_e105160105175_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g105158105173_))))
                          (let ((_hd105161105178_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105160105175_)))
                                (_tl105162105180_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105160105175_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl105162105180_))
                                (let ((_e105163105183_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl105162105180_))))
                                  (let ((_hd105164105186_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e105163105183_)))
                                        (_tl105165105188_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e105163105183_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl105165105188_))
                                        ((lambda (_L105191_)
                                           (let ((__tmp111642
                                                  (let ((__tmp111643
                                                         (let ((__tmp111644
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L105191_))))
                   (declare (not safe))
                   (_generate1105155_ __tmp111644))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp111643 '()))))
                                             (declare (not safe))
                                             (cons 'quote __tmp111642)))
                                         _hd105164105186_)
                                        (let ()
                                          (declare (not safe))
                                          (_g105157105170_ _g105158105173_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g105157105170_ _g105158105173_)))))
                        (let ()
                          (declare (not safe))
                          (_g105157105170_ _g105158105173_))))))
            (declare (not safe))
            (_g105156105204_ _stx105153_)))))
    (define gxc#generate-runtime-call%
      (lambda (_self104665_ _stx104666_)
        (letrec ((_compile-call104668_
                  (lambda (_rator104892_ _rands104893_)
                    (let ((_rator104899_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self104665_ _rator104892_)))
                          (_rands104900_
                           (map (lambda (_g104894104896_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self104665_
                                     _g104894104896_)))
                                _rands104893_)))
                      (let* ((___stx110691110692_ _rator104899_)
                             (_g104903104955_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx110691110692_)))))
                        (let ((___kont110693110694_
                               (lambda (_L105079_
                                        _L105080_
                                        _L105081_
                                        _L105082_)
                                 (if (fx= (length _rands104900_)
                                          (length (let ((__tmp111645
                                                         (lambda (_g105118105121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g105119105123_)
                   (let ()
                     (declare (not safe))
                     (cons _g105118105121_ _g105119105123_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp111645
                                                            '()
                                                            _L105081_))))
                                     (let* ((_id105126_ _L105082_)
                                            (_args105135_
                                             (let ((__tmp111646
                                                    (lambda (_g105127105130_
                                                             _g105128105132_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g105127105130_
                                                              _g105128105132_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp111646
                                                       '()
                                                       _L105081_)))
                                            (_body105144_
                                             (let ((__tmp111647
                                                    (lambda (_g105136105139_
                                                             _g105137105141_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g105136105139_
                                                              _g105137105141_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp111647
                                                       '()
                                                       _L105080_)))
                                            (_init105146_
                                             (map list
                                                  _args105135_
                                                  _rands104900_)))
                                       (let ((__tmp111648
                                              (let ((__tmp111649
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _init105146_
                                                             _body105144_))))
                                                (declare (not safe))
                                                (cons _id105126_
                                                      __tmp111649))))
                                         (declare (not safe))
                                         (cons 'let __tmp111648)))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _stx104666_)))))
                              (___kont110699110700_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (cons _rator104899_ _rands104900_)))))
                          (let ((___match110758110759_
                                 (lambda (_e104909104967_
                                          _hd104910104970_
                                          _tl104911104972_
                                          _e104912104975_
                                          _hd104913104978_
                                          _tl104914104980_
                                          _e104915104983_
                                          _hd104916104986_
                                          _tl104917104988_
                                          _e104918104991_
                                          _hd104919104994_
                                          _tl104920104996_
                                          _e104921104999_
                                          _hd104922105002_
                                          _tl104923105004_
                                          _e104924105007_
                                          _hd104925105010_
                                          _tl104926105012_
                                          _e104927105015_
                                          _hd104928105018_
                                          _tl104929105020_
                                          ___splice110695110696_
                                          _target104930105023_
                                          _tl104932105025_)
                                   (letrec ((_loop104933105028_
                                             (lambda (_hd104931105031_
                                                      _arg104937105033_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd104931105031_))
                                                   (let ((_e104934105036_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd104931105031_))))
                                                     (let ((_lp-tl104936105041_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e104934105036_)))
                                                           (_lp-hd104935105039_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e104934105036_))))
                                                       (let ((__tmp111650
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _lp-hd104935105039_ _arg104937105033_))))
                 (declare (not safe))
                 (_loop104933105028_ _lp-tl104936105041_ __tmp111650))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_arg104938105044_
                                                          (reverse _arg104937105033_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _tl104929105020_))
                                                         (let ((___splice110697110698_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _tl104929105020_ '0))))
                   (let ((_tl104941105049_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice110697110698_ '1)))
                         (_target104939105047_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice110697110698_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl104941105049_))
                         (letrec ((_loop104942105052_
                                   (lambda (_hd104940105055_
                                            _body104946105057_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd104940105055_))
                                         (let ((_e104943105060_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd104940105055_))))
                                           (let ((_lp-tl104945105065_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e104943105060_)))
                                                 (_lp-hd104944105063_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e104943105060_))))
                                             (let ((__tmp111651
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd104944105063_
                                                            _body104946105057_))))
                                               (declare (not safe))
                                               (_loop104942105052_
                                                _lp-tl104945105065_
                                                __tmp111651))))
                                         (let ((_body104947105068_
                                                (reverse _body104946105057_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl104923105004_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl104917104988_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl104914104980_))
                                                       (let ((_e104948105071_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl104914104980_))))
                 (let ((_tl104950105076_
                        (let () (declare (not safe)) (##cdr _e104948105071_)))
                       (_hd104949105074_
                        (let () (declare (not safe)) (##car _e104948105071_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl104950105076_))
                       (let ((_L105079_ _hd104949105074_)
                             (_L105080_ _body104947105068_)
                             (_L105081_ _arg104938105044_)
                             (_L105082_ _hd104919104994_))
                         (if (let ()
                               (declare (not safe))
                               (eq? _L105082_ _L105079_))
                             (___kont110693110694_
                              _L105079_
                              _L105080_
                              _L105081_
                              _L105082_)
                             (___kont110699110700_)))
                       (___kont110699110700_))))
               (___kont110699110700_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont110699110700_))
                                               (___kont110699110700_)))))))
                           (let ()
                             (declare (not safe))
                             (_loop104942105052_ _target104939105047_ '())))
                         (___kont110699110700_))))
                 (___kont110699110700_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ()
                                       (declare (not safe))
                                       (_loop104933105028_
                                        _target104930105023_
                                        '()))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? ___stx110691110692_))
                                (let ((_e104909104967_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e ___stx110691110692_))))
                                  (let ((_tl104911104972_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e104909104967_)))
                                        (_hd104910104970_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e104909104967_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd104910104970_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _hd104910104970_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl104911104972_))
                                                (let ((_e104912104975_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl104911104972_))))
                                                  (let ((_tl104914104980_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e104912104975_)))
                                                        (_hd104913104978_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e104912104975_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd104913104978_))
                                                        (let ((_e104915104983_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd104913104978_))))
                  (let ((_tl104917104988_
                         (let () (declare (not safe)) (##cdr _e104915104983_)))
                        (_hd104916104986_
                         (let ()
                           (declare (not safe))
                           (##car _e104915104983_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd104916104986_))
                        (let ((_e104918104991_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd104916104986_))))
                          (let ((_tl104920104996_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104918104991_)))
                                (_hd104919104994_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104918104991_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl104920104996_))
                                (let ((_e104921104999_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl104920104996_))))
                                  (let ((_tl104923105004_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e104921104999_)))
                                        (_hd104922105002_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e104921104999_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd104922105002_))
                                        (let ((_e104924105007_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd104922105002_))))
                                          (let ((_tl104926105012_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e104924105007_)))
                                                (_hd104925105010_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e104924105007_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd104925105010_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _hd104925105010_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl104926105012_))
                                                        (let ((_e104927105015_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl104926105012_))))
                  (let ((_tl104929105020_
                         (let () (declare (not safe)) (##cdr _e104927105015_)))
                        (_hd104928105018_
                         (let ()
                           (declare (not safe))
                           (##car _e104927105015_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _hd104928105018_))
                        (let ((___splice110695110696_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _hd104928105018_
                                  '0))))
                          (let ((_tl104932105025_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice110695110696_ '1)))
                                (_target104930105023_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice110695110696_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl104932105025_))
                                (___match110758110759_
                                 _e104909104967_
                                 _hd104910104970_
                                 _tl104911104972_
                                 _e104912104975_
                                 _hd104913104978_
                                 _tl104914104980_
                                 _e104915104983_
                                 _hd104916104986_
                                 _tl104917104988_
                                 _e104918104991_
                                 _hd104919104994_
                                 _tl104920104996_
                                 _e104921104999_
                                 _hd104922105002_
                                 _tl104923105004_
                                 _e104924105007_
                                 _hd104925105010_
                                 _tl104926105012_
                                 _e104927105015_
                                 _hd104928105018_
                                 _tl104929105020_
                                 ___splice110695110696_
                                 _target104930105023_
                                 _tl104932105025_)
                                (___kont110699110700_))))
                        (___kont110699110700_))))
                (___kont110699110700_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont110699110700_))
                                                (___kont110699110700_))))
                                        (___kont110699110700_))))
                                (___kont110699110700_))))
                        (___kont110699110700_))))
                (___kont110699110700_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont110699110700_))
                                            (___kont110699110700_))
                                        (___kont110699110700_))))
                                (___kont110699110700_)))))))))
          (let* ((_g104670104684_
                  (lambda (_g104671104681_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104671104681_))))
                 (_g104669104889_
                  (lambda (_g104671104687_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104671104687_))
                        (let ((_e104674104689_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104671104687_))))
                          (let ((_hd104675104692_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104674104689_)))
                                (_tl104676104694_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104674104689_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl104676104694_))
                                (let ((_e104677104697_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl104676104694_))))
                                  (let ((_hd104678104700_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e104677104697_)))
                                        (_tl104679104702_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e104677104697_))))
                                    ((lambda (_L104705_ _L104706_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gxc#current-compile-decls-unsafe?))
                                           (let ()
                                             (declare (not safe))
                                             (_compile-call104668_
                                              _L104706_
                                              _L104705_))
                                           (let* ((___stx110807110808_
                                                   _L104706_)
                                                  (_g104721104733_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx110807110808_)))))
                                             (let ((___kont110809110810_
                                                    (lambda ()
                                                      (let ((_f104763_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _self104665_ _L104706_))))
                (if (let ((__tmp111652 (symbol->string _f104763_)))
                      (declare (not safe))
                      (string-prefix? '"##" __tmp111652))
                    (let _lp104765_ ((_rest104768_ (reverse _L104705_))
                                     (_bind104770_ '())
                                     (_args104771_ '()))
                      (let* ((_rest104772104780_ _rest104768_)
                             (_else104774104788_
                              (lambda ()
                                (let ((__tmp111653
                                       (let ((__tmp111654
                                              (let ((__tmp111655
                                                     (let ((__tmp111656
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _f104763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _args104771_))))
               (declare (not safe))
               (cons __tmp111656 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(declare (not safe))
                                                      __tmp111655))))
                                         (declare (not safe))
                                         (cons _bind104770_ __tmp111654))))
                                  (declare (not safe))
                                  (cons 'let __tmp111653))))
                             (_K104776104874_
                              (lambda (_rest104791_ _e104792_)
                                (let* ((___stx110761110762_ _e104792_)
                                       (_g104797104815_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx110761110762_)))))
                                  (let ((___kont110763110764_
                                         (lambda ()
                                           (let ((__tmp111657
                                                  (let ((__tmp111658
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _e104792_))))
                                                    (declare (not safe))
                                                    (cons __tmp111658
                                                          _args104771_))))
                                             (declare (not safe))
                                             (_lp104765_
                                              _rest104791_
                                              _bind104770_
                                              __tmp111657))))
                                        (___kont110765110766_
                                         (lambda ()
                                           (let ((__tmp111659
                                                  (let ((__tmp111660
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _e104792_))))
                                                    (declare (not safe))
                                                    (cons __tmp111660
                                                          _args104771_))))
                                             (declare (not safe))
                                             (_lp104765_
                                              _rest104791_
                                              _bind104770_
                                              __tmp111659))))
                                        (___kont110767110768_
                                         (lambda ()
                                           (let ((_tmp104822_
                                                  (let ((__tmp111661
                                                         (gensym '__tmp)))
                                                    (declare (not safe))
                                                    (make-symbol__0
                                                     __tmp111661))))
                                             (let ((__tmp111663
                                                    (let ((__tmp111664
                                                           (let ((__tmp111665
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp111666
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _e104792_))))
                            (declare (not safe))
                            (cons __tmp111666 '()))))
                     (declare (not safe))
                     (cons _tmp104822_ __tmp111665))))
              (declare (not safe))
              (cons __tmp111664 _bind104770_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp111662
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _tmp104822_
                                                            _args104771_))))
                                               (declare (not safe))
                                               (_lp104765_
                                                _rest104791_
                                                __tmp111663
                                                __tmp111662))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx110761110762_))
                                        (let ((_e104799104853_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx110761110762_))))
                                          (let ((_tl104801104858_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e104799104853_)))
                                                (_hd104800104856_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e104799104853_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd104800104856_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd104800104856_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl104801104858_))
                                                        (let ((_e104802104861_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl104801104858_))))
                  (let ((_tl104804104866_
                         (let () (declare (not safe)) (##cdr _e104802104861_)))
                        (_hd104803104864_
                         (let ()
                           (declare (not safe))
                           (##car _e104802104861_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl104804104866_))
                        (___kont110763110764_)
                        (___kont110767110768_))))
                (___kont110767110768_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#quote
                                                           _hd104800104856_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl104801104858_))
                                                            (let ((_e104808104838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl104801104858_))))
                      (let ((_tl104810104843_
                             (let ()
                               (declare (not safe))
                               (##cdr _e104808104838_)))
                            (_hd104809104841_
                             (let ()
                               (declare (not safe))
                               (##car _e104808104838_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl104810104843_))
                            (___kont110765110766_)
                            (___kont110767110768_))))
                    (___kont110767110768_))
                (___kont110767110768_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont110767110768_))))
                                        (___kont110767110768_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest104772104780_))
                            (let ((_hd104777104877_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest104772104780_)))
                                  (_tl104778104879_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest104772104780_))))
                              (let* ((_e104882_ _hd104777104877_)
                                     (_rest104884_ _tl104778104879_))
                                (declare (not safe))
                                (_K104776104874_ _rest104884_ _e104882_)))
                            (let ()
                              (declare (not safe))
                              (_else104774104788_)))))
                    (let ()
                      (declare (not safe))
                      (_compile-call104668_ _L104706_ _L104705_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont110811110812_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (_compile-call104668_
                                                         _L104706_
                                                         _L104705_)))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      ___stx110807110808_))
                                                   (let ((_e104723104745_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             ___stx110807110808_))))
                                                     (let ((_tl104725104750_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e104723104745_)))
                                                           (_hd104724104748_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e104723104745_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#identifier?
                                                              _hd104724104748_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-eq? '%#ref _hd104724104748_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl104725104750_))
                           (let ((_e104726104753_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl104725104750_))))
                             (let ((_tl104728104758_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e104726104753_)))
                                   (_hd104727104756_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e104726104753_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl104728104758_))
                                   (___kont110809110810_)
                                   (___kont110811110812_))))
                           (___kont110811110812_))
                       (___kont110811110812_))
                   (___kont110811110812_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont110811110812_))))))
                                     _tl104679104702_
                                     _hd104678104700_)))
                                (let ()
                                  (declare (not safe))
                                  (_g104670104684_ _g104671104687_)))))
                        (let ()
                          (declare (not safe))
                          (_g104670104684_ _g104671104687_))))))
            (declare (not safe))
            (_g104669104889_ _stx104666_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_self104452_ _stx104453_)
        (let* ((___stx110879110880_ _stx104453_)
               (_g104456104476_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx110879110880_)))))
          (let ((___kont110881110882_
                 (lambda (_L104520_ _L104521_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-decls-unsafe?))
                       (let ()
                         (declare (not safe))
                         (gxc#generate-runtime-call% _self104452_ _stx104453_))
                       (let ((_f104539_
                              (let ((__tmp111667
                                     (let ((__tmp111669
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               '%#ref)))
                                           (__tmp111668
                                            (let ()
                                              (declare (not safe))
                                              (cons _L104521_ '()))))
                                       (declare (not safe))
                                       (cons __tmp111669 __tmp111668))))
                                (declare (not safe))
                                (gxc#compile-e__1 _self104452_ __tmp111667))))
                         (let _lp104541_ ((_rest104544_ (reverse _L104520_))
                                          (_bind104546_ '())
                                          (_args104547_ '()))
                           (let* ((_rest104548104556_ _rest104544_)
                                  (_else104550104564_
                                   (lambda ()
                                     (let ((__tmp111670
                                            (let ((__tmp111671
                                                   (let ((__tmp111672
                                                          (let ((__tmp111673
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _f104539_ _args104547_))))
                    (declare (not safe))
                    (cons __tmp111673 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '(declare
                                                              (not safe))
                                                           __tmp111672))))
                                              (declare (not safe))
                                              (cons _bind104546_
                                                    __tmp111671))))
                                       (declare (not safe))
                                       (cons 'let __tmp111670))))
                                  (_K104552104650_
                                   (lambda (_rest104567_ _e104568_)
                                     (let* ((___stx110833110834_ _e104568_)
                                            (_g104573104591_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  ___stx110833110834_)))))
                                       (let ((___kont110835110836_
                                              (lambda ()
                                                (let ((__tmp111674
                                                       (let ((__tmp111675
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _e104568_))))
                 (declare (not safe))
                 (cons __tmp111675 _args104547_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp104541_
                                                   _rest104567_
                                                   _bind104546_
                                                   __tmp111674))))
                                             (___kont110837110838_
                                              (lambda ()
                                                (let ((__tmp111676
                                                       (let ((__tmp111677
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _e104568_))))
                 (declare (not safe))
                 (cons __tmp111677 _args104547_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp104541_
                                                   _rest104567_
                                                   _bind104546_
                                                   __tmp111676))))
                                             (___kont110839110840_
                                              (lambda ()
                                                (let ((_tmp104598_
                                                       (let ((__tmp111678
                                                              (gensym '__tmp)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp111678))))
                                                  (let ((__tmp111680
                                                         (let ((__tmp111681
                                                                (let ((__tmp111682
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp111683
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__0 _e104568_))))
                                 (declare (not safe))
                                 (cons __tmp111683 '()))))
                          (declare (not safe))
                          (cons _tmp104598_ __tmp111682))))
                   (declare (not safe))
                   (cons __tmp111681 _bind104546_)))
                (__tmp111679
                 (let ()
                   (declare (not safe))
                   (cons _tmp104598_ _args104547_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_lp104541_
                                                     _rest104567_
                                                     __tmp111680
                                                     __tmp111679))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                ___stx110833110834_))
                                             (let ((_e104575104629_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       ___stx110833110834_))))
                                               (let ((_tl104577104634_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e104575104629_)))
                                                     (_hd104576104632_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e104575104629_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _hd104576104632_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _hd104576104632_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl104577104634_))
                     (let ((_e104578104637_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl104577104634_))))
                       (let ((_tl104580104642_
                              (let ()
                                (declare (not safe))
                                (##cdr _e104578104637_)))
                             (_hd104579104640_
                              (let ()
                                (declare (not safe))
                                (##car _e104578104637_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl104580104642_))
                             (___kont110835110836_)
                             (___kont110839110840_))))
                     (___kont110839110840_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _hd104576104632_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _tl104577104634_))
                         (let ((_e104584104614_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _tl104577104634_))))
                           (let ((_tl104586104619_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e104584104614_)))
                                 (_hd104585104617_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e104584104614_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _tl104586104619_))
                                 (___kont110837110838_)
                                 (___kont110839110840_))))
                         (___kont110839110840_))
                     (___kont110839110840_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont110839110840_))))
                                             (___kont110839110840_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _rest104548104556_))
                                 (let ((_hd104553104653_
                                        (let ()
                                          (declare (not safe))
                                          (##car _rest104548104556_)))
                                       (_tl104554104655_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _rest104548104556_))))
                                   (let* ((_e104658_ _hd104553104653_)
                                          (_rest104660_ _tl104554104655_))
                                     (declare (not safe))
                                     (_K104552104650_ _rest104660_ _e104658_)))
                                 (let ()
                                   (declare (not safe))
                                   (_else104550104564_)))))))))
                (___kont110883110884_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#generate-runtime-call% _self104452_ _stx104453_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx110879110880_))
                (let ((_e104460104488_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx110879110880_))))
                  (let ((_tl104462104493_
                         (let () (declare (not safe)) (##cdr _e104460104488_)))
                        (_hd104461104491_
                         (let ()
                           (declare (not safe))
                           (##car _e104460104488_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl104462104493_))
                        (let ((_e104463104496_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl104462104493_))))
                          (let ((_tl104465104501_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104463104496_)))
                                (_hd104464104499_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104463104496_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd104464104499_))
                                (let ((_e104466104504_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd104464104499_))))
                                  (let ((_tl104468104509_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e104466104504_)))
                                        (_hd104467104507_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e104466104504_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd104467104507_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd104467104507_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl104468104509_))
                                                (let ((_e104469104512_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl104468104509_))))
                                                  (let ((_tl104471104517_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e104469104512_)))
                                                        (_hd104470104515_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e104469104512_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl104471104517_))
                                                        (___kont110881110882_
                                                         _tl104465104501_
                                                         _hd104470104515_)
                                                        (___kont110883110884_))))
                                                (___kont110883110884_))
                                            (___kont110883110884_))
                                        (___kont110883110884_))))
                                (___kont110883110884_))))
                        (___kont110883110884_))))
                (___kont110883110884_))))))
    (define gxc#generate-runtime-if%
      (lambda (_self104264_ _stx104265_)
        (letrec ((_simplify104267_
                  (lambda (_code104352_)
                    (let* ((_code104353104371_ _code104352_)
                           (_else104355104379_ (lambda () _code104352_))
                           (_K104357104415_
                            (lambda (_expr104382_ _test104383_)
                              (let* ((_expr104384104392_ _expr104382_)
                                     (_else104386104400_
                                      (lambda ()
                                        (let ((__tmp111684
                                               (let ((__tmp111685
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _expr104382_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _test104383_
                                                       __tmp111685))))
                                          (declare (not safe))
                                          (cons 'and __tmp111684))))
                                     (_K104388104405_
                                      (lambda (_exprs104403_)
                                        (let ((__tmp111686
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _test104383_
                                                       _exprs104403_))))
                                          (declare (not safe))
                                          (cons 'and __tmp111686)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _expr104384104392_))
                                    (let ((_hd104389104408_
                                           (let ()
                                             (declare (not safe))
                                             (##car _expr104384104392_)))
                                          (_tl104390104410_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _expr104384104392_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd104389104408_ 'and))
                                          (let ((_exprs104413_
                                                 _tl104390104410_))
                                            (declare (not safe))
                                            (_K104388104405_ _exprs104413_))
                                          (let ()
                                            (declare (not safe))
                                            (_else104386104400_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else104386104400_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _code104353104371_))
                          (let ((_hd104358104418_
                                 (let ()
                                   (declare (not safe))
                                   (##car _code104353104371_)))
                                (_tl104359104420_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _code104353104371_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _hd104358104418_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl104359104420_))
                                    (let ((_hd104360104423_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl104359104420_)))
                                          (_tl104361104425_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl104359104420_))))
                                      (let ((_test104428_ _hd104360104423_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl104361104425_))
                                            (let ((_hd104362104430_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl104361104425_)))
                                                  (_tl104363104432_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl104361104425_))))
                                              (let ((_expr104435_
                                                     _hd104362104430_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl104363104432_))
                                                    (let ((_hd104364104437_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl104363104432_)))
                                                          (_tl104365104439_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl104363104432_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _hd104364104437_))
                                                          (let ((_hd104366104442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _hd104364104437_)))
                        (_tl104367104444_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd104364104437_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd104366104442_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl104367104444_))
                            (let ((_hd104368104447_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl104367104444_)))
                                  (_tl104369104449_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl104367104444_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd104368104447_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl104369104449_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl104365104439_))
                                          (let ()
                                            (declare (not safe))
                                            (_K104357104415_
                                             _expr104435_
                                             _test104428_))
                                          (let ()
                                            (declare (not safe))
                                            (_else104355104379_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else104355104379_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else104355104379_))))
                            (let () (declare (not safe)) (_else104355104379_)))
                        (let () (declare (not safe)) (_else104355104379_))))
                  (let () (declare (not safe)) (_else104355104379_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else104355104379_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_else104355104379_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_else104355104379_)))
                                (let ()
                                  (declare (not safe))
                                  (_else104355104379_))))
                          (let ()
                            (declare (not safe))
                            (_else104355104379_)))))))
          (let* ((_g104269104290_
                  (lambda (_g104270104287_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104270104287_))))
                 (_g104268104349_
                  (lambda (_g104270104293_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104270104293_))
                        (let ((_e104274104295_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104270104293_))))
                          (let ((_hd104275104298_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104274104295_)))
                                (_tl104276104300_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104274104295_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl104276104300_))
                                (let ((_e104277104303_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl104276104300_))))
                                  (let ((_hd104278104306_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e104277104303_)))
                                        (_tl104279104308_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e104277104303_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl104279104308_))
                                        (let ((_e104280104311_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl104279104308_))))
                                          (let ((_hd104281104314_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e104280104311_)))
                                                (_tl104282104316_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e104280104311_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl104282104316_))
                                                (let ((_e104283104319_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl104282104316_))))
                                                  (let ((_hd104284104322_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e104283104319_)))
                                                        (_tl104285104324_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e104283104319_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl104285104324_))
                                                        ((lambda (_L104327_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L104328_
                          _L104329_)
                   (if (gxc#current-compile-boolean-context)
                       (let ((__tmp111687
                              (let ((__tmp111688
                                     (let ((__tmp111693
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self104264_
                                               _L104329_)))
                                           (__tmp111689
                                            (let ((__tmp111692
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self104264_
                                                      _L104328_)))
                                                  (__tmp111690
                                                   (let ((__tmp111691
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self104264_
                                                             _L104327_))))
                                                     (declare (not safe))
                                                     (cons __tmp111691 '()))))
                                              (declare (not safe))
                                              (cons __tmp111692 __tmp111690))))
                                       (declare (not safe))
                                       (cons __tmp111693 __tmp111689))))
                                (declare (not safe))
                                (cons 'if __tmp111688))))
                         (declare (not safe))
                         (_simplify104267_ __tmp111687))
                       (let ((__tmp111694
                              (let ((__tmp111699
                                     (let ((__tmp111700
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self104264_
                                                 _L104329_)))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp111700
                                        gxc#current-compile-boolean-context
                                        '#t)))
                                    (__tmp111695
                                     (let ((__tmp111698
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self104264_
                                               _L104328_)))
                                           (__tmp111696
                                            (let ((__tmp111697
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self104264_
                                                      _L104327_))))
                                              (declare (not safe))
                                              (cons __tmp111697 '()))))
                                       (declare (not safe))
                                       (cons __tmp111698 __tmp111696))))
                                (declare (not safe))
                                (cons __tmp111699 __tmp111695))))
                         (declare (not safe))
                         (cons 'if __tmp111694))))
                 _hd104284104322_
                 _hd104281104314_
                 _hd104278104306_)
                (let ()
                  (declare (not safe))
                  (_g104269104290_ _g104270104293_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g104269104290_
                                                   _g104270104293_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g104269104290_ _g104270104293_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g104269104290_ _g104270104293_)))))
                        (let ()
                          (declare (not safe))
                          (_g104269104290_ _g104270104293_))))))
            (declare (not safe))
            (_g104268104349_ _stx104265_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_self104212_ _stx104213_)
        (let* ((_g104215104228_
                (lambda (_g104216104225_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104216104225_))))
               (_g104214104261_
                (lambda (_g104216104231_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104216104231_))
                      (let ((_e104218104233_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104216104231_))))
                        (let ((_hd104219104236_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104218104233_)))
                              (_tl104220104238_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104218104233_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104220104238_))
                              (let ((_e104221104241_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104220104238_))))
                                (let ((_hd104222104244_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104221104241_)))
                                      (_tl104223104246_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104221104241_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl104223104246_))
                                      ((lambda (_L104249_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _L104249_)))
                                       _hd104222104244_)
                                      (let ()
                                        (declare (not safe))
                                        (_g104215104228_ _g104216104231_)))))
                              (let ()
                                (declare (not safe))
                                (_g104215104228_ _g104216104231_)))))
                      (let ()
                        (declare (not safe))
                        (_g104215104228_ _g104216104231_))))))
          (declare (not safe))
          (_g104214104261_ _stx104213_))))
    (define gxc#generate-runtime-setq%
      (lambda (_self104144_ _stx104145_)
        (let* ((_g104147104164_
                (lambda (_g104148104161_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104148104161_))))
               (_g104146104209_
                (lambda (_g104148104167_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104148104167_))
                      (let ((_e104151104169_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104148104167_))))
                        (let ((_hd104152104172_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104151104169_)))
                              (_tl104153104174_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104151104169_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104153104174_))
                              (let ((_e104154104177_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104153104174_))))
                                (let ((_hd104155104180_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104154104177_)))
                                      (_tl104156104182_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104154104177_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104156104182_))
                                      (let ((_e104157104185_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104156104182_))))
                                        (let ((_hd104158104188_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104157104185_)))
                                              (_tl104159104190_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104157104185_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl104159104190_))
                                              ((lambda (_L104193_ _L104194_)
                                                 (let ((__tmp111701
                                                        (let ((__tmp111704
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-binding-id _L104194_)))
                      (__tmp111702
                       (let ((__tmp111703
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1 _self104144_ _L104193_))))
                         (declare (not safe))
                         (cons __tmp111703 '()))))
                  (declare (not safe))
                  (cons __tmp111704 __tmp111702))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'set! __tmp111701)))
                                               _hd104158104188_
                                               _hd104155104180_)
                                              (let ()
                                                (declare (not safe))
                                                (_g104147104164_
                                                 _g104148104167_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g104147104164_ _g104148104167_)))))
                              (let ()
                                (declare (not safe))
                                (_g104147104164_ _g104148104167_)))))
                      (let ()
                        (declare (not safe))
                        (_g104147104164_ _g104148104167_))))))
          (declare (not safe))
          (_g104146104209_ _stx104145_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_self103955_ _stx103956_)
        (let* ((_g103958103975_
                (lambda (_g103959103972_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103959103972_))))
               (_g103957104141_
                (lambda (_g103959103978_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103959103978_))
                      (let ((_e103962103980_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103959103978_))))
                        (let ((_hd103963103983_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103962103980_)))
                              (_tl103964103985_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103962103980_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103964103985_))
                              (let ((_e103965103988_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103964103985_))))
                                (let ((_hd103966103991_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103965103988_)))
                                      (_tl103967103993_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103965103988_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl103967103993_))
                                      (let ((_e103968103996_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl103967103993_))))
                                        (let ((_hd103969103999_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e103968103996_)))
                                              (_tl103970104001_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e103968103996_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl103970104001_))
                                              ((lambda (_L104004_ _L104005_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (let ((__tmp111705
                                                            (let ((__tmp111708
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self103955_ _L104004_)))
                          (__tmp111706
                           (let ((__tmp111707
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self103955_
                                     _L104005_))))
                             (declare (not safe))
                             (cons __tmp111707 '()))))
                      (declare (not safe))
                      (cons __tmp111708 __tmp111706))))
               (declare (not safe))
               (cons '##structure-instance-of? __tmp111705))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp104020_ ((_rest104023_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp111723
                                      (let ()
                                        (declare (not safe))
                                        (cons _L104004_ '()))))
                                 (declare (not safe))
                                 (cons _L104005_ __tmp111723)))
                              (_bind104025_ '())
                              (_args104026_ '()))
               (let* ((_rest104027104035_ _rest104023_)
                      (_else104029104043_
                       (lambda ()
                         (let ((__tmp111709
                                (let ((__tmp111710
                                       (let ((__tmp111711
                                              (let ((__tmp111712
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '##structure-instance-of?
                                                             _args104026_))))
                                                (declare (not safe))
                                                (cons __tmp111712 '()))))
                                         (declare (not safe))
                                         (cons '(declare (not safe))
                                               __tmp111711))))
                                  (declare (not safe))
                                  (cons _bind104025_ __tmp111710))))
                           (declare (not safe))
                           (cons 'let __tmp111709))))
                      (_K104031104129_
                       (lambda (_rest104046_ _e104047_)
                         (let* ((___stx110917110918_ _e104047_)
                                (_g104052104070_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx110917110918_)))))
                           (let ((___kont110919110920_
                                  (lambda ()
                                    (let ((__tmp111713
                                           (let ((__tmp111714
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e104047_))))
                                             (declare (not safe))
                                             (cons __tmp111714 _args104026_))))
                                      (declare (not safe))
                                      (_lp104020_
                                       _rest104046_
                                       _bind104025_
                                       __tmp111713))))
                                 (___kont110921110922_
                                  (lambda ()
                                    (let ((__tmp111715
                                           (let ((__tmp111716
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e104047_))))
                                             (declare (not safe))
                                             (cons __tmp111716 _args104026_))))
                                      (declare (not safe))
                                      (_lp104020_
                                       _rest104046_
                                       _bind104025_
                                       __tmp111715))))
                                 (___kont110923110924_
                                  (lambda ()
                                    (let ((_tmp104077_
                                           (let ((__tmp111717 (gensym '__tmp)))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp111717))))
                                      (let ((__tmp111719
                                             (let ((__tmp111720
                                                    (let ((__tmp111721
                                                           (let ((__tmp111722
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e104047_))))
                     (declare (not safe))
                     (cons __tmp111722 '()))))
              (declare (not safe))
              (cons _tmp104077_ __tmp111721))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp111720
                                                     _bind104025_)))
                                            (__tmp111718
                                             (let ()
                                               (declare (not safe))
                                               (cons _tmp104077_
                                                     _args104026_))))
                                        (declare (not safe))
                                        (_lp104020_
                                         _rest104046_
                                         __tmp111719
                                         __tmp111718))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx110917110918_))
                                 (let ((_e104054104108_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx110917110918_))))
                                   (let ((_tl104056104113_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e104054104108_)))
                                         (_hd104055104111_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e104054104108_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _hd104055104111_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _hd104055104111_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl104056104113_))
                                                 (let ((_e104057104116_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl104056104113_))))
                                                   (let ((_tl104059104121_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e104057104116_)))
                                                         (_hd104058104119_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e104057104116_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl104059104121_))
                                                         (___kont110919110920_)
                                                         (___kont110923110924_))))
                                                 (___kont110923110924_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _hd104055104111_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl104056104113_))
                                                     (let ((_e104063104093_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl104056104113_))))
                                                       (let ((_tl104065104098_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e104063104093_)))
                     (_hd104064104096_
                      (let () (declare (not safe)) (##car _e104063104093_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl104065104098_))
                     (___kont110921110922_)
                     (___kont110923110924_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont110923110924_))
                                                 (___kont110923110924_)))
                                         (___kont110923110924_))))
                                 (___kont110923110924_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest104027104035_))
                     (let ((_hd104032104132_
                            (let ()
                              (declare (not safe))
                              (##car _rest104027104035_)))
                           (_tl104033104134_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest104027104035_))))
                       (let* ((_e104137_ _hd104032104132_)
                              (_rest104139_ _tl104033104134_))
                         (declare (not safe))
                         (_K104031104129_ _rest104139_ _e104137_)))
                     (let () (declare (not safe)) (_else104029104043_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd103969103999_
                                               _hd103966103991_)
                                              (let ()
                                                (declare (not safe))
                                                (_g103958103975_
                                                 _g103959103978_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103958103975_ _g103959103978_)))))
                              (let ()
                                (declare (not safe))
                                (_g103958103975_ _g103959103978_)))))
                      (let ()
                        (declare (not safe))
                        (_g103958103975_ _g103959103978_))))))
          (declare (not safe))
          (_g103957104141_ _stx103956_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_self103766_ _stx103767_)
        (let* ((_g103769103786_
                (lambda (_g103770103783_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103770103783_))))
               (_g103768103952_
                (lambda (_g103770103789_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103770103789_))
                      (let ((_e103773103791_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103770103789_))))
                        (let ((_hd103774103794_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103773103791_)))
                              (_tl103775103796_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103773103791_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103775103796_))
                              (let ((_e103776103799_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103775103796_))))
                                (let ((_hd103777103802_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103776103799_)))
                                      (_tl103778103804_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103776103799_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl103778103804_))
                                      (let ((_e103779103807_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl103778103804_))))
                                        (let ((_hd103780103810_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e103779103807_)))
                                              (_tl103781103812_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e103779103807_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl103781103812_))
                                              ((lambda (_L103815_ _L103816_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (let ((__tmp111724
                                                            (let ((__tmp111727
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self103766_ _L103815_)))
                          (__tmp111725
                           (let ((__tmp111726
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self103766_
                                     _L103816_))))
                             (declare (not safe))
                             (cons __tmp111726 '()))))
                      (declare (not safe))
                      (cons __tmp111727 __tmp111725))))
               (declare (not safe))
               (cons '##structure-direct-instance-of? __tmp111724))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp103831_ ((_rest103834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp111742
                                      (let ()
                                        (declare (not safe))
                                        (cons _L103815_ '()))))
                                 (declare (not safe))
                                 (cons _L103816_ __tmp111742)))
                              (_bind103836_ '())
                              (_args103837_ '()))
               (let* ((_rest103838103846_ _rest103834_)
                      (_else103840103854_
                       (lambda ()
                         (let ((__tmp111728
                                (let ((__tmp111729
                                       (let ((__tmp111730
                                              (let ((__tmp111731
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '##structure-direct-instance-of?
                                                             _args103837_))))
                                                (declare (not safe))
                                                (cons __tmp111731 '()))))
                                         (declare (not safe))
                                         (cons '(declare (not safe))
                                               __tmp111730))))
                                  (declare (not safe))
                                  (cons _bind103836_ __tmp111729))))
                           (declare (not safe))
                           (cons 'let __tmp111728))))
                      (_K103842103940_
                       (lambda (_rest103857_ _e103858_)
                         (let* ((___stx110963110964_ _e103858_)
                                (_g103863103881_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx110963110964_)))))
                           (let ((___kont110965110966_
                                  (lambda ()
                                    (let ((__tmp111732
                                           (let ((__tmp111733
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e103858_))))
                                             (declare (not safe))
                                             (cons __tmp111733 _args103837_))))
                                      (declare (not safe))
                                      (_lp103831_
                                       _rest103857_
                                       _bind103836_
                                       __tmp111732))))
                                 (___kont110967110968_
                                  (lambda ()
                                    (let ((__tmp111734
                                           (let ((__tmp111735
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e103858_))))
                                             (declare (not safe))
                                             (cons __tmp111735 _args103837_))))
                                      (declare (not safe))
                                      (_lp103831_
                                       _rest103857_
                                       _bind103836_
                                       __tmp111734))))
                                 (___kont110969110970_
                                  (lambda ()
                                    (let ((_tmp103888_
                                           (let ((__tmp111736 (gensym '__tmp)))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp111736))))
                                      (let ((__tmp111738
                                             (let ((__tmp111739
                                                    (let ((__tmp111740
                                                           (let ((__tmp111741
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e103858_))))
                     (declare (not safe))
                     (cons __tmp111741 '()))))
              (declare (not safe))
              (cons _tmp103888_ __tmp111740))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp111739
                                                     _bind103836_)))
                                            (__tmp111737
                                             (let ()
                                               (declare (not safe))
                                               (cons _tmp103888_
                                                     _args103837_))))
                                        (declare (not safe))
                                        (_lp103831_
                                         _rest103857_
                                         __tmp111738
                                         __tmp111737))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx110963110964_))
                                 (let ((_e103865103919_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx110963110964_))))
                                   (let ((_tl103867103924_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e103865103919_)))
                                         (_hd103866103922_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e103865103919_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _hd103866103922_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _hd103866103922_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl103867103924_))
                                                 (let ((_e103868103927_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl103867103924_))))
                                                   (let ((_tl103870103932_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e103868103927_)))
                                                         (_hd103869103930_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e103868103927_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl103870103932_))
                                                         (___kont110965110966_)
                                                         (___kont110969110970_))))
                                                 (___kont110969110970_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _hd103866103922_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl103867103924_))
                                                     (let ((_e103874103904_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl103867103924_))))
                                                       (let ((_tl103876103909_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e103874103904_)))
                     (_hd103875103907_
                      (let () (declare (not safe)) (##car _e103874103904_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl103876103909_))
                     (___kont110967110968_)
                     (___kont110969110970_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont110969110970_))
                                                 (___kont110969110970_)))
                                         (___kont110969110970_))))
                                 (___kont110969110970_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest103838103846_))
                     (let ((_hd103843103943_
                            (let ()
                              (declare (not safe))
                              (##car _rest103838103846_)))
                           (_tl103844103945_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest103838103846_))))
                       (let* ((_e103948_ _hd103843103943_)
                              (_rest103950_ _tl103844103945_))
                         (declare (not safe))
                         (_K103842103940_ _rest103950_ _e103948_)))
                     (let () (declare (not safe)) (_else103840103854_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd103780103810_
                                               _hd103777103802_)
                                              (let ()
                                                (declare (not safe))
                                                (_g103769103786_
                                                 _g103770103789_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103769103786_ _g103770103789_)))))
                              (let ()
                                (declare (not safe))
                                (_g103769103786_ _g103770103789_)))))
                      (let ()
                        (declare (not safe))
                        (_g103769103786_ _g103770103789_))))))
          (declare (not safe))
          (_g103768103952_ _stx103767_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_self103682_ _stx103683_)
        (let* ((_g103685103706_
                (lambda (_g103686103703_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103686103703_))))
               (_g103684103763_
                (lambda (_g103686103709_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103686103709_))
                      (let ((_e103690103711_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103686103709_))))
                        (let ((_hd103691103714_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103690103711_)))
                              (_tl103692103716_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103690103711_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103692103716_))
                              (let ((_e103693103719_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103692103716_))))
                                (let ((_hd103694103722_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103693103719_)))
                                      (_tl103695103724_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103693103719_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl103695103724_))
                                      (let ((_e103696103727_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl103695103724_))))
                                        (let ((_hd103697103730_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e103696103727_)))
                                              (_tl103698103732_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e103696103727_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl103698103732_))
                                              (let ((_e103699103735_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl103698103732_))))
                                                (let ((_hd103700103738_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e103699103735_)))
                                                      (_tl103701103740_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e103699103735_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl103701103740_))
                                                      ((lambda (_L103743_
                                                                _L103744_
                                                                _L103745_)
                                                         (let ((__tmp111743
                                                                (let ((__tmp111749
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self103682_ _L103743_)))
                              (__tmp111744
                               (let ((__tmp111748
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self103682_
                                         _L103744_)))
                                     (__tmp111745
                                      (let ((__tmp111747
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self103682_
                                                _L103745_)))
                                            (__tmp111746
                                             (let ()
                                               (declare (not safe))
                                               (cons ''#f '()))))
                                        (declare (not safe))
                                        (cons __tmp111747 __tmp111746))))
                                 (declare (not safe))
                                 (cons __tmp111748 __tmp111745))))
                          (declare (not safe))
                          (cons __tmp111749 __tmp111744))))
                   (declare (not safe))
                   (cons '##structure-ref __tmp111743)))
               _hd103700103738_
               _hd103697103730_
               _hd103694103722_)
              (let ()
                (declare (not safe))
                (_g103685103706_ _g103686103709_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g103685103706_
                                                 _g103686103709_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103685103706_ _g103686103709_)))))
                              (let ()
                                (declare (not safe))
                                (_g103685103706_ _g103686103709_)))))
                      (let ()
                        (declare (not safe))
                        (_g103685103706_ _g103686103709_))))))
          (declare (not safe))
          (_g103684103763_ _stx103683_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_self103582_ _stx103583_)
        (let* ((_g103585103610_
                (lambda (_g103586103607_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103586103607_))))
               (_g103584103679_
                (lambda (_g103586103613_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103586103613_))
                      (let ((_e103591103615_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103586103613_))))
                        (let ((_hd103592103618_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103591103615_)))
                              (_tl103593103620_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103591103615_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103593103620_))
                              (let ((_e103594103623_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103593103620_))))
                                (let ((_hd103595103626_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103594103623_)))
                                      (_tl103596103628_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103594103623_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl103596103628_))
                                      (let ((_e103597103631_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl103596103628_))))
                                        (let ((_hd103598103634_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e103597103631_)))
                                              (_tl103599103636_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e103597103631_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl103599103636_))
                                              (let ((_e103600103639_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl103599103636_))))
                                                (let ((_hd103601103642_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e103600103639_)))
                                                      (_tl103602103644_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e103600103639_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl103602103644_))
                                                      (let ((_e103603103647_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl103602103644_))))
                (let ((_hd103604103650_
                       (let () (declare (not safe)) (##car _e103603103647_)))
                      (_tl103605103652_
                       (let () (declare (not safe)) (##cdr _e103603103647_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl103605103652_))
                      ((lambda (_L103655_ _L103656_ _L103657_ _L103658_)
                         (let ((__tmp111750
                                (let ((__tmp111758
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self103582_
                                          _L103656_)))
                                      (__tmp111751
                                       (let ((__tmp111757
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self103582_
                                                 _L103655_)))
                                             (__tmp111752
                                              (let ((__tmp111756
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self103582_
                                                        _L103657_)))
                                                    (__tmp111753
                                                     (let ((__tmp111755
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self103582_
                                                               _L103658_)))
                                                           (__tmp111754
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons ''#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp111755 __tmp111754))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp111756
                                                      __tmp111753))))
                                         (declare (not safe))
                                         (cons __tmp111757 __tmp111752))))
                                  (declare (not safe))
                                  (cons __tmp111758 __tmp111751))))
                           (declare (not safe))
                           (cons '##structure-set! __tmp111750)))
                       _hd103604103650_
                       _hd103601103642_
                       _hd103598103634_
                       _hd103595103626_)
                      (let ()
                        (declare (not safe))
                        (_g103585103610_ _g103586103613_)))))
              (let ()
                (declare (not safe))
                (_g103585103610_ _g103586103613_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g103585103610_
                                                 _g103586103613_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103585103610_ _g103586103613_)))))
                              (let ()
                                (declare (not safe))
                                (_g103585103610_ _g103586103613_)))))
                      (let ()
                        (declare (not safe))
                        (_g103585103610_ _g103586103613_))))))
          (declare (not safe))
          (_g103584103679_ _stx103583_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_self103498_ _stx103499_)
        (let* ((_g103501103522_
                (lambda (_g103502103519_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103502103519_))))
               (_g103500103579_
                (lambda (_g103502103525_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103502103525_))
                      (let ((_e103506103527_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103502103525_))))
                        (let ((_hd103507103530_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103506103527_)))
                              (_tl103508103532_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103506103527_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103508103532_))
                              (let ((_e103509103535_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103508103532_))))
                                (let ((_hd103510103538_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103509103535_)))
                                      (_tl103511103540_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103509103535_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl103511103540_))
                                      (let ((_e103512103543_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl103511103540_))))
                                        (let ((_hd103513103546_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e103512103543_)))
                                              (_tl103514103548_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e103512103543_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl103514103548_))
                                              (let ((_e103515103551_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl103514103548_))))
                                                (let ((_hd103516103554_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e103515103551_)))
                                                      (_tl103517103556_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e103515103551_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl103517103556_))
                                                      ((lambda (_L103559_
                                                                _L103560_
                                                                _L103561_)
                                                         (let ((__tmp111759
                                                                (let ((__tmp111765
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self103498_ _L103559_)))
                              (__tmp111760
                               (let ((__tmp111764
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self103498_
                                         _L103560_)))
                                     (__tmp111761
                                      (let ((__tmp111763
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self103498_
                                                _L103561_)))
                                            (__tmp111762
                                             (let ()
                                               (declare (not safe))
                                               (cons ''#f '()))))
                                        (declare (not safe))
                                        (cons __tmp111763 __tmp111762))))
                                 (declare (not safe))
                                 (cons __tmp111764 __tmp111761))))
                          (declare (not safe))
                          (cons __tmp111765 __tmp111760))))
                   (declare (not safe))
                   (cons '##direct-structure-ref __tmp111759)))
               _hd103516103554_
               _hd103513103546_
               _hd103510103538_)
              (let ()
                (declare (not safe))
                (_g103501103522_ _g103502103525_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g103501103522_
                                                 _g103502103525_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103501103522_ _g103502103525_)))))
                              (let ()
                                (declare (not safe))
                                (_g103501103522_ _g103502103525_)))))
                      (let ()
                        (declare (not safe))
                        (_g103501103522_ _g103502103525_))))))
          (declare (not safe))
          (_g103500103579_ _stx103499_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_self103398_ _stx103399_)
        (let* ((_g103401103426_
                (lambda (_g103402103423_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103402103423_))))
               (_g103400103495_
                (lambda (_g103402103429_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103402103429_))
                      (let ((_e103407103431_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103402103429_))))
                        (let ((_hd103408103434_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103407103431_)))
                              (_tl103409103436_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103407103431_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103409103436_))
                              (let ((_e103410103439_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103409103436_))))
                                (let ((_hd103411103442_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103410103439_)))
                                      (_tl103412103444_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103410103439_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl103412103444_))
                                      (let ((_e103413103447_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl103412103444_))))
                                        (let ((_hd103414103450_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e103413103447_)))
                                              (_tl103415103452_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e103413103447_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl103415103452_))
                                              (let ((_e103416103455_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl103415103452_))))
                                                (let ((_hd103417103458_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e103416103455_)))
                                                      (_tl103418103460_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e103416103455_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl103418103460_))
                                                      (let ((_e103419103463_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl103418103460_))))
                (let ((_hd103420103466_
                       (let () (declare (not safe)) (##car _e103419103463_)))
                      (_tl103421103468_
                       (let () (declare (not safe)) (##cdr _e103419103463_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl103421103468_))
                      ((lambda (_L103471_ _L103472_ _L103473_ _L103474_)
                         (let ((__tmp111766
                                (let ((__tmp111774
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self103398_
                                          _L103472_)))
                                      (__tmp111767
                                       (let ((__tmp111773
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self103398_
                                                 _L103471_)))
                                             (__tmp111768
                                              (let ((__tmp111772
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self103398_
                                                        _L103473_)))
                                                    (__tmp111769
                                                     (let ((__tmp111771
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self103398_
                                                               _L103474_)))
                                                           (__tmp111770
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons ''#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp111771 __tmp111770))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp111772
                                                      __tmp111769))))
                                         (declare (not safe))
                                         (cons __tmp111773 __tmp111768))))
                                  (declare (not safe))
                                  (cons __tmp111774 __tmp111767))))
                           (declare (not safe))
                           (cons '##direct-structure-set! __tmp111766)))
                       _hd103420103466_
                       _hd103417103458_
                       _hd103414103450_
                       _hd103411103442_)
                      (let ()
                        (declare (not safe))
                        (_g103401103426_ _g103402103429_)))))
              (let ()
                (declare (not safe))
                (_g103401103426_ _g103402103429_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g103401103426_
                                                 _g103402103429_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103401103426_ _g103402103429_)))))
                              (let ()
                                (declare (not safe))
                                (_g103401103426_ _g103402103429_)))))
                      (let ()
                        (declare (not safe))
                        (_g103401103426_ _g103402103429_))))))
          (declare (not safe))
          (_g103400103495_ _stx103399_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_self103193_ _stx103194_)
        (let* ((_g103196103217_
                (lambda (_g103197103214_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103197103214_))))
               (_g103195103395_
                (lambda (_g103197103220_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103197103220_))
                      (let ((_e103201103222_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103197103220_))))
                        (let ((_hd103202103225_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103201103222_)))
                              (_tl103203103227_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103201103222_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103203103227_))
                              (let ((_e103204103230_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103203103227_))))
                                (let ((_hd103205103233_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103204103230_)))
                                      (_tl103206103235_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103204103230_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl103206103235_))
                                      (let ((_e103207103238_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl103206103235_))))
                                        (let ((_hd103208103241_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e103207103238_)))
                                              (_tl103209103243_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e103207103238_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl103209103243_))
                                              (let ((_e103210103246_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl103209103243_))))
                                                (let ((_hd103211103249_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e103210103246_)))
                                                      (_tl103212103251_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e103210103246_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl103212103251_))
                                                      ((lambda (_L103254_
                                                                _L103255_
                                                                _L103256_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-decls-unsafe?))
                     (let ((__tmp111775
                            (let ((__tmp111781
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self103193_
                                      _L103254_)))
                                  (__tmp111776
                                   (let ((__tmp111780
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _self103193_
                                             _L103255_)))
                                         (__tmp111777
                                          (let ((__tmp111779
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self103193_
                                                    _L103256_)))
                                                (__tmp111778
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons ''#f '()))))
                                            (declare (not safe))
                                            (cons __tmp111779 __tmp111778))))
                                     (declare (not safe))
                                     (cons __tmp111780 __tmp111777))))
                              (declare (not safe))
                              (cons __tmp111781 __tmp111776))))
                       (declare (not safe))
                       (cons '##unchecked-structure-ref __tmp111775))
                     (let _lp103274_ ((_rest103277_
                                       (let ((__tmp111798
                                              (let ((__tmp111799
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L103254_ '()))))
                                                (declare (not safe))
                                                (cons _L103255_ __tmp111799))))
                                         (declare (not safe))
                                         (cons _L103256_ __tmp111798)))
                                      (_bind103279_ '())
                                      (_args103280_ '()))
                       (let* ((_rest103281103289_ _rest103277_)
                              (_else103283103297_
                               (lambda ()
                                 (let ((__tmp111782
                                        (let ((__tmp111783
                                               (let ((__tmp111784
                                                      (let ((__tmp111785
                                                             (let ((__tmp111786
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp111787
                                   (let ()
                                     (declare (not safe))
                                     (cons ''#f '()))))
                              (declare (not safe))
                              (foldr1 cons __tmp111787 _args103280_))))
                       (declare (not safe))
                       (cons '##unchecked-structure-ref __tmp111786))))
                (declare (not safe))
                (cons __tmp111785 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '(declare (not safe))
                                                       __tmp111784))))
                                          (declare (not safe))
                                          (cons _bind103279_ __tmp111783))))
                                   (declare (not safe))
                                   (cons 'let __tmp111782))))
                              (_K103285103383_
                               (lambda (_rest103300_ _e103301_)
                                 (let* ((___stx111009111010_ _e103301_)
                                        (_g103306103324_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx111009111010_)))))
                                   (let ((___kont111011111012_
                                          (lambda ()
                                            (let ((__tmp111788
                                                   (let ((__tmp111789
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _e103301_))))
                                                     (declare (not safe))
                                                     (cons __tmp111789
                                                           _args103280_))))
                                              (declare (not safe))
                                              (_lp103274_
                                               _rest103300_
                                               _bind103279_
                                               __tmp111788))))
                                         (___kont111013111014_
                                          (lambda ()
                                            (let ((__tmp111790
                                                   (let ((__tmp111791
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _e103301_))))
                                                     (declare (not safe))
                                                     (cons __tmp111791
                                                           _args103280_))))
                                              (declare (not safe))
                                              (_lp103274_
                                               _rest103300_
                                               _bind103279_
                                               __tmp111790))))
                                         (___kont111015111016_
                                          (lambda ()
                                            (let ((_tmp103331_
                                                   (let ((__tmp111792
                                                          (gensym '__tmp)))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp111792))))
                                              (let ((__tmp111794
                                                     (let ((__tmp111795
                                                            (let ((__tmp111796
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp111797
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__0 _e103301_))))
                             (declare (not safe))
                             (cons __tmp111797 '()))))
                      (declare (not safe))
                      (cons _tmp103331_ __tmp111796))))
               (declare (not safe))
               (cons __tmp111795 _bind103279_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp111793
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _tmp103331_
                                                             _args103280_))))
                                                (declare (not safe))
                                                (_lp103274_
                                                 _rest103300_
                                                 __tmp111794
                                                 __tmp111793))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx111009111010_))
                                         (let ((_e103308103362_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx111009111010_))))
                                           (let ((_tl103310103367_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e103308103362_)))
                                                 (_hd103309103365_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e103308103362_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd103309103365_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _hd103309103365_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _tl103310103367_))
                                                         (let ((_e103311103370_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _tl103310103367_))))
                   (let ((_tl103313103375_
                          (let ()
                            (declare (not safe))
                            (##cdr _e103311103370_)))
                         (_hd103312103373_
                          (let ()
                            (declare (not safe))
                            (##car _e103311103370_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl103313103375_))
                         (___kont111011111012_)
                         (___kont111015111016_))))
                 (___kont111015111016_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _hd103309103365_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl103310103367_))
                     (let ((_e103317103347_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl103310103367_))))
                       (let ((_tl103319103352_
                              (let ()
                                (declare (not safe))
                                (##cdr _e103317103347_)))
                             (_hd103318103350_
                              (let ()
                                (declare (not safe))
                                (##car _e103317103347_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl103319103352_))
                             (___kont111013111014_)
                             (___kont111015111016_))))
                     (___kont111015111016_))
                 (___kont111015111016_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont111015111016_))))
                                         (___kont111015111016_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest103281103289_))
                             (let ((_hd103286103386_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest103281103289_)))
                                   (_tl103287103388_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest103281103289_))))
                               (let* ((_e103391_ _hd103286103386_)
                                      (_rest103393_ _tl103287103388_))
                                 (declare (not safe))
                                 (_K103285103383_ _rest103393_ _e103391_)))
                             (let ()
                               (declare (not safe))
                               (_else103283103297_)))))))
               _hd103211103249_
               _hd103208103241_
               _hd103205103233_)
              (let ()
                (declare (not safe))
                (_g103196103217_ _g103197103220_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g103196103217_
                                                 _g103197103220_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103196103217_ _g103197103220_)))))
                              (let ()
                                (declare (not safe))
                                (_g103196103217_ _g103197103220_)))))
                      (let ()
                        (declare (not safe))
                        (_g103196103217_ _g103197103220_))))))
          (declare (not safe))
          (_g103195103395_ _stx103194_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_self102972_ _stx102973_)
        (let* ((_g102975103000_
                (lambda (_g102976102997_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102976102997_))))
               (_g102974103190_
                (lambda (_g102976103003_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102976103003_))
                      (let ((_e102981103005_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102976103003_))))
                        (let ((_hd102982103008_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102981103005_)))
                              (_tl102983103010_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102981103005_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102983103010_))
                              (let ((_e102984103013_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102983103010_))))
                                (let ((_hd102985103016_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102984103013_)))
                                      (_tl102986103018_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102984103013_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102986103018_))
                                      (let ((_e102987103021_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102986103018_))))
                                        (let ((_hd102988103024_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102987103021_)))
                                              (_tl102989103026_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102987103021_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl102989103026_))
                                              (let ((_e102990103029_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl102989103026_))))
                                                (let ((_hd102991103032_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e102990103029_)))
                                                      (_tl102992103034_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e102990103029_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl102992103034_))
                                                      (let ((_e102993103037_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl102992103034_))))
                (let ((_hd102994103040_
                       (let () (declare (not safe)) (##car _e102993103037_)))
                      (_tl102995103042_
                       (let () (declare (not safe)) (##cdr _e102993103037_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl102995103042_))
                      ((lambda (_L103045_ _L103046_ _L103047_ _L103048_)
                         (if (let ()
                               (declare (not safe))
                               (gxc#current-compile-decls-unsafe?))
                             (let ((__tmp111800
                                    (let ((__tmp111808
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self102972_
                                              _L103046_)))
                                          (__tmp111801
                                           (let ((__tmp111807
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _self102972_
                                                     _L103045_)))
                                                 (__tmp111802
                                                  (let ((__tmp111806
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self102972_
                                                            _L103047_)))
                                                        (__tmp111803
                                                         (let ((__tmp111805
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _self102972_ _L103048_)))
                       (__tmp111804
                        (let () (declare (not safe)) (cons ''#f '()))))
                   (declare (not safe))
                   (cons __tmp111805 __tmp111804))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp111806
                                                          __tmp111803))))
                                             (declare (not safe))
                                             (cons __tmp111807 __tmp111802))))
                                      (declare (not safe))
                                      (cons __tmp111808 __tmp111801))))
                               (declare (not safe))
                               (cons '##unchecked-structure-set! __tmp111800))
                             (let _lp103069_ ((_rest103072_
                                               (let ((__tmp111825
                                                      (let ((__tmp111826
                                                             (let ((__tmp111827
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _L103046_ '()))))
                       (declare (not safe))
                       (cons _L103045_ __tmp111827))))
                (declare (not safe))
                (cons _L103047_ __tmp111826))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L103048_ __tmp111825)))
                                              (_bind103074_ '())
                                              (_args103075_ '()))
                               (let* ((_rest103076103084_ _rest103072_)
                                      (_else103078103092_
                                       (lambda ()
                                         (let ((__tmp111809
                                                (let ((__tmp111810
                                                       (let ((__tmp111811
                                                              (let ((__tmp111812
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp111813
                                    (let ((__tmp111814
                                           (let ()
                                             (declare (not safe))
                                             (cons ''#f '()))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp111814 _args103075_))))
                               (declare (not safe))
                               (cons '##unchecked-structure-set!
                                     __tmp111813))))
                        (declare (not safe))
                        (cons __tmp111812 '()))))
                 (declare (not safe))
                 (cons '(declare (not safe)) __tmp111811))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _bind103074_
                                                        __tmp111810))))
                                           (declare (not safe))
                                           (cons 'let __tmp111809))))
                                      (_K103080103178_
                                       (lambda (_rest103095_ _e103096_)
                                         (let* ((___stx111055111056_ _e103096_)
                                                (_g103101103119_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx111055111056_)))))
                                           (let ((___kont111057111058_
                                                  (lambda ()
                                                    (let ((__tmp111815
                                                           (let ((__tmp111816
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e103096_))))
                     (declare (not safe))
                     (cons __tmp111816 _args103075_))))
              (declare (not safe))
              (_lp103069_ _rest103095_ _bind103074_ __tmp111815))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont111059111060_
                                                  (lambda ()
                                                    (let ((__tmp111817
                                                           (let ((__tmp111818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e103096_))))
                     (declare (not safe))
                     (cons __tmp111818 _args103075_))))
              (declare (not safe))
              (_lp103069_ _rest103095_ _bind103074_ __tmp111817))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont111061111062_
                                                  (lambda ()
                                                    (let ((_tmp103126_
                                                           (let ((__tmp111819
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__tmp)))
                     (declare (not safe))
                     (make-symbol__0 __tmp111819))))
              (let ((__tmp111821
                     (let ((__tmp111822
                            (let ((__tmp111823
                                   (let ((__tmp111824
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _e103096_))))
                                     (declare (not safe))
                                     (cons __tmp111824 '()))))
                              (declare (not safe))
                              (cons _tmp103126_ __tmp111823))))
                       (declare (not safe))
                       (cons __tmp111822 _bind103074_)))
                    (__tmp111820
                     (let ()
                       (declare (not safe))
                       (cons _tmp103126_ _args103075_))))
                (declare (not safe))
                (_lp103069_ _rest103095_ __tmp111821 __tmp111820))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    ___stx111055111056_))
                                                 (let ((_e103103103157_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           ___stx111055111056_))))
                                                   (let ((_tl103105103162_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e103103103157_)))
                                                         (_hd103104103160_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e103103103157_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _hd103104103160_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _hd103104103160_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _tl103105103162_))
                         (let ((_e103106103165_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _tl103105103162_))))
                           (let ((_tl103108103170_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e103106103165_)))
                                 (_hd103107103168_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e103106103165_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _tl103108103170_))
                                 (___kont111057111058_)
                                 (___kont111061111062_))))
                         (___kont111061111062_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _hd103104103160_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _tl103105103162_))
                             (let ((_e103112103142_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _tl103105103162_))))
                               (let ((_tl103114103147_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e103112103142_)))
                                     (_hd103113103145_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e103112103142_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _tl103114103147_))
                                     (___kont111059111060_)
                                     (___kont111061111062_))))
                             (___kont111061111062_))
                         (___kont111061111062_)))
                 (___kont111061111062_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont111061111062_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _rest103076103084_))
                                     (let ((_hd103081103181_
                                            (let ()
                                              (declare (not safe))
                                              (##car _rest103076103084_)))
                                           (_tl103082103183_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _rest103076103084_))))
                                       (let* ((_e103186_ _hd103081103181_)
                                              (_rest103188_ _tl103082103183_))
                                         (declare (not safe))
                                         (_K103080103178_
                                          _rest103188_
                                          _e103186_)))
                                     (let ()
                                       (declare (not safe))
                                       (_else103078103092_)))))))
                       _hd102994103040_
                       _hd102991103032_
                       _hd102988103024_
                       _hd102985103016_)
                      (let ()
                        (declare (not safe))
                        (_g102975103000_ _g102976103003_)))))
              (let ()
                (declare (not safe))
                (_g102975103000_ _g102976103003_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g102975103000_
                                                 _g102976103003_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102975103000_ _g102976103003_)))))
                              (let ()
                                (declare (not safe))
                                (_g102975103000_ _g102976103003_)))))
                      (let ()
                        (declare (not safe))
                        (_g102975103000_ _g102976103003_))))))
          (declare (not safe))
          (_g102974103190_ _stx102973_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_self102825_ _stx102826_)
        (letrec ((_import-set-template102828_
                  (lambda (_in102924_ _phi102925_)
                    (let ((_iphi102927_
                           (fx+ _phi102925_
                                (##direct-structure-ref
                                 _in102924_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_imports102928_
                           (##structure-ref
                            (##direct-structure-ref
                             _in102924_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _lp102930_ ((_rest102932_ _imports102928_)
                                       (_r102933_ '()))
                        (let* ((_rest102934102942_ _rest102932_)
                               (_else102936102950_ (lambda () _r102933_))
                               (_K102938102960_
                                (lambda (_rest102953_ _in102954_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _in102954_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (fxzero? _iphi102927_))
                                          (let ((__tmp111828
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _in102954_
                                                         _r102933_))))
                                            (declare (not safe))
                                            (_lp102930_
                                             _rest102953_
                                             __tmp111828))
                                          (let ()
                                            (declare (not safe))
                                            (_lp102930_
                                             _rest102953_
                                             _r102933_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _in102954_
                                             'gx#module-import::t))
                                          (let ((_iphi102956_
                                                 (fx+ _phi102925_
                                                      (##direct-structure-ref
                                                       _in102954_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (fxzero? _iphi102956_))
                                                (let ((__tmp111829
                                                       (let ((__tmp111830
                                                              (##direct-structure-ref
                                                               (##direct-structure-ref
                                                                _in102954_
                                                                '1
                                                                gx#module-import::t
                                                                '#f)
                                                               '1
                                                               gx#module-export::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp111830
                                                               _r102933_))))
                                                  (declare (not safe))
                                                  (_lp102930_
                                                   _rest102953_
                                                   __tmp111829))
                                                (let ()
                                                  (declare (not safe))
                                                  (_lp102930_
                                                   _rest102953_
                                                   _r102933_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _in102954_
                                                 'gx#import-set::t))
                                              (let ((_xphi102958_
                                                     (fx+ _iphi102927_
                                                          (##direct-structure-ref
                                                           _in102954_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (fxzero? _xphi102958_))
                                                    (let ((__tmp111831
                                                           (let ((__tmp111832
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##direct-structure-ref
                           _in102954_
                           '1
                           gx#import-set::t
                           '#f)))
                     (declare (not safe))
                     (cons __tmp111832 _r102933_))))
              (declare (not safe))
              (_lp102930_ _rest102953_ __tmp111831))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (fxpositive?
                                                         _xphi102958_)
                                                        (let ((__tmp111833
                                                               (let ((__tmp111834
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_import-set-template102828_
                                 _in102954_
                                 _iphi102927_))))
                         (declare (not safe))
                         (foldl1 cons _r102933_ __tmp111834))))
                  (declare (not safe))
                  (_lp102930_ _rest102953_ __tmp111833))
                (let ()
                  (declare (not safe))
                  (_lp102930_ _rest102953_ _r102933_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_lp102930_
                                                 _rest102953_
                                                 _r102933_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest102934102942_))
                              (let ((_hd102939102963_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest102934102942_)))
                                    (_tl102940102965_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest102934102942_))))
                                (let* ((_in102968_ _hd102939102963_)
                                       (_rest102970_ _tl102940102965_))
                                  (declare (not safe))
                                  (_K102938102960_ _rest102970_ _in102968_)))
                              (let ()
                                (declare (not safe))
                                (_else102936102950_)))))))))
          (let* ((_g102830102840_
                  (lambda (_g102831102837_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g102831102837_))))
                 (_g102829102921_
                  (lambda (_g102831102843_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g102831102843_))
                        (let ((_e102833102845_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g102831102843_))))
                          (let ((_hd102834102848_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e102833102845_)))
                                (_tl102835102850_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e102833102845_))))
                            ((lambda (_L102853_)
                               (let ((_ht102864_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _lp102866_ ((_rest102868_ _L102853_)
                                                  (_loads102869_ '()))
                                   (letrec ((_K102871_
                                             (lambda (_ctx102914_ _rest102915_)
                                               (let ((_id102917_
                                                      (##structure-ref
                                                       _ctx102914_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (hash-get
                                                        _ht102864_
                                                        _id102917_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (_lp102866_
                                                        _rest102915_
                                                        _loads102869_))
                                                     (let ((_rt102919_
                                                            (string-append
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#module-id->path-string _id102917_))
                     '"__rt")))
               (let ()
                 (declare (not safe))
                 (hash-put! _ht102864_ _id102917_ _rt102919_))
               (let ((__tmp111835
                      (let ()
                        (declare (not safe))
                        (cons _rt102919_ _loads102869_))))
                 (declare (not safe))
                 (_lp102866_ _rest102915_ __tmp111835))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let* ((_rest102872102880_ _rest102868_)
                                            (_else102874102892_
                                             (lambda ()
                                               (let ((__tmp111836
                                                      (map (lambda (_g102887102889_)
                                                             (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g102887102889_))
                   (reverse _loads102869_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'begin __tmp111836))))
                                            (_K102876102902_
                                             (lambda (_rest102895_ _in102896_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _in102896_
                                                      'gx#module-context::t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_K102871_
                                                      _in102896_
                                                      _rest102895_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _in102896_
                                                          'gx#module-import::t))
                                                       (if (let ((__tmp111837
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##direct-structure-ref
                           _in102896_
                           '3
                           gx#module-import::t
                           '#f)))
                     (declare (not safe))
                     (fxzero? __tmp111837))
                   (let ((__tmp111838
                          (##direct-structure-ref
                           (##direct-structure-ref
                            _in102896_
                            '1
                            gx#module-import::t
                            '#f)
                           '1
                           gx#module-export::t
                           '#f)))
                     (declare (not safe))
                     (_K102871_ __tmp111838 _rest102895_))
                   (let ()
                     (declare (not safe))
                     (_lp102866_ _rest102895_ _loads102869_)))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _in102896_
                      'gx#import-set::t))
                   (let ((_phi102898_
                          (##direct-structure-ref
                           _in102896_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (let () (declare (not safe)) (fxzero? _phi102898_))
                         (let ((__tmp111839
                                (##direct-structure-ref
                                 _in102896_
                                 '1
                                 gx#import-set::t
                                 '#f)))
                           (declare (not safe))
                           (_K102871_ __tmp111839 _rest102895_))
                         (if (fxpositive? _phi102898_)
                             (let* ((_deps102900_
                                     (let ()
                                       (declare (not safe))
                                       (_import-set-template102828_
                                        _in102896_
                                        '0)))
                                    (__tmp111840
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _rest102895_
                                               _deps102900_))))
                               (declare (not safe))
                               (_lp102866_ __tmp111840 _loads102869_))
                             (let ()
                               (declare (not safe))
                               (_lp102866_ _rest102895_ _loads102869_)))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _stx102826_
                      _in102896_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _rest102872102880_))
                                           (let ((_hd102877102905_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _rest102872102880_)))
                                                 (_tl102878102907_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _rest102872102880_))))
                                             (let* ((_in102910_
                                                     _hd102877102905_)
                                                    (_rest102912_
                                                     _tl102878102907_))
                                               (declare (not safe))
                                               (_K102876102902_
                                                _rest102912_
                                                _in102910_)))
                                           (let ()
                                             (declare (not safe))
                                             (_else102874102892_))))))))
                             _tl102835102850_)))
                        (let ()
                          (declare (not safe))
                          (_g102830102840_ _g102831102843_))))))
            (declare (not safe))
            (_g102829102921_ _stx102826_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_self102640_ _stx102641_)
        (letrec ((_add-lift!102643_
                  (lambda (_expr102823_)
                    (set-box!
                     (gxc#current-compile-lift)
                     (let ((__tmp111841 (unbox (gxc#current-compile-lift))))
                       (declare (not safe))
                       (cons _expr102823_ __tmp111841)))))
                 (_generate-syntax-quote102644_
                  (lambda (_id102820_ _marks102821_)
                    (let ((__tmp111842
                           (let ((__tmp111843
                                  (let ((__tmp111847
                                         (let ((__tmp111848
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _id102820_ '()))))
                                           (declare (not safe))
                                           (cons 'quote __tmp111848)))
                                        (__tmp111844
                                         (let ((__tmp111845
                                                (let ((__tmp111846
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _marks102821_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '(gx#current-expander-context)
                                                        __tmp111846))))
                                           (declare (not safe))
                                           (cons '#f __tmp111845))))
                                    (declare (not safe))
                                    (cons __tmp111847 __tmp111844))))
                             (declare (not safe))
                             (cons 'gx#syntax-quote::t __tmp111843))))
                      (declare (not safe))
                      (cons '##structure __tmp111842))))
                 (_generate-simple102645_
                  (lambda (_stxq102815_)
                    (let ((_gid102817_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_qid102818_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _stxq102815_))))
                      (let ((__tmp111849
                             (let ((__tmp111850
                                    (let ((__tmp111851
                                           (let ((__tmp111852
                                                  (let ()
                                                    (declare (not safe))
                                                    (_generate-syntax-quote102644_
                                                     _qid102818_
                                                     ''()))))
                                             (declare (not safe))
                                             (cons __tmp111852 '()))))
                                      (declare (not safe))
                                      (cons _gid102817_ __tmp111851))))
                               (declare (not safe))
                               (cons 'define __tmp111850))))
                        (declare (not safe))
                        (_add-lift!102643_ __tmp111849))
                      (let ((__tmp111853 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (hash-put! __tmp111853 _stxq102815_ _gid102817_))
                      _gid102817_)))
                 (_generate-serialized102646_
                  (lambda (_stxq102805_ _marks102806_)
                    (let* ((_mark-refs102808_
                            (map _generate-mark102647_ _marks102806_))
                           (_gid102810_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_qid102812_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _stxq102805_))))
                      (let ((__tmp111854
                             (let ((__tmp111855
                                    (let ((__tmp111856
                                           (let ((__tmp111857
                                                  (let ((__tmp111858
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _mark-refs102808_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-syntax-quote102644_
                                                     _qid102812_
                                                     __tmp111858))))
                                             (declare (not safe))
                                             (cons __tmp111857 '()))))
                                      (declare (not safe))
                                      (cons _gid102810_ __tmp111856))))
                               (declare (not safe))
                               (cons 'define __tmp111855))))
                        (declare (not safe))
                        (_add-lift!102643_ __tmp111854))
                      (let ((__tmp111859 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (hash-put! __tmp111859 _stxq102805_ _gid102810_))
                      _gid102810_)))
                 (_generate-mark102647_
                  (lambda (_mark102791_)
                    (let ((_$e102793_
                           (let ((__tmp111860 (gxc#current-compile-marks)))
                             (declare (not safe))
                             (hash-get __tmp111860 _mark102791_))))
                      (if _$e102793_
                          (values _$e102793_)
                          (let* ((_gid102796_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_repr102798_
                                  (let ()
                                    (declare (not safe))
                                    (_serialize-mark102648_ _mark102791_)))
                                 (_ctx102800_
                                  (let ((__tmp111861
                                         (##structure-ref
                                          _mark102791_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp111861)))
                                 (_ctx-ref102802_
                                  (if (let ((__tmp111862
                                             (gx#current-expander-context)))
                                        (declare (not safe))
                                        (eq? _ctx102800_ __tmp111862))
                                      '(gx#current-expander-context)
                                      (let ((__tmp111863
                                             (let ((__tmp111864
                                                    (let ((__tmp111865
                                                           (let ((__tmp111866
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_context-ref102649_ _ctx102800_))))
                     (declare (not safe))
                     (cons __tmp111866 '()))))
              (declare (not safe))
              (cons 'quote __tmp111865))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp111864 '()))))
                                        (declare (not safe))
                                        (cons 'gx#import-module
                                              __tmp111863)))))
                            (let ((__tmp111867 (gxc#current-compile-marks)))
                              (declare (not safe))
                              (hash-put! __tmp111867 _mark102791_ _gid102796_))
                            (let ((__tmp111868
                                   (let ((__tmp111869
                                          (let ((__tmp111870
                                                 (let ((__tmp111871
                                                        (let ((__tmp111872
                                                               (let ((__tmp111874
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp111875
                                     (let ()
                                       (declare (not safe))
                                       (cons _repr102798_ '()))))
                                (declare (not safe))
                                (cons 'quote __tmp111875)))
                             (__tmp111873
                              (let ()
                                (declare (not safe))
                                (cons _ctx-ref102802_ '()))))
                         (declare (not safe))
                         (cons __tmp111874 __tmp111873))))
                  (declare (not safe))
                  (cons 'gx#core-deserialize-mark __tmp111872))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp111871 '()))))
                                            (declare (not safe))
                                            (cons _gid102796_ __tmp111870))))
                                     (declare (not safe))
                                     (cons 'define __tmp111869))))
                              (declare (not safe))
                              (_add-lift!102643_ __tmp111868))
                            _gid102796_)))))
                 (_serialize-mark102648_
                  (lambda (_mark102738_)
                    (letrec ((_quote-e102740_
                              (lambda (_sym102789_)
                                (if (interned-symbol? _sym102789_)
                                    _sym102789_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _sym102789_))))))
                      (let* ((_mark102741102750_ _mark102738_)
                             (_E102743102754_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _mark102741102750_))))
                             (_K102744102766_
                              (lambda (_trace102757_
                                       _phi102758_
                                       _ctx102759_
                                       _subst102760_)
                                (let* ((_subs102762_
                                        (if _subst102760_
                                            (let ()
                                              (declare (not safe))
                                              (hash->list _subst102760_))
                                            '()))
                                       (__tmp111876
                                        (map (lambda (_pair102764_)
                                               (let ((__tmp111879
                                                      (let ((__tmp111880
                                                             (car _pair102764_)))
                                                        (declare (not safe))
                                                        (_quote-e102740_
                                                         __tmp111880)))
                                                     (__tmp111877
                                                      (let ((__tmp111878
                                                             (cdr _pair102764_)))
                                                        (declare (not safe))
                                                        (_quote-e102740_
                                                         __tmp111878))))
                                                 (declare (not safe))
                                                 (cons __tmp111879
                                                       __tmp111877)))
                                             _subs102762_)))
                                  (declare (not safe))
                                  (cons _phi102758_ __tmp111876)))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _mark102741102750_
                               'gx#expander-mark::t))
                            (let* ((_e102745102769_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark102741102750_
                                       '1
                                       gx#expander-mark::t
                                       '#f)))
                                   (_subst102772_ _e102745102769_)
                                   (_e102746102774_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark102741102750_
                                       '2
                                       gx#expander-mark::t
                                       '#f)))
                                   (_ctx102777_ _e102746102774_)
                                   (_e102747102779_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark102741102750_
                                       '3
                                       gx#expander-mark::t
                                       '#f)))
                                   (_phi102782_ _e102747102779_)
                                   (_e102748102784_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark102741102750_
                                       '4
                                       gx#expander-mark::t
                                       '#f)))
                                   (_trace102787_ _e102748102784_))
                              (declare (not safe))
                              (_K102744102766_
                               _trace102787_
                               _phi102782_
                               _ctx102777_
                               _subst102772_))
                            (let ()
                              (declare (not safe))
                              (_E102743102754_)))))))
                 (_context-ref102649_
                  (lambda (_ctx102725_)
                    (if (let ((__tmp111881
                               (##structure-ref
                                _ctx102725_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp111881
                           'gx#module-context::t))
                        (let ((_ctx-ref102727_
                               (let ()
                                 (declare (not safe))
                                 (_context-ref-nested102651_ _ctx102725_)))
                              (_ctx-origin102728_
                               (let ()
                                 (declare (not safe))
                                 (_context-ref-origin102650_ _ctx102725_)))
                              (_origin102729_
                               (let ((__tmp111882
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (_context-ref-origin102650_ __tmp111882))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _origin102729_ _ctx-origin102728_))
                              (let ((_ref102731_
                                     (let ((__tmp111883
                                            (gx#current-expander-context)))
                                       (declare (not safe))
                                       (_context-ref-nested102651_
                                        __tmp111883))))
                                (let _lp102733_ ((_ref102735_
                                                  (cdr _ref102731_))
                                                 (_ctx-ref102736_
                                                  (cdr _ctx-ref102727_)))
                                  (if (and (let ()
                                             (declare (not safe))
                                             (pair? _ref102735_))
                                           (let ((__tmp111885
                                                  (car _ref102735_))
                                                 (__tmp111884
                                                  (car _ctx-ref102736_)))
                                             (declare (not safe))
                                             (eq? __tmp111885 __tmp111884)))
                                      (let ((__tmp111887 (cdr _ref102735_))
                                            (__tmp111886
                                             (cdr _ctx-ref102736_)))
                                        (declare (not safe))
                                        (_lp102733_ __tmp111887 __tmp111886))
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f _ctx-ref102736_)))))
                              _ctx-ref102727_))
                        (let ((__tmp111888
                               (##structure-ref
                                _ctx102725_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp111888)))))
                 (_context-ref-origin102650_
                  (lambda (_ctx102717_)
                    (let _lp102719_ ((_ctx102721_ _ctx102717_))
                      (let ((_super102723_
                             (##structure-ref
                              _ctx102721_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super102723_
                               'gx#module-context::t))
                            (let ()
                              (declare (not safe))
                              (_lp102719_ _super102723_))
                            _ctx102721_)))))
                 (_context-ref-nested102651_
                  (lambda (_ctx102708_)
                    (let _lp102710_ ((_ctx102712_ _ctx102708_) (_r102713_ '()))
                      (let ((_super102715_
                             (##structure-ref
                              _ctx102712_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super102715_
                               'gx#module-context::t))
                            (let ((__tmp111889
                                   (let ((__tmp111890
                                          (car (##structure-ref
                                                _ctx102712_
                                                '7
                                                gx#module-context::t
                                                '#f))))
                                     (declare (not safe))
                                     (cons __tmp111890 _r102713_))))
                              (declare (not safe))
                              (_lp102710_ _super102715_ __tmp111889))
                            (let ((__tmp111891
                                   (let ((__tmp111892
                                          (##structure-ref
                                           _ctx102712_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (make-symbol__1 '":" __tmp111892))))
                              (declare (not safe))
                              (cons __tmp111891 _r102713_))))))))
          (let* ((_g102653102666_
                  (lambda (_g102654102663_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g102654102663_))))
                 (_g102652102705_
                  (lambda (_g102654102669_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g102654102669_))
                        (let ((_e102656102671_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g102654102669_))))
                          (let ((_hd102657102674_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e102656102671_)))
                                (_tl102658102676_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e102656102671_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl102658102676_))
                                (let ((_e102659102679_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl102658102676_))))
                                  (let ((_hd102660102682_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e102659102679_)))
                                        (_tl102661102684_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e102659102679_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl102661102684_))
                                        ((lambda (_L102687_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _L102687_))
                                               (let ((_$e102700_
                                                      (let ((__tmp111893
                                                             (gxc#current-compile-identifiers)))
                                                        (declare (not safe))
                                                        (hash-get
                                                         __tmp111893
                                                         _L102687_))))
                                                 (if _$e102700_
                                                     (values _$e102700_)
                                                     (let ((_marks102703_
                                                            (##direct-structure-ref
                                                             _L102687_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (null? _marks102703_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-simple102645_
                                                              _L102687_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-serialized102646_
                                                              _L102687_
                                                              _marks102703_))))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _L102687_))))
                                         _hd102660102682_)
                                        (let ()
                                          (declare (not safe))
                                          (_g102653102666_ _g102654102669_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g102653102666_ _g102654102669_)))))
                        (let ()
                          (declare (not safe))
                          (_g102653102666_ _g102654102669_))))))
            (declare (not safe))
            (_g102652102705_ _stx102641_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_self102572_ _stx102573_)
        (let* ((_g102575102592_
                (lambda (_g102576102589_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102576102589_))))
               (_g102574102637_
                (lambda (_g102576102595_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102576102595_))
                      (let ((_e102579102597_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102576102595_))))
                        (let ((_hd102580102600_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102579102597_)))
                              (_tl102581102602_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102579102597_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102581102602_))
                              (let ((_e102582102605_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102581102602_))))
                                (let ((_hd102583102608_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102582102605_)))
                                      (_tl102584102610_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102582102605_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102584102610_))
                                      (let ((_e102585102613_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102584102610_))))
                                        (let ((_hd102586102616_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102585102613_)))
                                              (_tl102587102618_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102585102613_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102587102618_))
                                              ((lambda (_L102621_ _L102622_)
                                                 (let ((__tmp111894
                                                        (let ((__tmp111897
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _L102622_)))
                      (__tmp111895
                       (let ((__tmp111896
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1 _self102572_ _L102621_))))
                         (declare (not safe))
                         (cons __tmp111896 '()))))
                  (declare (not safe))
                  (cons __tmp111897 __tmp111895))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'define __tmp111894)))
                                               _hd102586102616_
                                               _hd102583102608_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102575102592_
                                                 _g102576102595_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102575102592_ _g102576102595_)))))
                              (let ()
                                (declare (not safe))
                                (_g102575102592_ _g102576102595_)))))
                      (let ()
                        (declare (not safe))
                        (_g102575102592_ _g102576102595_))))))
          (declare (not safe))
          (_g102574102637_ _stx102573_))))
    (define gxc#generate-meta-begin%
      (lambda (_self102521_ _stx102522_)
        (let* ((_g102524102534_
                (lambda (_g102525102531_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102525102531_))))
               (_g102523102569_
                (lambda (_g102525102537_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102525102537_))
                      (let ((_e102527102539_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102525102537_))))
                        (let ((_hd102528102542_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102527102539_)))
                              (_tl102529102544_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102527102539_))))
                          ((lambda (_L102547_)
                             (let* ((_c-body102561_
                                     (map (lambda (_g102556102558_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self102521_
                                               _g102556102558_)))
                                          _L102547_))
                                    (_c-body102566_
                                     (filter (lambda (_$obj102563_)
                                               (let ((__tmp111898
                                                      (let ()
                                                        (declare (not safe))
                                                        (eq? _$obj102563_
                                                             '#!void))))
                                                 (declare (not safe))
                                                 (not __tmp111898)))
                                             _c-body102561_)))
                               (let ()
                                 (declare (not safe))
                                 (cons '%#begin _c-body102566_))))
                           _tl102529102544_)))
                      (let ()
                        (declare (not safe))
                        (_g102524102534_ _g102525102537_))))))
          (declare (not safe))
          (_g102523102569_ _stx102522_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_self102429_ _stx102430_)
        (let* ((_g102432102442_
                (lambda (_g102433102439_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102433102439_))))
               (_g102431102518_
                (lambda (_g102433102445_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102433102445_))
                      (let ((_e102435102447_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102433102445_))))
                        (let ((_hd102436102450_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102435102447_)))
                              (_tl102437102452_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102435102447_))))
                          ((lambda (_L102455_)
                             (let* ((_phi102465_
                                     (let ((__tmp111899
                                            (gx#current-expander-phi)))
                                       (declare (not safe))
                                       (fx+ __tmp111899 '1)))
                                    (_block102467_
                                     (let ((__tmp111900
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _self102429_
                                               'state))))
                                       (declare (not safe))
                                       (gxc#meta-state-begin-phi!
                                        __tmp111900
                                        _phi102465_)))
                                    (_compiled102470_
                                     (let ((__tmp111901
                                            (lambda ()
                                              (let ((__tmp111903
                                                     (let ((__tmp111904
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))))
                                                       (declare (not safe))
                                                       (cons __tmp111904
                                                             _L102455_)))
                                                    (__tmp111902
                                                     (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _self102429_
                                                        'state))))
                                                (declare (not safe))
                                                (gxc#apply-generate-meta-phi
                                                 __tmp111903
                                                 'state:
                                                 __tmp111902)))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp111901
                                        gx#current-expander-phi
                                        _phi102465_))))
                               (let* ((_g102473102483_
                                       (lambda (_g102474102480_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g102474102480_))))
                                      (_g102472102515_
                                       (lambda (_g102474102486_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _g102474102486_))
                                             (let ((_e102476102488_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _g102474102486_))))
                                               (let ((_hd102477102491_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e102476102488_)))
                                                     (_tl102478102493_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e102476102488_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _hd102477102491_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#begin
                                                            _hd102477102491_))
                                                         ((lambda (_L102496_)
                                                            (let ((_c-body102513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (filter (lambda (_$obj102510_)
                                     (let ((__tmp111905
                                            (let ()
                                              (declare (not safe))
                                              (eq? _$obj102510_ '#!void))))
                                       (declare (not safe))
                                       (not __tmp111905)))
                                   _L102496_)))
                      (if _block102467_
                          (let ((__tmp111906
                                 (let ((__tmp111907
                                        (let ((__tmp111908
                                               (let ((__tmp111912
                                                      (let ((__tmp111913
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons 'load-module '()))))
                (declare (not safe))
                (cons '%#ref __tmp111913)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp111909
                                                      (let ((__tmp111910
                                                             (let ((__tmp111911
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _block102467_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp111911))))
                (declare (not safe))
                (cons __tmp111910 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp111912
                                                       __tmp111909))))
                                          (declare (not safe))
                                          (cons '%#call __tmp111908))))
                                   (declare (not safe))
                                   (cons __tmp111907 _c-body102513_))))
                            (declare (not safe))
                            (cons '%#begin-syntax __tmp111906))
                          (if (let ()
                                (declare (not safe))
                                (null? _c-body102513_))
                              '#!void
                              (let ()
                                (declare (not safe))
                                (cons '%#begin-syntax _c-body102513_))))))
                  _tl102478102493_)
                 (let ()
                   (declare (not safe))
                   (_g102473102483_ _g102474102486_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g102473102483_
                                                        _g102474102486_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g102473102483_
                                                _g102474102486_))))))
                                 (declare (not safe))
                                 (_g102472102515_ _compiled102470_))))
                           _tl102437102452_)))
                      (let ()
                        (declare (not safe))
                        (_g102432102442_ _g102433102445_))))))
          (declare (not safe))
          (_g102431102518_ _stx102430_))))
    (define gxc#generate-meta-module%
      (lambda (_self102360_ _stx102361_)
        (let ((__tmp111914
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _self102360_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp111914))
        (let* ((_g102363102377_
                (lambda (_g102364102374_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102364102374_))))
               (_g102362102426_
                (lambda (_g102364102380_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102364102380_))
                      (let ((_e102367102382_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102364102380_))))
                        (let ((_hd102368102385_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102367102382_)))
                              (_tl102369102387_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102367102382_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102369102387_))
                              (let ((_e102370102390_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102369102387_))))
                                (let ((_hd102371102393_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102370102390_)))
                                      (_tl102372102395_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102370102390_))))
                                  ((lambda (_L102398_ _L102399_)
                                     (let ((_key102412_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _L102399_))))
                                       (if (interned-symbol? _key102412_)
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _stx102361_
                                              _L102399_
                                              _key102412_)))
                                       (let* ((_ctx102414_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _L102399_)))
                                              (_code102417_
                                               (let ((__tmp111915
                                                      (lambda ()
                                                        (let ((__tmp111916
                                                               (##structure-ref
                                                                _ctx102414_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self102360_
                                                           __tmp111916)))))
                                                 (declare (not safe))
                                                 (call-with-parameters
                                                  __tmp111915
                                                  gx#current-expander-context
                                                  _ctx102414_)))
                                              (_rt102419_
                                               (let ((__tmp111917
                                                      (gxc#current-compile-runtime-sections)))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp111917
                                                  _ctx102414_)))
                                              (_loader102421_
                                               (if _rt102419_
                                                   (let ((__tmp111918
                                                          (let ((__tmp111919
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp111923
                                (let ((__tmp111924
                                       (let ()
                                         (declare (not safe))
                                         (cons 'load-module '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp111924)))
                               (__tmp111920
                                (let ((__tmp111921
                                       (let ((__tmp111922
                                              (let ()
                                                (declare (not safe))
                                                (cons _rt102419_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp111922))))
                                  (declare (not safe))
                                  (cons __tmp111921 '()))))
                           (declare (not safe))
                           (cons __tmp111923 __tmp111920))))
                    (declare (not safe))
                    (cons '%#call __tmp111919))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp111918 '()))
                                                   '()))
                                              (_modid102423_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _L102399_))))
                                         (let ((__tmp111925
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _self102360_
                                                   'state))))
                                           (declare (not safe))
                                           (gxc#meta-state-end-phi!
                                            __tmp111925))
                                         (let ((__tmp111926
                                                (let ((__tmp111927
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _code102417_
                                                               _loader102421_))))
                                                  (declare (not safe))
                                                  (cons _modid102423_
                                                        __tmp111927))))
                                           (declare (not safe))
                                           (cons '%#module __tmp111926)))))
                                   _tl102372102395_
                                   _hd102371102393_)))
                              (let ()
                                (declare (not safe))
                                (_g102363102377_ _g102364102380_)))))
                      (let ()
                        (declare (not safe))
                        (_g102363102377_ _g102364102380_))))))
          (declare (not safe))
          (_g102362102426_ _stx102361_))))
    (define gxc#generate-meta-import-path
      (lambda (_ctx102350_ _context-chain102351_)
        (let _lp102353_ ((_ctx102355_ _ctx102350_) (_path102356_ '()))
          (let ((_super102358_
                 (##structure-ref _ctx102355_ '3 gx#phi-context::t '#f)))
            (if (memq _super102358_ _context-chain102351_)
                (let ((__tmp111928
                       (let ((__tmp111929
                              (car (##structure-ref
                                    _ctx102355_
                                    '7
                                    gx#module-context::t
                                    '#f))))
                         (declare (not safe))
                         (cons __tmp111929 _path102356_))))
                  (declare (not safe))
                  (cons '#f __tmp111928))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _super102358_
                       'gx#module-context::t))
                    (let ((__tmp111930
                           (let ((__tmp111931
                                  (car (##structure-ref
                                        _ctx102355_
                                        '7
                                        gx#module-context::t
                                        '#f))))
                             (declare (not safe))
                             (cons __tmp111931 _path102356_))))
                      (declare (not safe))
                      (_lp102353_ _super102358_ __tmp111930))
                    (let ((__tmp111932
                           (let ((__tmp111933
                                  (##structure-ref
                                   _ctx102355_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                             (declare (not safe))
                             (make-symbol__1 '":" __tmp111933))))
                      (declare (not safe))
                      (cons __tmp111932 _path102356_))))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _lp102345_ ((_ctx102347_ (gx#current-expander-context))
                         (_r102348_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _ctx102347_ 'gx#module-context::t))
              (let ((__tmp111935
                     (##structure-ref _ctx102347_ '3 gx#phi-context::t '#f))
                    (__tmp111934
                     (let ()
                       (declare (not safe))
                       (cons _ctx102347_ _r102348_))))
                (declare (not safe))
                (_lp102345_ __tmp111935 __tmp111934))
              _r102348_))))
    (define gxc#generate-meta-import%
      (lambda (_self102114_ _stx102115_)
        (letrec* ((_context-chain102117_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_make-import-spec102118_
                   (lambda (_in102281_)
                     (let* ((_in102282102294_ _in102281_)
                            (_E102284102298_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _in102282102294_))))
                            (_K102285102308_
                             (lambda (_phi102301_
                                      _name102302_
                                      _src-name102303_
                                      _src-phi102304_
                                      _src-key102305_
                                      _src-ctx102306_)
                               (let ((__tmp111936
                                      (let ((__tmp111940
                                             (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _name102302_)))
                                            (__tmp111937
                                             (let ((__tmp111938
                                                    (let ((__tmp111939
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-identifier-key
                                                              _src-name102303_))))
                                                      (declare (not safe))
                                                      (cons __tmp111939 '()))))
                                               (declare (not safe))
                                               (cons _src-phi102304_
                                                     __tmp111938))))
                                        (declare (not safe))
                                        (cons __tmp111940 __tmp111937))))
                                 (declare (not safe))
                                 (cons _phi102301_ __tmp111936)))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _in102282102294_
                              'gx#module-import::t))
                           (let ((_e102286102311_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _in102282102294_
                                     '1
                                     gx#module-import::t
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _e102286102311_
                                    'gx#module-export::t))
                                 (let* ((_e102289102314_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e102286102311_
                                            '1
                                            gx#module-export::t
                                            '#f)))
                                        (_src-ctx102317_ _e102289102314_)
                                        (_e102290102319_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e102286102311_
                                            '2
                                            gx#module-export::t
                                            '#f)))
                                        (_src-key102322_ _e102290102319_)
                                        (_e102291102324_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e102286102311_
                                            '3
                                            gx#module-export::t
                                            '#f)))
                                        (_src-phi102327_ _e102291102324_)
                                        (_e102292102329_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e102286102311_
                                            '4
                                            gx#module-export::t
                                            '#f)))
                                        (_src-name102332_ _e102292102329_)
                                        (_e102287102334_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _in102282102294_
                                            '2
                                            gx#module-import::t
                                            '#f)))
                                        (_name102337_ _e102287102334_)
                                        (_e102288102339_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _in102282102294_
                                            '3
                                            gx#module-import::t
                                            '#f)))
                                        (_phi102342_ _e102288102339_))
                                   (declare (not safe))
                                   (_K102285102308_
                                    _phi102342_
                                    _name102337_
                                    _src-name102332_
                                    _src-phi102327_
                                    _src-key102322_
                                    _src-ctx102317_))
                                 (let ()
                                   (declare (not safe))
                                   (_E102284102298_))))
                           (let () (declare (not safe)) (_E102284102298_))))))
                  (_make-import-path102119_
                   (lambda (_ctx102279_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _ctx102279_
                        _context-chain102117_))))
                  (_make-import-spec-in102120_
                   (lambda (_ctx102276_ _in102277_)
                     (let ((__tmp111941
                            (let ((__tmp111943
                                   (let ()
                                     (declare (not safe))
                                     (_make-import-path102119_ _ctx102276_)))
                                  (__tmp111942 (reverse _in102277_)))
                              (declare (not safe))
                              (cons __tmp111943 __tmp111942))))
                       (declare (not safe))
                       (cons 'spec: __tmp111941)))))
          (let ((__tmp111944
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _self102114_ 'state))))
            (declare (not safe))
            (gxc#meta-state-end-phi! __tmp111944))
          (let* ((_g102122102132_
                  (lambda (_g102123102129_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g102123102129_))))
                 (_g102121102273_
                  (lambda (_g102123102135_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g102123102135_))
                        (let ((_e102125102137_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g102123102135_))))
                          (let ((_hd102126102140_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e102125102137_)))
                                (_tl102127102142_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e102125102137_))))
                            ((lambda (_L102145_)
                               (let _lp102156_ ((_rest102158_ _L102145_)
                                                (_current-src102159_ '#f)
                                                (_current-in102160_ '())
                                                (_r102161_ '()))
                                 (let* ((_rest102162102170_ _rest102158_)
                                        (_else102164102180_
                                         (lambda ()
                                           (let* ((_r102178_
                                                   (if _current-src102159_
                                                       (let ((__tmp111945
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_make-import-spec-in102120_
                         _current-src102159_
                         _current-in102160_))))
                 (declare (not safe))
                 (cons __tmp111945 _r102161_))
               _r102161_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp111946
                                                   (reverse _r102178_)))
                                             (declare (not safe))
                                             (cons '%#import __tmp111946))))
                                        (_K102166102261_
                                         (lambda (_rest102183_ _in102184_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in102184_
                                                  'gx#module-import::t))
                                               (let* ((_in102185102192_
                                                       _in102184_)
                                                      (_E102187102196_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in102185102192_))))
              (_K102188102201_
               (lambda (_src-ctx102199_)
                 (if (let ()
                       (declare (not safe))
                       (eq? _current-src102159_ _src-ctx102199_))
                     (let ((__tmp111947
                            (let ((__tmp111948
                                   (let ()
                                     (declare (not safe))
                                     (_make-import-spec102118_ _in102184_))))
                              (declare (not safe))
                              (cons __tmp111948 _current-in102160_))))
                       (declare (not safe))
                       (_lp102156_
                        _rest102183_
                        _current-src102159_
                        __tmp111947
                        _r102161_))
                     (if _current-src102159_
                         (let ((__tmp111951
                                (let ((__tmp111952
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec102118_
                                          _in102184_))))
                                  (declare (not safe))
                                  (cons __tmp111952 '())))
                               (__tmp111949
                                (let ((__tmp111950
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec-in102120_
                                          _current-src102159_
                                          _current-in102160_))))
                                  (declare (not safe))
                                  (cons __tmp111950 _r102161_))))
                           (declare (not safe))
                           (_lp102156_
                            _rest102183_
                            _src-ctx102199_
                            __tmp111951
                            __tmp111949))
                         (let ((__tmp111953
                                (let ((__tmp111954
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec102118_
                                          _in102184_))))
                                  (declare (not safe))
                                  (cons __tmp111954 '()))))
                           (declare (not safe))
                           (_lp102156_
                            _rest102183_
                            _src-ctx102199_
                            __tmp111953
                            _r102161_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _in102185102192_
                                                        'gx#module-import::t))
                                                     (let ((_e102189102204_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _in102185102192_
                                                               '1
                                                               gx#module-import::t
                                                               '#f))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              _e102189102204_
                                                              'gx#module-export::t))
                                                           (let* ((_e102190102207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _e102189102204_
                              '1
                              gx#module-export::t
                              '#f)))
                          (_src-ctx102210_ _e102190102207_))
                     (declare (not safe))
                     (_K102188102201_ _src-ctx102210_))
                   (let () (declare (not safe)) (_E102187102196_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_E102187102196_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _in102184_
                                                      'gx#import-set::t))
                                                   (let* ((_phi102212_
                                                           (##direct-structure-ref
                                                            _in102184_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src102214_
                                                           (##direct-structure-ref
                                                            _in102184_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in102254_
                                                           (let* ((_g102215102224_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (_make-import-path102119_ _src102214_)))
                          (_E102218102228_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _g102215102224_)))))
                     (let ((_K102220102244_
                            (lambda (_path102242_) _path102242_))
                           (_K102219102234_
                            (lambda (_path102232_)
                              (let ()
                                (declare (not safe))
                                (cons 'in: _path102232_)))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _g102215102224_))
                           (let ((_tl102222102249_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _g102215102224_)))
                                 (_hd102221102247_
                                  (let ()
                                    (declare (not safe))
                                    (##car _g102215102224_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl102222102249_))
                                 (let ((_path102252_ _hd102221102247_))
                                   (declare (not safe))
                                   (_K102220102244_ _path102252_))
                                 (let ((_path102237_ _g102215102224_))
                                   (declare (not safe))
                                   (_K102219102234_ _path102237_))))
                           (let ((_path102237_ _g102215102224_))
                             (declare (not safe))
                             (_K102219102234_ _path102237_))))))
                  (_r102256_
                   (if _current-src102159_
                       (let ((__tmp111955
                              (let ()
                                (declare (not safe))
                                (_make-import-spec-in102120_
                                 _current-src102159_
                                 _current-in102160_))))
                         (declare (not safe))
                         (cons __tmp111955 _r102161_))
                       _r102161_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp111956
                                                            (let ((__tmp111957
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _phi102212_))
                               _src-in102254_
                               (let ((__tmp111958
                                      (let ((__tmp111959
                                             (let ()
                                               (declare (not safe))
                                               (cons _src-in102254_ '()))))
                                        (declare (not safe))
                                        (cons _phi102212_ __tmp111959))))
                                 (declare (not safe))
                                 (cons 'phi: __tmp111958)))))
                      (declare (not safe))
                      (cons __tmp111957 _r102256_))))
               (declare (not safe))
               (_lp102156_ _rest102183_ '#f '() __tmp111956)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _in102184_
                                                          'gx#module-context::t))
                                                       (let* ((_r102259_
                                                               (if _current-src102159_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp111960
                                  (let ()
                                    (declare (not safe))
                                    (_make-import-spec-in102120_
                                     _current-src102159_
                                     _current-in102160_))))
                             (declare (not safe))
                             (cons __tmp111960 _r102161_))
                           _r102161_))
                      (__tmp111961
                       (let ((__tmp111962
                              (let ((__tmp111963
                                     (let ()
                                       (declare (not safe))
                                       (_make-import-path102119_ _in102184_))))
                                (declare (not safe))
                                (cons 'runtime: __tmp111963))))
                         (declare (not safe))
                         (cons __tmp111962 _r102259_))))
                 (declare (not safe))
                 (_lp102156_ _rest102183_ '#f '() __tmp111961))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest102162102170_))
                                       (let ((_hd102167102264_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest102162102170_)))
                                             (_tl102168102266_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest102162102170_))))
                                         (let* ((_in102269_ _hd102167102264_)
                                                (_rest102271_
                                                 _tl102168102266_))
                                           (declare (not safe))
                                           (_K102166102261_
                                            _rest102271_
                                            _in102269_)))
                                       (let ()
                                         (declare (not safe))
                                         (_else102164102180_))))))
                             _tl102127102142_)))
                        (let ()
                          (declare (not safe))
                          (_g102122102132_ _g102123102135_))))))
            (declare (not safe))
            (_g102121102273_ _stx102115_)))))
    (define gxc#generate-meta-export%
      (lambda (_self101924_ _stx101925_)
        (letrec* ((_context-chain101927_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_make-import-path101928_
                   (lambda (_ctx102112_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _ctx102112_
                        _context-chain101927_)))))
          (let* ((_g101930101940_
                  (lambda (_g101931101937_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g101931101937_))))
                 (_g101929102109_
                  (lambda (_g101931101943_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g101931101943_))
                        (let ((_e101933101945_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g101931101943_))))
                          (let ((_hd101934101948_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e101933101945_)))
                                (_tl101935101950_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e101933101945_))))
                            ((lambda (_L101953_)
                               (let _lp101964_ ((_rest101966_ _L101953_)
                                                (_r101967_ '()))
                                 (let* ((_rest101968101976_ _rest101966_)
                                        (_else101970101984_
                                         (lambda ()
                                           (let ((__tmp111964
                                                  (reverse _r101967_)))
                                             (declare (not safe))
                                             (cons '%#export __tmp111964))))
                                        (_K101972102097_
                                         (lambda (_rest101987_ _out101988_)
                                           (let* ((_out101989102002_
                                                   _out101988_)
                                                  (_E101992102006_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _out101989102002_)))))
                                             (let ((_K101996102076_
                                                    (lambda (_name102072_
                                                             _phi102073_
                                                             _key102074_)
                                                      (let ((__tmp111965
                                                             (let ((__tmp111966
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp111967
                                   (let ((__tmp111968
                                          (let ((__tmp111971
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-identifier-key
                                                    _key102074_)))
                                                (__tmp111969
                                                 (let ((__tmp111970
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#generate-runtime-identifier-key
                                                           _name102072_))))
                                                   (declare (not safe))
                                                   (cons __tmp111970 '()))))
                                            (declare (not safe))
                                            (cons __tmp111971 __tmp111969))))
                                     (declare (not safe))
                                     (cons _phi102073_ __tmp111968))))
                              (declare (not safe))
                              (cons 'spec: __tmp111967))))
                       (declare (not safe))
                       (cons __tmp111966 _r101967_))))
                (declare (not safe))
                (_lp101964_ _rest101987_ __tmp111965))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K101993102056_
                                                    (lambda (_phi102010_
                                                             _src102011_)
                                                      (let* ((_out102051_
                                                              (if _src102011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp111972
                                 (let ((__tmp111973
                                        (let* ((_g102012102021_
                                                (let ()
                                                  (declare (not safe))
                                                  (_make-import-path101928_
                                                   _src102011_)))
                                               (_E102015102025_
                                                (lambda ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"No clause matching"
                                                           _g102012102021_)))))
                                          (let ((_K102017102041_
                                                 (lambda (_path102039_)
                                                   _path102039_))
                                                (_K102016102031_
                                                 (lambda (_path102029_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'in:
                                                           _path102029_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _g102012102021_))
                                                (let ((_tl102019102046_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _g102012102021_)))
                                                      (_hd102018102044_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _g102012102021_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##null? _tl102019102046_))
                                                      (let ((_path102049_
                                                             _hd102018102044_))
                                                        (declare (not safe))
                                                        (_K102017102041_
                                                         _path102049_))
                                                      (let ((_path102034_
                                                             _g102012102021_))
                                                        (declare (not safe))
                                                        (_K102016102031_
                                                         _path102034_))))
                                                (let ((_path102034_
                                                       _g102012102021_))
                                                  (declare (not safe))
                                                  (_K102016102031_
                                                   _path102034_)))))))
                                   (declare (not safe))
                                   (cons __tmp111973 '()))))
                            (declare (not safe))
                            (cons 'import: __tmp111972))
                          '#t))
                     (_out102053_
                      (if (let () (declare (not safe)) (fxzero? _phi102010_))
                          _out102051_
                          (let ((__tmp111974
                                 (let ((__tmp111975
                                        (let ()
                                          (declare (not safe))
                                          (cons _out102051_ '()))))
                                   (declare (not safe))
                                   (cons _phi102010_ __tmp111975))))
                            (declare (not safe))
                            (cons 'phi: __tmp111974)))))
                (let ((__tmp111976
                       (let ()
                         (declare (not safe))
                         (cons _out102053_ _r101967_))))
                  (declare (not safe))
                  (_lp101964_ _rest101987_ __tmp111976))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_try-match101991102069_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _out101989102002_
                                                               'gx#export-set::t))
                                                            (let* ((_e101994102059_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _out101989102002_
                               '1
                               gx#export-set::t
                               '#f)))
                           (_e101995102064_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _out101989102002_
                               '2
                               gx#export-set::t
                               '#f))))
                      (let ((_src102062_ _e101994102059_)
                            (_phi102067_ _e101995102064_))
                        (let ()
                          (declare (not safe))
                          (_K101993102056_ _phi102067_ _src102062_))))
                    (let () (declare (not safe)) (_E101992102006_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _out101989102002_
                                                        'gx#module-export::t))
                                                     (let* ((_e101997102079_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _out101989102002_
                        '1
                        gx#module-export::t
                        '#f)))
                    (_e101998102082_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out101989102002_
                        '2
                        gx#module-export::t
                        '#f)))
                    (_e101999102087_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out101989102002_
                        '3
                        gx#module-export::t
                        '#f)))
                    (_e102000102092_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out101989102002_
                        '4
                        gx#module-export::t
                        '#f))))
               (let ((_key102085_ _e101998102082_)
                     (_phi102090_ _e101999102087_)
                     (_name102095_ _e102000102092_))
                 (let ()
                   (declare (not safe))
                   (_K101996102076_ _name102095_ _phi102090_ _key102085_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_try-match101991102069_)))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest101968101976_))
                                       (let ((_hd101973102100_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest101968101976_)))
                                             (_tl101974102102_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest101968101976_))))
                                         (let* ((_out102105_ _hd101973102100_)
                                                (_rest102107_
                                                 _tl101974102102_))
                                           (declare (not safe))
                                           (_K101972102097_
                                            _rest102107_
                                            _out102105_)))
                                       (let ()
                                         (declare (not safe))
                                         (_else101970101984_))))))
                             _tl101935101950_)))
                        (let ()
                          (declare (not safe))
                          (_g101930101940_ _g101931101943_))))))
            (declare (not safe))
            (_g101929102109_ _stx101925_)))))
    (define gxc#generate-meta-provide%
      (lambda (_self101885_ _stx101886_)
        (let ((__tmp111977
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _self101885_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp111977))
        (let* ((_g101888101898_
                (lambda (_g101889101895_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101889101895_))))
               (_g101887101921_
                (lambda (_g101889101901_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101889101901_))
                      (let ((_e101891101903_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101889101901_))))
                        (let ((_hd101892101906_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101891101903_)))
                              (_tl101893101908_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101891101903_))))
                          ((lambda (_L101911_)
                             (let ((__tmp111978
                                    (map gxc#generate-runtime-identifier
                                         _L101911_)))
                               (declare (not safe))
                               (cons '%#provide __tmp111978)))
                           _tl101893101908_)))
                      (let ()
                        (declare (not safe))
                        (_g101888101898_ _g101889101901_))))))
          (declare (not safe))
          (_g101887101921_ _stx101886_))))
    (define gxc#generate-meta-extern%
      (lambda (_self101756_ _stx101757_)
        (letrec ((_generate1101759_
                  (lambda (_id101880_ _eid101881_)
                    (let ((_eid101883_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _eid101881_))))
                      (if (interned-symbol? _eid101883_)
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _stx101757_
                             _eid101883_)))
                      (let ((__tmp111980
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-identifier _id101880_)))
                            (__tmp111979
                             (let ()
                               (declare (not safe))
                               (cons _eid101883_ '()))))
                        (declare (not safe))
                        (cons __tmp111980 __tmp111979))))))
          (let* ((_g101761101789_
                  (lambda (_g101762101786_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g101762101786_))))
                 (_g101760101877_
                  (lambda (_g101762101792_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g101762101792_))
                        (let ((_e101765101794_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g101762101792_))))
                          (let ((_hd101766101797_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e101765101794_)))
                                (_tl101767101799_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e101765101794_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl101767101799_))
                                (let ((_g111981_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl101767101799_
                                          '0))))
                                  (begin
                                    (let ((_g111982_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g111981_)
                                                 (##vector-length _g111981_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g111982_ 2)))
                                          (error "Context expects 2 values"
                                                 _g111982_)))
                                    (let ((_target101768101802_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g111981_ 0)))
                                          (_tl101770101804_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g111981_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl101770101804_))
                                          (letrec ((_loop101771101807_
                                                    (lambda (_hd101769101810_
                                                             _eid101775101812_
                                                             _id101776101814_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd101769101810_))
                                                          (let ((_e101772101817_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd101769101810_))))
                    (let ((_lp-hd101773101820_
                           (let ()
                             (declare (not safe))
                             (##car _e101772101817_)))
                          (_lp-tl101774101822_
                           (let ()
                             (declare (not safe))
                             (##cdr _e101772101817_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _lp-hd101773101820_))
                          (let ((_e101779101825_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _lp-hd101773101820_))))
                            (let ((_hd101780101828_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e101779101825_)))
                                  (_tl101781101830_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e101779101825_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl101781101830_))
                                  (let ((_e101782101833_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl101781101830_))))
                                    (let ((_hd101783101836_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e101782101833_)))
                                          (_tl101784101838_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e101782101833_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl101784101838_))
                                          (let ((__tmp111984
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd101783101836_
                                                         _eid101775101812_)))
                                                (__tmp111983
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd101780101828_
                                                         _id101776101814_))))
                                            (declare (not safe))
                                            (_loop101771101807_
                                             _lp-tl101774101822_
                                             __tmp111984
                                             __tmp111983))
                                          (let ()
                                            (declare (not safe))
                                            (_g101761101789_
                                             _g101762101792_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g101761101789_ _g101762101792_)))))
                          (let ()
                            (declare (not safe))
                            (_g101761101789_ _g101762101792_)))))
                  (let ((_eid101777101841_ (reverse _eid101775101812_))
                        (_id101778101843_ (reverse _id101776101814_)))
                    ((lambda (_L101846_ _L101847_)
                       (let ((__tmp111985
                              (map _generate1101759_
                                   (let ((__tmp111986
                                          (lambda (_g101862101865_
                                                   _g101863101867_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g101862101865_
                                                    _g101863101867_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp111986 '() _L101847_))
                                   (let ((__tmp111987
                                          (lambda (_g101869101872_
                                                   _g101870101874_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g101869101872_
                                                    _g101870101874_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp111987 '() _L101846_)))))
                         (declare (not safe))
                         (cons '%#extern __tmp111985)))
                     _eid101777101841_
                     _id101778101843_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_loop101771101807_
                                               _target101768101802_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_g101761101789_
                                             _g101762101792_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g101761101789_ _g101762101792_)))))
                        (let ()
                          (declare (not safe))
                          (_g101761101789_ _g101762101792_))))))
            (declare (not safe))
            (_g101760101877_ _stx101757_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_self101546_ _stx101547_)
        (letrec ((_generate1101549_
                  (lambda (_id101751_)
                    (let ((_eid101753_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _id101751_)))
                          (_ident101754_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _id101751_))))
                      (let ((__tmp111988
                             (let ((__tmp111989
                                    (let ()
                                      (declare (not safe))
                                      (cons _eid101753_ '()))))
                               (declare (not safe))
                               (cons _ident101754_ __tmp111989))))
                        (declare (not safe))
                        (cons '%#define-runtime __tmp111988)))))
                 (_generate*101550_
                  (lambda (_all101719_)
                    (let* ((_all101720101728_ _all101719_)
                           (_else101722101736_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (cons '%#begin _all101719_))))
                           (_K101724101741_
                            (lambda (_one101739_) _one101739_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all101720101728_))
                          (let ((_hd101725101744_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all101720101728_)))
                                (_tl101726101746_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all101720101728_))))
                            (let ((_one101749_ _hd101725101744_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl101726101746_))
                                  (let ()
                                    (declare (not safe))
                                    (_K101724101741_ _one101749_))
                                  (let ()
                                    (declare (not safe))
                                    (_else101722101736_)))))
                          (let ()
                            (declare (not safe))
                            (_else101722101736_)))))))
          (let* ((_g101552101569_
                  (lambda (_g101553101566_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g101553101566_))))
                 (_g101551101716_
                  (lambda (_g101553101572_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g101553101572_))
                        (let ((_e101556101574_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g101553101572_))))
                          (let ((_hd101557101577_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e101556101574_)))
                                (_tl101558101579_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e101556101574_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl101558101579_))
                                (let ((_e101559101582_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl101558101579_))))
                                  (let ((_hd101560101585_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e101559101582_)))
                                        (_tl101561101587_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e101559101582_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl101561101587_))
                                        (let ((_e101562101590_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl101561101587_))))
                                          (let ((_hd101563101593_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e101562101590_)))
                                                (_tl101564101595_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e101562101590_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl101564101595_))
                                                ((lambda (_L101598_ _L101599_)
                                                   (let _lp101615_ ((_rest101617_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L101599_)
                            (_r101618_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((___stx111132111133_
                                                             _rest101617_)
                                                            (_g101623101640_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx111132111133_)))))
               (let ((___kont111134111135_
                      (lambda (_L101703_)
                        (let ()
                          (declare (not safe))
                          (_lp101615_ _L101703_ _r101618_))))
                     (___kont111136111137_
                      (lambda (_L101676_ _L101677_)
                        (let ((__tmp111990
                               (let ((__tmp111991
                                      (let ()
                                        (declare (not safe))
                                        (_generate1101549_ _L101677_))))
                                 (declare (not safe))
                                 (cons __tmp111991 _r101618_))))
                          (declare (not safe))
                          (_lp101615_ _L101676_ __tmp111990))))
                     (___kont111138111139_
                      (lambda (_L101652_)
                        (let ((__tmp111992
                               (let ((__tmp111993
                                      (let ((__tmp111994
                                             (let ()
                                               (declare (not safe))
                                               (_generate1101549_ _L101652_))))
                                        (declare (not safe))
                                        (cons __tmp111994 '()))))
                                 (declare (not safe))
                                 (foldl1 cons __tmp111993 _r101618_))))
                          (declare (not safe))
                          (_generate*101550_ __tmp111992))))
                     (___kont111140111141_
                      (lambda ()
                        (let ((__tmp111995 (reverse _r101618_)))
                          (declare (not safe))
                          (_generate*101550_ __tmp111995)))))
                 (let ((_g101621101663_
                        (lambda ()
                          (let ((_L101652_ ___stx111132111133_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _L101652_))
                                (___kont111138111139_ _L101652_)
                                (___kont111140111141_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? ___stx111132111133_))
                       (let ((_e101626101692_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e ___stx111132111133_))))
                         (let ((_tl101628101697_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e101626101692_)))
                               (_hd101627101695_
                                (let ()
                                  (declare (not safe))
                                  (##car _e101626101692_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _hd101627101695_))
                               (let ((_e101629101700_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd101627101695_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e101629101700_ '#f))
                                     (___kont111134111135_ _tl101628101697_)
                                     (___kont111136111137_
                                      _tl101628101697_
                                      _hd101627101695_)))
                               (___kont111136111137_
                                _tl101628101697_
                                _hd101627101695_))))
                       (let () (declare (not safe)) (_g101621101663_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd101563101593_
                                                 _hd101560101585_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g101552101569_
                                                   _g101553101572_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g101552101569_ _g101553101572_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g101552101569_ _g101553101572_)))))
                        (let ()
                          (declare (not safe))
                          (_g101552101569_ _g101553101572_))))))
            (declare (not safe))
            (_g101551101716_ _stx101547_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_self101443_ _stx101444_)
        (let* ((_g101446101463_
                (lambda (_g101447101460_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101447101460_))))
               (_g101445101543_
                (lambda (_g101447101466_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101447101466_))
                      (let ((_e101450101468_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101447101466_))))
                        (let ((_hd101451101471_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101450101468_)))
                              (_tl101452101473_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101450101468_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101452101473_))
                              (let ((_e101453101476_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101452101473_))))
                                (let ((_hd101454101479_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101453101476_)))
                                      (_tl101455101481_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101453101476_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101455101481_))
                                      (let ((_e101456101484_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101455101481_))))
                                        (let ((_hd101457101487_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101456101484_)))
                                              (_tl101458101489_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101456101484_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101458101489_))
                                              ((lambda (_L101492_ _L101493_)
                                                 (let* ((_eid101508_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _L101493_)))
                                                        (_phi101510_
                                                         (let ((__tmp111996
                                                                (gx#current-expander-phi)))
                                                           (declare (not safe))
                                                           (fx+ __tmp111996
                                                                '1)))
                                                        (_block101512_
                                                         (let ((__tmp111997
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _self101443_ 'state))))
                   (declare (not safe))
                   (gxc#meta-state-begin-phi! __tmp111997 _phi101510_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_g101515101522_
                                                           (lambda (_g101516101519_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _g101516101519_))))
                  (_g101514101540_
                   (lambda (_g101516101525_)
                     ((lambda (_L101527_)
                        (let ()
                          (let ((__tmp112002
                                 (let ()
                                   (declare (not safe))
                                   (slot-ref__0 _self101443_ 'state)))
                                (__tmp111998
                                 (let ((__tmp112001
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0
                                           '#f
                                           '%#define-runtime)))
                                       (__tmp111999
                                        (let ((__tmp112000
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L101492_ '()))))
                                          (declare (not safe))
                                          (cons _L101527_ __tmp112000))))
                                   (declare (not safe))
                                   (cons __tmp112001 __tmp111999))))
                            (declare (not safe))
                            (gxc#meta-state-add-phi!
                             __tmp112002
                             _phi101510_
                             __tmp111998))))
                      _g101516101525_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g101514101540_
                                                      _eid101508_))
                                                   (if _block101512_
                                                       (let ((__tmp112003
                                                              (let ((__tmp112009
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp112010
                                    (let ((__tmp112011
                                           (let ((__tmp112012
                                                  (let ((__tmp112016
                                                         (let ((__tmp112017
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'load-module '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp112017)))
                (__tmp112013
                 (let ((__tmp112014
                        (let ((__tmp112015
                               (let ()
                                 (declare (not safe))
                                 (cons _block101512_ '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp112015))))
                   (declare (not safe))
                   (cons __tmp112014 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp112016
                                                          __tmp112013))))
                                             (declare (not safe))
                                             (cons '%#call __tmp112012))))
                                      (declare (not safe))
                                      (cons __tmp112011 '()))))
                               (declare (not safe))
                               (cons '%#begin-syntax __tmp112010)))
                            (__tmp112004
                             (let ((__tmp112005
                                    (let ((__tmp112006
                                           (let ((__tmp112008
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-identifier
                                                     _L101493_)))
                                                 (__tmp112007
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _eid101508_ '()))))
                                             (declare (not safe))
                                             (cons __tmp112008 __tmp112007))))
                                      (declare (not safe))
                                      (cons '%#define-syntax __tmp112006))))
                               (declare (not safe))
                               (cons __tmp112005 '()))))
                        (declare (not safe))
                        (cons __tmp112009 __tmp112004))))
                 (declare (not safe))
                 (cons '%#begin __tmp112003))
               (let ((__tmp112018
                      (let ((__tmp112020
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-identifier _L101493_)))
                            (__tmp112019
                             (let ()
                               (declare (not safe))
                               (cons _eid101508_ '()))))
                        (declare (not safe))
                        (cons __tmp112020 __tmp112019))))
                 (declare (not safe))
                 (cons '%#define-syntax __tmp112018)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd101457101487_
                                               _hd101454101479_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101446101463_
                                                 _g101447101466_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101446101463_ _g101447101466_)))))
                              (let ()
                                (declare (not safe))
                                (_g101446101463_ _g101447101466_)))))
                      (let ()
                        (declare (not safe))
                        (_g101446101463_ _g101447101466_))))))
          (declare (not safe))
          (_g101445101543_ _stx101444_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_self101375_ _stx101376_)
        (let* ((_g101378101395_
                (lambda (_g101379101392_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101379101392_))))
               (_g101377101440_
                (lambda (_g101379101398_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101379101398_))
                      (let ((_e101382101400_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101379101398_))))
                        (let ((_hd101383101403_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101382101400_)))
                              (_tl101384101405_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101382101400_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101384101405_))
                              (let ((_e101385101408_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101384101405_))))
                                (let ((_hd101386101411_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101385101408_)))
                                      (_tl101387101413_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101385101408_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101387101413_))
                                      (let ((_e101388101416_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101387101413_))))
                                        (let ((_hd101389101419_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101388101416_)))
                                              (_tl101390101421_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101388101416_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101390101421_))
                                              ((lambda (_L101424_ _L101425_)
                                                 (let ((__tmp112021
                                                        (let ((__tmp112024
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-identifier _L101425_)))
                      (__tmp112022
                       (let ((__tmp112023
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-identifier _L101424_))))
                         (declare (not safe))
                         (cons __tmp112023 '()))))
                  (declare (not safe))
                  (cons __tmp112024 __tmp112022))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#define-alias
                                                         __tmp112021)))
                                               _hd101389101419_
                                               _hd101386101411_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101378101395_
                                                 _g101379101398_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101378101395_ _g101379101398_)))))
                              (let ()
                                (declare (not safe))
                                (_g101378101395_ _g101379101398_)))))
                      (let ()
                        (declare (not safe))
                        (_g101378101395_ _g101379101398_))))))
          (declare (not safe))
          (_g101377101440_ _stx101376_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_self101372_ _stx101373_)
        (let ((__tmp112026
               (let () (declare (not safe)) (slot-ref__0 _self101372_ 'state)))
              (__tmp112025 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp112026 __tmp112025 _stx101373_))
        (let ()
          (declare (not safe))
          (gxc#generate-meta-define-values% _self101372_ _stx101373_))))
    (define gxc#generate-meta-phi-expr
      (lambda (_self101369_ _stx101370_)
        (let ((__tmp112028
               (let () (declare (not safe)) (slot-ref__0 _self101369_ 'state)))
              (__tmp112027 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp112028 __tmp112027 _stx101370_))
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp112031 (list))
            (__tmp112029
             (let ((__tmp112030
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp112030 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp112031
         '(src n open blocks)
         __tmp112029
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _$args101366_
        (apply make-instance gxc#meta-state::t _$args101366_)))
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
      (lambda (_self101363_ _ctx101364_)
        (if (let ((__tmp112032
                   (let ()
                     (declare (not safe))
                     (##structure-length _self101363_))))
              (declare (not safe))
              (##fx< '4 __tmp112032))
            (begin
              (let ((__tmp112034
                     (let ((__tmp112035
                            (##structure-ref
                             _ctx101364_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp112035)))
                    (__tmp112033
                     (let ()
                       (declare (not safe))
                       (##structure-type _self101363_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self101363_
                 __tmp112034
                 '1
                 __tmp112033
                 '#f))
              (let ((__tmp112036
                     (let ()
                       (declare (not safe))
                       (##structure-type _self101363_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self101363_
                 '1
                 '2
                 __tmp112036
                 '#f))
              (let ((__tmp112038
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp112037
                     (let ()
                       (declare (not safe))
                       (##structure-type _self101363_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self101363_
                 __tmp112038
                 '3
                 __tmp112037
                 '#f))
              (let ((__tmp112039
                     (let ()
                       (declare (not safe))
                       (##structure-type _self101363_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self101363_
                 '()
                 '4
                 __tmp112039
                 '#f)))
            (let ((__tmp112040
                   (let ()
                     (declare (not safe))
                     (##vector-length _self101363_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self101363_
                     '4
                     __tmp112040)))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp112043 (list))
            (__tmp112041
             (let ((__tmp112042
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp112042 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp112043
         '(ctx phi n code)
         __tmp112041
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _$args101238_
        (apply make-instance gxc#meta-state-block::t _$args101238_)))
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
      (lambda (_state101197_ _phi101198_)
        (let* ((_state101199101207_ _state101197_)
               (_E101201101211_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _state101199101207_))))
               (_K101202101220_
                (lambda (_open101214_ _n101215_ _src101216_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _open101214_ _phi101198_))
                      '#f
                      (let ((_block-ref101218_
                             (string-append
                              _src101216_
                              '"__"
                              (number->string _n101215_))))
                        (##structure-set!
                         _state101197_
                         (let () (declare (not safe)) (fx+ _n101215_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp112044
                               (let ((__tmp112045
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp112045
                                  _phi101198_
                                  _n101215_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _open101214_ _phi101198_ __tmp112044))
                        _block-ref101218_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _state101199101207_
                 'gxc#meta-state::t))
              (let* ((_e101203101223_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state101199101207_
                         '1
                         gxc#meta-state::t
                         '#f)))
                     (_src101226_ _e101203101223_)
                     (_e101204101228_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state101199101207_
                         '2
                         gxc#meta-state::t
                         '#f)))
                     (_n101231_ _e101204101228_)
                     (_e101205101233_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state101199101207_
                         '3
                         gxc#meta-state::t
                         '#f)))
                     (_open101236_ _e101205101233_))
                (declare (not safe))
                (_K101202101220_ _open101236_ _n101231_ _src101226_))
              (let () (declare (not safe)) (_E101201101211_))))))
    (define gxc#meta-state-add-phi!
      (lambda (_state101191_ _phi101192_ _stx101193_)
        (let ((_block101195_
               (let ((__tmp112046
                      (##structure-ref
                       _state101191_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp112046 _phi101192_))))
          (##structure-set!
           _block101195_
           (let ((__tmp112047
                  (##structure-ref
                   _block101195_
                   '4
                   gxc#meta-state-block::t
                   '#f)))
             (declare (not safe))
             (cons _stx101193_ __tmp112047))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_state101186_)
        (##structure-set!
         _state101186_
         (let ((__tmp112050
                (lambda (_g112051_ _block101188_ _r101189_)
                  (let ()
                    (declare (not safe))
                    (cons _block101188_ _r101189_))))
               (__tmp112049
                (##structure-ref _state101186_ '4 gxc#meta-state::t '#f))
               (__tmp112048
                (##structure-ref _state101186_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp112050 __tmp112049 __tmp112048))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state101186_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_state101138_)
        (let () (declare (not safe)) (gxc#meta-state-end-phi! _state101138_))
        (let ((__tmp112053
               (lambda (_block101140_ _r101141_)
                 (let* ((_block101142101151_ _block101140_)
                        (_E101144101155_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _block101142101151_))))
                        (_K101145101163_
                         (lambda (_code101158_
                                  _n101159_
                                  _phi101160_
                                  _ctx101161_)
                           (if (let ()
                                 (declare (not safe))
                                 (null? _code101158_))
                               _r101141_
                               (let ((__tmp112054
                                      (let ((__tmp112055
                                             (let ((__tmp112056
                                                    (let ((__tmp112057
                                                           (let ((__tmp112058
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp112059 (reverse _code101158_)))
                            (declare (not safe))
                            (cons '%#begin __tmp112059))))
                     (declare (not safe))
                     (cons __tmp112058 '()))))
              (declare (not safe))
              (cons _n101159_ __tmp112057))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _phi101160_
                                                     __tmp112056))))
                                        (declare (not safe))
                                        (cons _ctx101161_ __tmp112055))))
                                 (declare (not safe))
                                 (cons __tmp112054 _r101141_))))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _block101142101151_
                          'gxc#meta-state-block::t))
                       (let* ((_e101146101166_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block101142101151_
                                  '1
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_ctx101169_ _e101146101166_)
                              (_e101147101171_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block101142101151_
                                  '2
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_phi101174_ _e101147101171_)
                              (_e101148101176_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block101142101151_
                                  '3
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_n101179_ _e101148101176_)
                              (_e101149101181_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block101142101151_
                                  '4
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_code101184_ _e101149101181_))
                         (declare (not safe))
                         (_K101145101163_
                          _code101184_
                          _n101179_
                          _phi101174_
                          _ctx101169_))
                       (let () (declare (not safe)) (_E101144101155_))))))
              (__tmp112052
               (##structure-ref _state101138_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl1 __tmp112053 '() __tmp112052))))
    (define gxc#collect-expression-refs
      (lambda (_stx101134_)
        (let ((_ht101136_ (let () (declare (not safe)) (make-hash-table-eq))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-expression-refs _stx101134_ 'table: _ht101136_))
          _ht101136_)))
    (define gxc#collect-refs-ref%
      (lambda (_self101077_ _stx101078_)
        (let* ((_g101080101093_
                (lambda (_g101081101090_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101081101090_))))
               (_g101079101131_
                (lambda (_g101081101096_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101081101096_))
                      (let ((_e101083101098_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101081101096_))))
                        (let ((_hd101084101101_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101083101098_)))
                              (_tl101085101103_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101083101098_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101085101103_))
                              (let ((_e101086101106_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101085101103_))))
                                (let ((_hd101087101109_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101086101106_)))
                                      (_tl101088101111_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101086101106_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl101088101111_))
                                      ((lambda (_L101114_)
                                         (let* ((_bind101126_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _L101114_)))
                                                (_eid101128_
                                                 (if _bind101126_
                                                     (##structure-ref
                                                      _bind101126_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L101114_)))))
                                           (let ((__tmp112060
                                                  (let ()
                                                    (declare (not safe))
                                                    (slot-ref__0
                                                     _self101077_
                                                     'table))))
                                             (declare (not safe))
                                             (hash-put!
                                              __tmp112060
                                              _eid101128_
                                              _eid101128_))))
                                       _hd101087101109_)
                                      (let ()
                                        (declare (not safe))
                                        (_g101080101093_ _g101081101096_)))))
                              (let ()
                                (declare (not safe))
                                (_g101080101093_ _g101081101096_)))))
                      (let ()
                        (declare (not safe))
                        (_g101080101093_ _g101081101096_))))))
          (declare (not safe))
          (_g101079101131_ _stx101078_))))
    (define gxc#collect-refs-setq%
      (lambda (_self101004_ _stx101005_)
        (let* ((_g101007101024_
                (lambda (_g101008101021_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101008101021_))))
               (_g101006101074_
                (lambda (_g101008101027_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101008101027_))
                      (let ((_e101011101029_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101008101027_))))
                        (let ((_hd101012101032_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101011101029_)))
                              (_tl101013101034_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101011101029_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101013101034_))
                              (let ((_e101014101037_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101013101034_))))
                                (let ((_hd101015101040_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101014101037_)))
                                      (_tl101016101042_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101014101037_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101016101042_))
                                      (let ((_e101017101045_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101016101042_))))
                                        (let ((_hd101018101048_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101017101045_)))
                                              (_tl101019101050_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101017101045_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101019101050_))
                                              ((lambda (_L101053_ _L101054_)
                                                 (let* ((_bind101069_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _L101054_)))
                                                        (_eid101071_
                                                         (if _bind101069_
                                                             (##structure-ref
                                                              _bind101069_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _L101054_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp112061
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self101004_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp112061
                                                      _eid101071_
                                                      _eid101071_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self101004_
                                                      _L101053_))))
                                               _hd101018101048_
                                               _hd101015101040_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101007101024_
                                                 _g101008101027_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101007101024_ _g101008101027_)))))
                              (let ()
                                (declare (not safe))
                                (_g101007101024_ _g101008101027_)))))
                      (let ()
                        (declare (not safe))
                        (_g101007101024_ _g101008101027_))))))
          (declare (not safe))
          (_g101006101074_ _stx101005_))))
    (define gxc#find-runtime-begin%
      (lambda (_self100961_ _stx100962_)
        (let* ((_g100964100974_
                (lambda (_g100965100971_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100965100971_))))
               (_g100963101001_
                (lambda (_g100965100977_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100965100977_))
                      (let ((_e100967100979_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100965100977_))))
                        (let ((_hd100968100982_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100967100979_)))
                              (_tl100969100984_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100967100979_))))
                          ((lambda (_L100987_)
                             (let ((__tmp112062
                                    (lambda (_g100996100998_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self100961_
                                         _g100996100998_)))))
                               (declare (not safe))
                               (ormap1 __tmp112062 _L100987_)))
                           _tl100969100984_)))
                      (let ()
                        (declare (not safe))
                        (_g100964100974_ _g100965100977_))))))
          (declare (not safe))
          (_g100963101001_ _stx100962_))))
    (define gxc#count-values-single% (lambda (_self100958_ _stx100959_) '1))
    (define gxc#count-values-call%
      (lambda (_self100824_ _stx100825_)
        (let* ((___stx111162111163_ _stx100825_)
               (_g100828100857_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx111162111163_)))))
          (let ((___kont111164111165_
                 (lambda (_L100925_ _L100926_)
                   (length (let ((__tmp112063
                                  (lambda (_g100947100950_ _g100948100952_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g100947100950_
                                            _g100948100952_)))))
                             (declare (not safe))
                             (foldr1 __tmp112063 '() _L100925_)))))
                (___kont111168111169_ (lambda () '#f)))
            (let ((___match111207111208_
                   (lambda (_e100832100869_
                            _hd100833100872_
                            _tl100834100874_
                            _e100835100877_
                            _hd100836100880_
                            _tl100837100882_
                            _e100838100885_
                            _hd100839100888_
                            _tl100840100890_
                            _e100841100893_
                            _hd100842100896_
                            _tl100843100898_
                            ___splice111166111167_
                            _target100844100901_
                            _tl100846100903_)
                     (letrec ((_loop100847100906_
                               (lambda (_hd100845100909_ _rand100851100911_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd100845100909_))
                                     (let ((_e100848100914_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd100845100909_))))
                                       (let ((_lp-tl100850100919_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e100848100914_)))
                                             (_lp-hd100849100917_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e100848100914_))))
                                         (let ((__tmp112064
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _lp-hd100849100917_
                                                        _rand100851100911_))))
                                           (declare (not safe))
                                           (_loop100847100906_
                                            _lp-tl100850100919_
                                            __tmp112064))))
                                     (let ((_rand100852100922_
                                            (reverse _rand100851100911_)))
                                       (let ((_L100925_ _rand100852100922_)
                                             (_L100926_ _hd100842100896_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L100926_
                                                'values))
                                             (___kont111164111165_
                                              _L100925_
                                              _L100926_)
                                             (___kont111168111169_))))))))
                       (let ()
                         (declare (not safe))
                         (_loop100847100906_ _target100844100901_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx111162111163_))
                  (let ((_e100832100869_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx111162111163_))))
                    (let ((_tl100834100874_
                           (let ()
                             (declare (not safe))
                             (##cdr _e100832100869_)))
                          (_hd100833100872_
                           (let ()
                             (declare (not safe))
                             (##car _e100832100869_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl100834100874_))
                          (let ((_e100835100877_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl100834100874_))))
                            (let ((_tl100837100882_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e100835100877_)))
                                  (_hd100836100880_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e100835100877_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd100836100880_))
                                  (let ((_e100838100885_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd100836100880_))))
                                    (let ((_tl100840100890_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e100838100885_)))
                                          (_hd100839100888_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e100838100885_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd100839100888_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd100839100888_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl100840100890_))
                                                  (let ((_e100841100893_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl100840100890_))))
                                                    (let ((_tl100843100898_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e100841100893_)))
                                                          (_hd100842100896_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e100841100893_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl100843100898_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl100837100882_))
                      (let ((___splice111166111167_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl100837100882_ '0))))
                        (let ((_tl100846100903_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice111166111167_ '1)))
                              (_target100844100901_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice111166111167_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl100846100903_))
                              (___match111207111208_
                               _e100832100869_
                               _hd100833100872_
                               _tl100834100874_
                               _e100835100877_
                               _hd100836100880_
                               _tl100837100882_
                               _e100838100885_
                               _hd100839100888_
                               _tl100840100890_
                               _e100841100893_
                               _hd100842100896_
                               _tl100843100898_
                               ___splice111166111167_
                               _target100844100901_
                               _tl100846100903_)
                              (___kont111168111169_))))
                      (___kont111168111169_))
                  (___kont111168111169_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont111168111169_))
                                              (___kont111168111169_))
                                          (___kont111168111169_))))
                                  (___kont111168111169_))))
                          (___kont111168111169_))))
                  (___kont111168111169_)))))))
    (define gxc#count-values-if%
      (lambda (_self100727_ _stx100728_)
        (let* ((_g100730100751_
                (lambda (_g100731100748_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100731100748_))))
               (_g100729100821_
                (lambda (_g100731100754_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100731100754_))
                      (let ((_e100735100756_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100731100754_))))
                        (let ((_hd100736100759_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100735100756_)))
                              (_tl100737100761_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100735100756_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100737100761_))
                              (let ((_e100738100764_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100737100761_))))
                                (let ((_hd100739100767_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100738100764_)))
                                      (_tl100740100769_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100738100764_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl100740100769_))
                                      (let ((_e100741100772_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl100740100769_))))
                                        (let ((_hd100742100775_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e100741100772_)))
                                              (_tl100743100777_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e100741100772_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl100743100777_))
                                              (let ((_e100744100780_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl100743100777_))))
                                                (let ((_hd100745100783_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e100744100780_)))
                                                      (_tl100746100785_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e100744100780_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl100746100785_))
                                                      ((lambda (_L100788_
                                                                _L100789_
                                                                _L100790_)
                                                         (let ((_c1100807100809_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _self100727_ _L100789_))))
                   (if _c1100807100809_
                       (let* ((_c1100812_ _c1100807100809_)
                              (_c2100813100815_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self100727_ _L100788_))))
                         (if _c2100813100815_
                             (let ((_c2100818_ _c2100813100815_))
                               (if (fx= _c1100812_ _c2100818_) _c1100812_ '#f))
                             '#f))
                       '#f)))
               _hd100745100783_
               _hd100742100775_
               _hd100739100767_)
              (let ()
                (declare (not safe))
                (_g100730100751_ _g100731100754_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g100730100751_
                                                 _g100731100754_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g100730100751_ _g100731100754_)))))
                              (let ()
                                (declare (not safe))
                                (_g100730100751_ _g100731100754_)))))
                      (let ()
                        (declare (not safe))
                        (_g100730100751_ _g100731100754_))))))
          (declare (not safe))
          (_g100729100821_ _stx100728_))))))
