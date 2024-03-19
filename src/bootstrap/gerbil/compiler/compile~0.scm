(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1710833425)
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
        (letrec ((_hash-e112867_
                  (lambda (_id112869_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _id112869_))))))
          (let ()
            (declare (not safe))
            (make-hash-table
             'test:
             gx#bound-identifier=?
             'hash:
             _hash-e112867_)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp114225 (list gxc#::void::t))
            (__tmp114223
             (let ((__tmp114224
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114224 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp114225
         '()
         __tmp114223
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _$args112863_
        (apply make-instance gxc#::collect-bindings::t _$args112863_)))
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
      (lambda (_stx112855_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_self112858_
                (let ((__obj114199
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj114199))
               (__tmp114226
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112858_ _stx112855_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114226
           gxc#current-compile-method
           _self112858_))))
    (define gxc#::lift-modules::t
      (let ((__tmp114229 (list gxc#::void::t))
            (__tmp114227
             (let ((__tmp114228
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114228 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp114229
         '(modules)
         __tmp114227
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _$args112852_
        (apply make-instance gxc#::lift-modules::t _$args112852_)))
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
      (lambda (_g114230_ _modules112823112826_ _stx112828_)
        (let ((_modules112831_
               (if (let ()
                     (declare (not safe))
                     (eq? _modules112823112826_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _modules112823112826_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_self112833_
                  (let ((__obj114201
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj114201
                       _modules112831_
                       '1
                       gxc#::lift-modules::t
                       '#f))
                    __obj114201))
                 (__tmp114231
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self112833_ _stx112828_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp114231
             gxc#current-compile-method
             _self112833_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_keys112822112840_ . _args112842_)
        (apply gxc#apply-lift-modules__%
               _keys112822112840_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys112822112840_
                  'modules:
                  absent-value))
               _args112842_)))
    (define gxc#apply-lift-modules
      (lambda _args112824112848_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _args112824112848_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp114234 (list))
            (__tmp114232
             (let ((__tmp114233
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114233 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp114234
         '()
         __tmp114232
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _$args112818_
        (apply make-instance gxc#::find-runtime-code::t _$args112818_)))
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
      (lambda (_stx112810_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_self112813_
                (let ((__obj114203
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj114203))
               (__tmp114235
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112813_ _stx112810_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114235
           gxc#current-compile-method
           _self112813_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp114238 (list gxc#::false::t))
            (__tmp114236
             (let ((__tmp114237
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114237 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp114238
         '()
         __tmp114236
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _$args112807_
        (apply make-instance gxc#::find-lambda-expression::t _$args112807_)))
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
      (lambda (_stx112799_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_self112802_
                (let ((__obj114205
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj114205))
               (__tmp114239
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112802_ _stx112799_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114239
           gxc#current-compile-method
           _self112802_))))
    (define gxc#::count-values::t
      (let ((__tmp114242 (list gxc#::false-expression::t))
            (__tmp114240
             (let ((__tmp114241
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114241 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp114242
         '()
         __tmp114240
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _$args112796_
        (apply make-instance gxc#::count-values::t _$args112796_)))
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
      (lambda (_stx112788_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_self112791_
                (let ((__obj114207
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj114207))
               (__tmp114243
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112791_ _stx112788_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114243
           gxc#current-compile-method
           _self112791_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp114244 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp114244
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _$args112785_
        (apply make-instance gxc#::generate-runtime-empty::t _$args112785_)))
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
      (let ((__tmp114247 (list gxc#::generate-runtime-empty::t))
            (__tmp114245
             (let ((__tmp114246
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114246 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp114247
         '()
         __tmp114245
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _$args112781_
        (apply make-instance gxc#::generate-loader::t _$args112781_)))
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
      (lambda (_stx112773_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_self112776_
                (let ((__obj114210
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj114210))
               (__tmp114248
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112776_ _stx112773_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114248
           gxc#current-compile-method
           _self112776_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp114249 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp114249
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _$args112770_
        (apply make-instance gxc#::generate-runtime::t _$args112770_)))
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
      (lambda (_stx112762_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_self112765_
                (let ((__obj114212
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj114212))
               (__tmp114250
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112765_ _stx112762_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114250
           gxc#current-compile-method
           _self112765_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp114253 (list gxc#::generate-runtime::t))
            (__tmp114251
             (let ((__tmp114252
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114252 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp114253
         '()
         __tmp114251
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _$args112759_
        (apply make-instance gxc#::generate-runtime-phi::t _$args112759_)))
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
      (lambda (_stx112751_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_self112754_
                (let ((__obj114214
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj114214))
               (__tmp114254
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112754_ _stx112751_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114254
           gxc#current-compile-method
           _self112754_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp114255 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp114255
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _$args112748_
        (apply make-instance gxc#::collect-expression-refs::t _$args112748_)))
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
      (lambda (_g114256_ _table112719112722_ _stx112724_)
        (let ((_table112727_
               (if (let ()
                     (declare (not safe))
                     (eq? _table112719112722_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _table112719112722_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_self112729_
                  (let ((__obj114216
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj114216
                       _table112727_
                       '1
                       gxc#::collect-expression-refs::t
                       '#f))
                    __obj114216))
                 (__tmp114257
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self112729_ _stx112724_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp114257
             gxc#current-compile-method
             _self112729_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_keys112718112736_ . _args112738_)
        (apply gxc#apply-collect-expression-refs__%
               _keys112718112736_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys112718112736_ 'table: absent-value))
               _args112738_)))
    (define gxc#apply-collect-expression-refs
      (lambda _args112720112744_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _args112720112744_)))
    (define gxc#::generate-meta::t
      (let ((__tmp114260 (list gxc#::void-expression::t))
            (__tmp114258
             (let ((__tmp114259
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114259 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp114260
         '(state)
         __tmp114258
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _$args112714_
        (apply make-instance gxc#::generate-meta::t _$args112714_)))
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
      (lambda (_g114261_ _state112685112688_ _stx112690_)
        (let ((_state112693_
               (if (let ()
                     (declare (not safe))
                     (eq? _state112685112688_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _state112685112688_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_self112695_
                  (let ((__obj114218
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj114218
                       _state112693_
                       '1
                       gxc#::generate-meta::t
                       '#f))
                    __obj114218))
                 (__tmp114262
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self112695_ _stx112690_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp114262
             gxc#current-compile-method
             _self112695_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_keys112684112702_ . _args112704_)
        (apply gxc#apply-generate-meta__%
               _keys112684112702_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys112684112702_ 'state: absent-value))
               _args112704_)))
    (define gxc#apply-generate-meta
      (lambda _args112686112710_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _args112686112710_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp114265 (list))
            (__tmp114263
             (let ((__tmp114264
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114264 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp114265
         '(state)
         __tmp114263
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _$args112680_
        (apply make-instance gxc#::generate-meta-phi::t _$args112680_)))
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
      (lambda (_g114266_ _state112651112654_ _stx112656_)
        (let ((_state112659_
               (if (let ()
                     (declare (not safe))
                     (eq? _state112651112654_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _state112651112654_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_self112661_
                  (let ((__obj114220
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj114220
                       _state112659_
                       '1
                       gxc#::generate-meta-phi::t
                       '#f))
                    __obj114220))
                 (__tmp114267
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self112661_ _stx112656_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp114267
             gxc#current-compile-method
             _self112661_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_keys112650112668_ . _args112670_)
        (apply gxc#apply-generate-meta-phi__%
               _keys112650112668_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys112650112668_ 'state: absent-value))
               _args112670_)))
    (define gxc#apply-generate-meta-phi
      (lambda _args112652112676_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _args112652112676_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_self112579_ _stx112580_)
        (let* ((_g112582112599_
                (lambda (_g112583112596_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112583112596_))))
               (_g112581112646_
                (lambda (_g112583112602_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112583112602_))
                      (let ((_e112588112604_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112583112602_))))
                        (let ((_hd112587112607_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112588112604_)))
                              (_tl112586112609_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112588112604_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112586112609_))
                              (let ((_e112591112612_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112586112609_))))
                                (let ((_hd112590112615_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112591112612_)))
                                      (_tl112589112617_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112591112612_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl112589112617_))
                                      (let ((_e112594112620_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl112589112617_))))
                                        (let ((_hd112593112623_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e112594112620_)))
                                              (_tl112592112625_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e112594112620_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl112592112625_))
                                              ((lambda (_L112628_ _L112629_)
                                                 (let ((__tmp114268
                                                        (lambda (_bind112644_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _bind112644_))
                      (let ()
                        (declare (not safe))
                        (gxc#add-module-binding! _bind112644_ '#f))
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp114268
                                                    _L112629_)))
                                               _hd112593112623_
                                               _hd112590112615_)
                                              (let ()
                                                (declare (not safe))
                                                (_g112582112599_
                                                 _g112583112602_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g112582112599_ _g112583112602_)))))
                              (let ()
                                (declare (not safe))
                                (_g112582112599_ _g112583112602_)))))
                      (let ()
                        (declare (not safe))
                        (_g112582112599_ _g112583112602_))))))
          (declare (not safe))
          (_g112581112646_ _stx112580_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_self112511_ _stx112512_)
        (let* ((_g112514112531_
                (lambda (_g112515112528_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112515112528_))))
               (_g112513112576_
                (lambda (_g112515112534_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112515112534_))
                      (let ((_e112520112536_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112515112534_))))
                        (let ((_hd112519112539_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112520112536_)))
                              (_tl112518112541_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112520112536_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112518112541_))
                              (let ((_e112523112544_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112518112541_))))
                                (let ((_hd112522112547_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112523112544_)))
                                      (_tl112521112549_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112523112544_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl112521112549_))
                                      (let ((_e112526112552_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl112521112549_))))
                                        (let ((_hd112525112555_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e112526112552_)))
                                              (_tl112524112557_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e112526112552_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl112524112557_))
                                              ((lambda (_L112560_ _L112561_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#add-module-binding!
                                                    _L112561_
                                                    '#t)))
                                               _hd112525112555_
                                               _hd112522112547_)
                                              (let ()
                                                (declare (not safe))
                                                (_g112514112531_
                                                 _g112515112534_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g112514112531_ _g112515112534_)))))
                              (let ()
                                (declare (not safe))
                                (_g112514112531_ _g112515112534_)))))
                      (let ()
                        (declare (not safe))
                        (_g112514112531_ _g112515112534_))))))
          (declare (not safe))
          (_g112513112576_ _stx112512_))))
    (define gxc#lift-modules-module%
      (lambda (_self112453_ _stx112454_)
        (let* ((_g112456112470_
                (lambda (_g112457112467_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112457112467_))))
               (_g112455112508_
                (lambda (_g112457112473_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112457112473_))
                      (let ((_e112462112475_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112457112473_))))
                        (let ((_hd112461112478_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112462112475_)))
                              (_tl112460112480_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112462112475_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112460112480_))
                              (let ((_e112465112483_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112460112480_))))
                                (let ((_hd112464112486_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112465112483_)))
                                      (_tl112463112488_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112465112483_))))
                                  ((lambda (_L112491_ _L112492_)
                                     (let ((_ctx112505_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _L112492_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0 _self112453_ 'modules))
                                        (let ((__tmp114269
                                               (unbox (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _self112453_
                                                         'modules)))))
                                          (declare (not safe))
                                          (cons _ctx112505_ __tmp114269)))
                                       (let ((__tmp114270
                                              (lambda ()
                                                (let ((__tmp114271
                                                       (##structure-ref
                                                        _ctx112505_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self112453_
                                                   __tmp114271)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp114270
                                          gx#current-expander-context
                                          _ctx112505_))))
                                   _tl112463112488_
                                   _hd112464112486_)))
                              (let ()
                                (declare (not safe))
                                (_g112456112470_ _g112457112473_)))))
                      (let ()
                        (declare (not safe))
                        (_g112456112470_ _g112457112473_))))))
          (declare (not safe))
          (_g112455112508_ _stx112454_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_decls112409112411_ (gxc#current-compile-decls)))
          (if _decls112409112411_
              (let ((_decls112414_ _decls112409112411_))
                (let _lp112416_ ((_rest112418_ _decls112414_))
                  (let* ((_rest112419112427_ _rest112418_)
                         (_else112421112435_ (lambda () '#f))
                         (_K112423112441_
                          (lambda (_decls112438_ _decl112439_)
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _decl112439_ '(not safe)))
                                '#t
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _decl112439_ '(safe)))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_lp112416_ _decls112438_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _rest112419112427_))
                        (let ((_hd112424112444_
                               (let ()
                                 (declare (not safe))
                                 (##car _rest112419112427_)))
                              (_tl112425112446_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _rest112419112427_))))
                          (let* ((_decl112449_ _hd112424112444_)
                                 (_decls112451_ _tl112425112446_))
                            (declare (not safe))
                            (_K112423112441_ _decls112451_ _decl112449_)))
                        (let () (declare (not safe)) (_else112421112435_))))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_id112403_ _syntax?112404_)
        (let ((_eid112406_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _id112403_))
                '1
                gx#binding::t
                '#f))
              (_ht112407_
               (##structure-ref
                (gxc#current-compile-symbol-table)
                '2
                gxc#symbol-table::t
                '#f)))
          (if (interned-symbol? _eid112406_)
              '#!void
              (let ((__tmp114272
                     (let ((__tmp114273
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _eid112406_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp114273 _syntax?112404_))))
                (declare (not safe))
                (hash-put! _ht112407_ _eid112406_ __tmp114272))))))
    (define gxc#runtime-identifier=?
      (lambda (_id1112396_ _id2112397_)
        (letrec ((_symbol-e112399_
                  (lambda (_id112401_)
                    (if (let () (declare (not safe)) (symbol? _id112401_))
                        _id112401_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id _id112401_))))))
          (let ((__tmp114275
                 (let () (declare (not safe)) (_symbol-e112399_ _id1112396_)))
                (__tmp114274
                 (let () (declare (not safe)) (_symbol-e112399_ _id2112397_))))
            (declare (not safe))
            (eq? __tmp114275 __tmp114274)))))
    (define gxc#generate-runtime-binding-id
      (lambda (_id112374_)
        (let ((_$e112376_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _id112374_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _id112374_))
                   '#f)))
          (if _$e112376_
              ((lambda (_bind112379_)
                 (let ((_eid112381_
                        (##structure-ref _bind112379_ '1 gx#binding::t '#f))
                       (_ht112382_
                        (##structure-ref
                         (gxc#current-compile-symbol-table)
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (interned-symbol? _eid112381_)
                       _eid112381_
                       (let ((_$e112384_
                              (let ()
                                (declare (not safe))
                                (hash-get _ht112382_ _eid112381_))))
                         (if _$e112384_
                             (values _$e112384_)
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _bind112379_
                                    'gx#local-binding::t))
                                 (let ((_gid112387_
                                        (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-gensym-reference__0
                                           _eid112381_))))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _ht112382_
                                      _eid112381_
                                      _gid112387_))
                                   _gid112387_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _bind112379_
                                        'gx#module-binding::t))
                                     (let ((_gid112394_
                                            (let ((_$e112389_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _bind112379_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _$e112389_
                                                  ((lambda (_ns112392_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _ns112392_
                                                        '"#"
                                                        _eid112381_)))
                                                   _$e112389_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-gensym-reference__0
                                                     _eid112381_))))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _ht112382_
                                          _eid112381_
                                          _gid112394_))
                                       _gid112394_)
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Cannot compile reference to uninterned binding"
                                        _id112374_
                                        _eid112381_
                                        _bind112379_)))))))))
               _$e112376_)
              (if (interned-symbol?
                   (let () (declare (not safe)) (gx#stx-e _id112374_)))
                  (let () (declare (not safe)) (gx#stx-e _id112374_))
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Cannot compile reference to uninterned identifier"
                     _id112374_)))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_id112372_)
        (if (let () (declare (not safe)) (gx#identifier? _id112372_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _id112372_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-temporary__0)))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_sym112352_ _quote?112353_)
        (let* ((_ht112355_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e112357_
                (let ()
                  (declare (not safe))
                  (hash-get _ht112355_ _sym112352_))))
          (if _$e112357_
              (values _$e112357_)
              (let ((_g112360_
                     (if _quote?112353_
                         (let ((__tmp114276 (gxc#current-compile-timestamp)))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _sym112352_
                            '"__"
                            __tmp114276))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_" _sym112352_ '"_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _ht112355_ _sym112352_ _g112360_))
                _g112360_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_sym112365_)
        (let ((_quote?112367_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-gensym-reference__%
           _sym112365_
           _quote?112367_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g114278_
        (let ((_g114277_ (let () (declare (not safe)) (##length _g114278_))))
          (cond ((let () (declare (not safe)) (##fx= _g114277_ 1))
                 (apply (lambda (_sym112365_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__0
                             _sym112365_)))
                        _g114278_))
                ((let () (declare (not safe)) (##fx= _g114277_ 2))
                 (apply (lambda (_sym112369_ _quote?112370_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__%
                             _sym112369_
                             _quote?112370_)))
                        _g114278_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g114278_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_id112349_)
        (let ((__tmp114279
               (let ()
                 (declare (not safe))
                 (gx#core-identifier-key _id112349_))))
          (declare (not safe))
          (gxc#generate-runtime-identifier-key __tmp114279))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_key112309_)
        (if (interned-symbol? _key112309_)
            _key112309_
            (if (uninterned-symbol? _key112309_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _key112309_))
                (let* ((_key112310112317_ _key112309_)
                       (_E112312112321_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching" _key112310112317_))))
                       (_K112313112337_
                        (lambda (_mark112324_ _eid112325_)
                          (let ((_$e112327_
                                 (##structure-ref
                                  _mark112324_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _$e112327_
                                ((lambda (_ht112330_)
                                   (let ((_$e112332_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _ht112330_
                                             _eid112325_))))
                                     (if _$e112332_
                                         ((lambda (_id112335_)
                                            (if (interned-symbol? _id112335_)
                                                _id112335_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _id112335_))))
                                          _$e112332_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-identifier-key
                                            _eid112325_)))))
                                 _$e112327_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-identifier-key
                                   _eid112325_)))))))
                  (if (let () (declare (not safe)) (##pair? _key112310112317_))
                      (let ((_hd112314112340_
                             (let ()
                               (declare (not safe))
                               (##car _key112310112317_)))
                            (_tl112315112342_
                             (let ()
                               (declare (not safe))
                               (##cdr _key112310112317_))))
                        (let* ((_eid112345_ _hd112314112340_)
                               (_mark112347_ _tl112315112342_))
                          (declare (not safe))
                          (_K112313112337_ _mark112347_ _eid112345_)))
                      (let () (declare (not safe)) (_E112312112321_))))))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_top112296_)
        (if _top112296_
            (let ((_ns112298_
                   (##structure-ref
                    (let ((__tmp114281 (gx#current-expander-context)))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp114281))
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi112299_ (gx#current-expander-phi)))
              (if _ns112298_
                  (if (fxpositive? _phi112299_)
                      (let ((__tmp114287 (number->string _phi112299_))
                            (__tmp114286 (gensym)))
                        (declare (not safe))
                        (make-symbol__1
                         _ns112298_
                         '"["
                         __tmp114287
                         '"]#_"
                         __tmp114286
                         '"_"))
                      (let ((__tmp114285 (gensym)))
                        (declare (not safe))
                        (make-symbol__1 _ns112298_ '"#_" __tmp114285 '"_")))
                  (if (fxpositive? _phi112299_)
                      (let ((__tmp114284 (number->string _phi112299_))
                            (__tmp114283 (gensym)))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp114284
                         '"]#_"
                         __tmp114283
                         '"_"))
                      (let ((__tmp114282 (gensym)))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp114282 '"_")))))
            (let ((__tmp114280 (gensym)))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp114280 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_top112305_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-temporary__% _top112305_))))
    (define gxc#generate-runtime-temporary
      (lambda _g114289_
        (let ((_g114288_ (let () (declare (not safe)) (##length _g114289_))))
          (cond ((let () (declare (not safe)) (##fx= _g114288_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__0)))
                        _g114289_))
                ((let () (declare (not safe)) (##fx= _g114288_ 1))
                 (apply (lambda (_top112307_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__% _top112307_)))
                        _g114289_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g114289_))))))
    (define gxc#generate-runtime-empty
      (lambda (_self112292_ _stx112293_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_self112139_ _stx112140_)
        (letrec ((_simplify112142_
                  (lambda (_body112190_)
                    (let _lp112192_ ((_rest112194_ _body112190_)
                                     (_r112195_ '()))
                      (let* ((_rest112196112204_ _rest112194_)
                             (_else112198112212_
                              (lambda () (reverse _r112195_)))
                             (_K112200112280_
                              (lambda (_rest112215_ _hd112216_)
                                (let* ((_hd112217112233_ _hd112216_)
                                       (_else112221112241_
                                        (lambda ()
                                          (let ((__tmp114290
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd112216_
                                                         _r112195_))))
                                            (declare (not safe))
                                            (_lp112192_
                                             _rest112215_
                                             __tmp114290)))))
                                  (let ((_K112229112270_
                                         (lambda (_exprs112268_)
                                           (let ((__tmp114291
                                                  (let ()
                                                    (declare (not safe))
                                                    (foldr1 cons
                                                            _rest112215_
                                                            _exprs112268_))))
                                             (declare (not safe))
                                             (_lp112192_
                                              __tmp114291
                                              _r112195_))))
                                        (_K112224112254_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest112215_))
                                               (let ((__tmp114292
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _hd112216_
                                                              _r112195_))))
                                                 (declare (not safe))
                                                 (_lp112192_
                                                  _rest112215_
                                                  __tmp114292))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp112192_
                                                  _rest112215_
                                                  _r112195_)))))
                                        (_K112223112246_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest112215_))
                                               (let ((__tmp114293
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _hd112216_
                                                              _r112195_))))
                                                 (declare (not safe))
                                                 (_lp112192_
                                                  _rest112215_
                                                  __tmp114293))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp112192_
                                                  _rest112215_
                                                  _r112195_))))))
                                    (let ((_try-match112220112249_
                                           (lambda ()
                                             (if (let ()
                                                   (declare (not safe))
                                                   (symbol? _hd112217112233_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_K112223112246_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_else112221112241_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd112217112233_))
                                          (let ((_tl112231112275_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd112217112233_)))
                                                (_hd112230112273_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd112217112233_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd112230112273_
                                                         'begin))
                                                (let ((_exprs112278_
                                                       _tl112231112275_))
                                                  (declare (not safe))
                                                  (_K112229112270_
                                                   _exprs112278_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd112230112273_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl112231112275_))
                                                        (let ((_tl112228112262_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl112231112275_))))
                  (if (let () (declare (not safe)) (##null? _tl112228112262_))
                      (let () (declare (not safe)) (_K112224112254_))
                      (let () (declare (not safe)) (_try-match112220112249_))))
                (let () (declare (not safe)) (_try-match112220112249_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_try-match112220112249_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_try-match112220112249_)))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest112196112204_))
                            (let ((_hd112201112283_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest112196112204_)))
                                  (_tl112202112285_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest112196112204_))))
                              (let* ((_hd112288_ _hd112201112283_)
                                     (_rest112290_ _tl112202112285_))
                                (declare (not safe))
                                (_K112200112280_ _rest112290_ _hd112288_)))
                            (let ()
                              (declare (not safe))
                              (_else112198112212_))))))))
          (let* ((_g112144112154_
                  (lambda (_g112145112151_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g112145112151_))))
                 (_g112143112187_
                  (lambda (_g112145112157_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g112145112157_))
                        (let ((_e112149112159_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g112145112157_))))
                          (let ((_hd112148112162_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e112149112159_)))
                                (_tl112147112164_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e112149112159_))))
                            ((lambda (_L112167_)
                               (let* ((_body112182_
                                       (map (lambda (_g112177112179_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self112139_
                                                 _g112177112179_)))
                                            _L112167_))
                                      (_body112184_
                                       (let ()
                                         (declare (not safe))
                                         (_simplify112142_ _body112182_))))
                                 (if (fx= (length _body112184_) '1)
                                     (car _body112184_)
                                     (let ()
                                       (declare (not safe))
                                       (cons 'begin _body112184_)))))
                             _tl112147112164_)))
                        (let ()
                          (declare (not safe))
                          (_g112144112154_ _g112145112157_))))))
            (declare (not safe))
            (_g112143112187_ _stx112140_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_self112100_ _stx112101_)
        (let* ((_g112103112113_
                (lambda (_g112104112110_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112104112110_))))
               (_g112102112136_
                (lambda (_g112104112116_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112104112116_))
                      (let ((_e112108112118_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112104112116_))))
                        (let ((_hd112107112121_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112108112118_)))
                              (_tl112106112123_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112108112118_))))
                          ((lambda (_L112126_)
                             (let ((__tmp114294
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax->datum _L112126_))))
                               (declare (not safe))
                               (cons 'begin __tmp114294)))
                           _tl112106112123_)))
                      (let ()
                        (declare (not safe))
                        (_g112103112113_ _g112104112116_))))))
          (declare (not safe))
          (_g112102112136_ _stx112101_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_self111864_ _stx111865_)
        (let* ((___stx112892112893_ _stx111865_)
               (_g111869111921_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx112892112893_)))))
          (let ((___kont112894112895_
                 (lambda (_L112082_ _L112083_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self111864_ _L112082_))))
                (___kont112896112897_
                 (lambda (_L112030_ _L112031_ _L112032_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self111864_ _L112030_))))
                (___kont112900112901_
                 (lambda (_L111950_ _L111951_)
                   (let ((_decls111966_ (map gx#syntax->datum _L111951_)))
                     (let ((__tmp114297
                            (lambda ()
                              (let ((__tmp114298
                                     (let ((__tmp114301
                                            (let ()
                                              (declare (not safe))
                                              (cons 'declare _decls111966_)))
                                           (__tmp114299
                                            (let ((__tmp114300
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self111864_
                                                      _L111950_))))
                                              (declare (not safe))
                                              (cons __tmp114300 '()))))
                                       (declare (not safe))
                                       (cons __tmp114301 __tmp114299))))
                                (declare (not safe))
                                (cons 'begin __tmp114298))))
                           (__tmp114295
                            (let ((__tmp114296 (gxc#current-compile-decls)))
                              (declare (not safe))
                              (foldr1 cons __tmp114296 _decls111966_))))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp114297
                        gxc#current-compile-decls
                        __tmp114295))))))
            (let* ((___match112947112948_
                    (lambda (_e111887111974_
                             _hd111886111977_
                             _tl111885111979_
                             _e111890111982_
                             _hd111889111985_
                             _tl111888111987_
                             _e111893111990_
                             _hd111892111993_
                             _tl111891111995_
                             ___splice112898112899_
                             _target111894111998_
                             _tl111896112000_)
                      (letrec ((_loop111897112003_
                                (lambda (_hd111895112006_ _param111901112008_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd111895112006_))
                                      (let ((_e111898112011_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd111895112006_))))
                                        (let ((_lp-tl111900112016_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e111898112011_)))
                                              (_lp-hd111899112014_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e111898112011_))))
                                          (let ((__tmp114303
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd111899112014_
                                                         _param111901112008_))))
                                            (declare (not safe))
                                            (_loop111897112003_
                                             _lp-tl111900112016_
                                             __tmp114303))))
                                      (let ((_param111902112019_
                                             (reverse _param111901112008_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl111888111987_))
                                            (let ((_e111905112022_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl111888111987_))))
                                              (let ((_tl111903112027_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e111905112022_)))
                                                    (_hd111904112025_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e111905112022_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl111903112027_))
                                                    (let ((_L112030_
                                                           _hd111904112025_)
                                                          (_L112031_
                                                           _param111902112019_)
                                                          (_L112032_
                                                           _hd111892111993_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _L112032_))
                       (let ((__tmp114302
                              (memq (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L112032_))
                                    gxc#gambit-annotations)))
                         (declare (not safe))
                         (not __tmp114302)))
                  (___kont112896112897_ _L112030_ _L112031_ _L112032_)
                  (___kont112900112901_ _hd111904112025_ _hd111889111985_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g111869111921_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g111869111921_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop111897112003_ _target111894111998_ '())))))
                   (___match112921112922_
                    (lambda (_e111875112058_
                             _hd111874112061_
                             _tl111873112063_
                             _e111878112066_
                             _hd111877112069_
                             _tl111876112071_
                             _e111881112074_
                             _hd111880112077_
                             _tl111879112079_)
                      (let ((_L112082_ _hd111880112077_)
                            (_L112083_ _hd111877112069_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L112083_))
                            (___kont112894112895_ _L112082_ _L112083_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd111877112069_))
                                (let ((_e111893111990_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd111877112069_))))
                                  (let ((_tl111891111995_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e111893111990_)))
                                        (_hd111892111993_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e111893111990_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl111891111995_))
                                        (let ((___splice112898112899_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl111891111995_
                                                  '0))))
                                          (let ((_tl111896112000_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice112898112899_
                                                    '1)))
                                                (_target111894111998_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice112898112899_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl111896112000_))
                                                (___match112947112948_
                                                 _e111875112058_
                                                 _hd111874112061_
                                                 _tl111873112063_
                                                 _e111878112066_
                                                 _hd111877112069_
                                                 _tl111876112071_
                                                 _e111893111990_
                                                 _hd111892111993_
                                                 _tl111891111995_
                                                 ___splice112898112899_
                                                 _target111894111998_
                                                 _tl111896112000_)
                                                (___kont112900112901_
                                                 _hd111880112077_
                                                 _hd111877112069_))))
                                        (___kont112900112901_
                                         _hd111880112077_
                                         _hd111877112069_))))
                                (___kont112900112901_
                                 _hd111880112077_
                                 _hd111877112069_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx112892112893_))
                  (let ((_e111875112058_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx112892112893_))))
                    (let ((_tl111873112063_
                           (let ()
                             (declare (not safe))
                             (##cdr _e111875112058_)))
                          (_hd111874112061_
                           (let ()
                             (declare (not safe))
                             (##car _e111875112058_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl111873112063_))
                          (let ((_e111878112066_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl111873112063_))))
                            (let ((_tl111876112071_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e111878112066_)))
                                  (_hd111877112069_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e111878112066_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl111876112071_))
                                  (let ((_e111881112074_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl111876112071_))))
                                    (let ((_tl111879112079_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e111881112074_)))
                                          (_hd111880112077_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e111881112074_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl111879112079_))
                                          (___match112921112922_
                                           _e111875112058_
                                           _hd111874112061_
                                           _tl111873112063_
                                           _e111878112066_
                                           _hd111877112069_
                                           _tl111876112071_
                                           _e111881112074_
                                           _hd111880112077_
                                           _tl111879112079_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd111877112069_))
                                              (let ((_e111893111990_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd111877112069_))))
                                                (let ((_tl111891111995_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e111893111990_)))
                                                      (_hd111892111993_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e111893111990_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl111891111995_))
                                                      (let ((___splice112898112899_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl111891111995_ '0))))
                (let ((_tl111896112000_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice112898112899_ '1)))
                      (_target111894111998_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice112898112899_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl111896112000_))
                      (___match112947112948_
                       _e111875112058_
                       _hd111874112061_
                       _tl111873112063_
                       _e111878112066_
                       _hd111877112069_
                       _tl111876112071_
                       _e111893111990_
                       _hd111892111993_
                       _tl111891111995_
                       ___splice112898112899_
                       _target111894111998_
                       _tl111896112000_)
                      (let () (declare (not safe)) (_g111869111921_)))))
              (let () (declare (not safe)) (_g111869111921_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g111869111921_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd111877112069_))
                                      (let ((_e111893111990_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd111877112069_))))
                                        (let ((_tl111891111995_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e111893111990_)))
                                              (_hd111892111993_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e111893111990_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl111891111995_))
                                              (let ((___splice112898112899_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl111891111995_
                                                        '0))))
                                                (let ((_tl111896112000_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice112898112899_
                                                          '1)))
                                                      (_target111894111998_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice112898112899_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl111896112000_))
                                                      (___match112947112948_
                                                       _e111875112058_
                                                       _hd111874112061_
                                                       _tl111873112063_
                                                       _e111878112066_
                                                       _hd111877112069_
                                                       _tl111876112071_
                                                       _e111893111990_
                                                       _hd111892111993_
                                                       _tl111891111995_
                                                       ___splice112898112899_
                                                       _target111894111998_
                                                       _tl111896112000_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g111869111921_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g111869111921_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g111869111921_))))))
                          (let () (declare (not safe)) (_g111869111921_)))))
                  (let () (declare (not safe)) (_g111869111921_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_self111823_ _stx111824_)
        (let* ((_g111826111836_
                (lambda (_g111827111833_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g111827111833_))))
               (_g111825111861_
                (lambda (_g111827111839_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g111827111839_))
                      (let ((_e111831111841_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g111827111839_))))
                        (let ((_hd111830111844_
                               (let ()
                                 (declare (not safe))
                                 (##car _e111831111841_)))
                              (_tl111829111846_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e111831111841_))))
                          ((lambda (_L111849_)
                             (let ((_decls111859_
                                    (map gx#syntax->datum _L111849_)))
                               (gxc#current-compile-decls
                                (let ((__tmp114304
                                       (gxc#current-compile-decls)))
                                  (declare (not safe))
                                  (foldr1 cons __tmp114304 _decls111859_)))
                               (let ()
                                 (declare (not safe))
                                 (cons 'declare _decls111859_))))
                           _tl111829111846_)))
                      (let ()
                        (declare (not safe))
                        (_g111826111836_ _g111827111839_))))))
          (declare (not safe))
          (_g111825111861_ _stx111824_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_self111569_ _stx111570_)
        (let* ((_g111572111589_
                (lambda (_g111573111586_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g111573111586_))))
               (_g111571111820_
                (lambda (_g111573111592_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g111573111592_))
                      (let ((_e111578111594_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g111573111592_))))
                        (let ((_hd111577111597_
                               (let ()
                                 (declare (not safe))
                                 (##car _e111578111594_)))
                              (_tl111576111599_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e111578111594_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl111576111599_))
                              (let ((_e111581111602_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl111576111599_))))
                                (let ((_hd111580111605_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e111581111602_)))
                                      (_tl111579111607_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e111581111602_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl111579111607_))
                                      (let ((_e111584111610_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl111579111607_))))
                                        (let ((_hd111583111613_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e111584111610_)))
                                              (_tl111582111615_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e111584111610_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl111582111615_))
                                              ((lambda (_L111618_ _L111619_)
                                                 (let* ((___stx113000113001_
                                                         _L111619_)
                                                        (_g111636111650_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx113000113001_)))))
                                                   (let ((___kont113002113003_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self111569_
                                                               _L111618_))))
                                                         (___kont113004113005_
                                                          (lambda (_L111782_)
                                                            (let ((_eid111791_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _L111782_))))
                      (let ((_lambda-expr111792111794_
                             (let ()
                               (declare (not safe))
                               (gxc#apply-find-lambda-expression _L111618_))))
                        (if _lambda-expr111792111794_
                            (let* ((_lambda-expr111797_
                                    _lambda-expr111792111794_)
                                   (__tmp114305
                                    (gxc#current-compile-runtime-names)))
                              (declare (not safe))
                              (hash-put!
                               __tmp114305
                               _lambda-expr111797_
                               _eid111791_))
                            '#f))
                      (let ((__tmp114306
                             (let ((__tmp114307
                                    (let ((__tmp114308
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self111569_
                                              _L111618_))))
                                      (declare (not safe))
                                      (cons __tmp114308 '()))))
                               (declare (not safe))
                               (cons _eid111791_ __tmp114307))))
                        (declare (not safe))
                        (cons 'define __tmp114306)))))
                 (___kont113006113007_
                  (lambda ()
                    (let* ((_tmp111657_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_body111766_
                            (let _lp111659_ ((_rest111661_ _L111619_)
                                             (_k111662_ '0)
                                             (_r111663_ '()))
                              (let* ((___stx112970112971_ _rest111661_)
                                     (_g111668111685_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx112970112971_)))))
                                (let ((___kont112972112973_
                                       (lambda (_L111753_)
                                         (let ((__tmp114309
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _k111662_ '1))))
                                           (declare (not safe))
                                           (_lp111659_
                                            _L111753_
                                            __tmp114309
                                            _r111663_))))
                                      (___kont112974112975_
                                       (lambda (_L111726_ _L111727_)
                                         (let ((__tmp114316
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _k111662_ '1)))
                                               (__tmp114310
                                                (let ((__tmp114311
                                                       (let ((__tmp114312
                                                              (let ((__tmp114315
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-binding-id _L111727_)))
                            (__tmp114313
                             (let ((__tmp114314
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-values-ref
                                       _tmp111657_
                                       _k111662_
                                       _L111726_))))
                               (declare (not safe))
                               (cons __tmp114314 '()))))
                        (declare (not safe))
                        (cons __tmp114315 __tmp114313))))
                 (declare (not safe))
                 (cons 'define __tmp114312))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp114311
                                                        _r111663_))))
                                           (declare (not safe))
                                           (_lp111659_
                                            _L111726_
                                            __tmp114316
                                            __tmp114310))))
                                      (___kont112976112977_
                                       (lambda (_L111697_)
                                         (let ((__tmp114317
                                                (let ((__tmp114318
                                                       (let ((__tmp114319
                                                              (let ((__tmp114322
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-binding-id _L111697_)))
                            (__tmp114320
                             (let ((__tmp114321
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-values->list
                                       _tmp111657_
                                       _k111662_))))
                               (declare (not safe))
                               (cons __tmp114321 '()))))
                        (declare (not safe))
                        (cons __tmp114322 __tmp114320))))
                 (declare (not safe))
                 (cons 'define __tmp114319))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp114318 '()))))
                                           (declare (not safe))
                                           (foldl1 cons
                                                   __tmp114317
                                                   _r111663_))))
                                      (___kont112978112979_
                                       (lambda () (reverse _r111663_))))
                                  (let ((_g111666111713_
                                         (lambda ()
                                           (let ((_L111697_
                                                  ___stx112970112971_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier? _L111697_))
                                                 (___kont112976112977_
                                                  _L111697_)
                                                 (___kont112978112979_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx112970112971_))
                                        (let ((_e111673111742_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx112970112971_))))
                                          (let ((_tl111671111747_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e111673111742_)))
                                                (_hd111672111745_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e111673111742_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd111672111745_))
                                                (let ((_e111674111750_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd111672111745_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e111674111750_
                                                                '#f))
                                                      (___kont112972112973_
                                                       _tl111671111747_)
                                                      (___kont112974112975_
                                                       _tl111671111747_
                                                       _hd111672111745_)))
                                                (___kont112974112975_
                                                 _tl111671111747_
                                                 _hd111672111745_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g111666111713_)))))))))
                      (let ((__tmp114323
                             (let ((__tmp114326
                                    (let ((__tmp114327
                                           (let ((__tmp114328
                                                  (let ((__tmp114329
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self111569_
                                                            _L111618_))))
                                                    (declare (not safe))
                                                    (cons __tmp114329 '()))))
                                             (declare (not safe))
                                             (cons _tmp111657_ __tmp114328))))
                                      (declare (not safe))
                                      (cons 'define __tmp114327)))
                                   (__tmp114324
                                    (let ((__tmp114325
                                           (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-check-values
                                              _tmp111657_
                                              _L111619_
                                              _L111618_))))
                                      (declare (not safe))
                                      (cons __tmp114325 _body111766_))))
                               (declare (not safe))
                               (cons __tmp114326 __tmp114324))))
                        (declare (not safe))
                        (cons 'begin __tmp114323))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx113000113001_))
                                                         (let ((_e111640111804_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx113000113001_))))
                   (let ((_tl111638111809_
                          (let ()
                            (declare (not safe))
                            (##cdr _e111640111804_)))
                         (_hd111639111807_
                          (let ()
                            (declare (not safe))
                            (##car _e111640111804_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _hd111639111807_))
                         (let ((_e111641111812_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd111639111807_))))
                           (if (let ()
                                 (declare (not safe))
                                 (equal? _e111641111812_ '#f))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl111638111809_))
                                   (___kont113002113003_)
                                   (___kont113006113007_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl111638111809_))
                                   (___kont113004113005_ _hd111639111807_)
                                   (___kont113006113007_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl111638111809_))
                             (___kont113004113005_ _hd111639111807_)
                             (___kont113006113007_)))))
                 (___kont113006113007_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd111583111613_
                                               _hd111580111605_)
                                              (let ()
                                                (declare (not safe))
                                                (_g111572111589_
                                                 _g111573111592_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g111572111589_ _g111573111592_)))))
                              (let ()
                                (declare (not safe))
                                (_g111572111589_ _g111573111592_)))))
                      (let ()
                        (declare (not safe))
                        (_g111572111589_ _g111573111592_))))))
          (declare (not safe))
          (_g111571111820_ _stx111570_))))
    (define gxc#generate-runtime-check-values
      (lambda (_vals111545_ _hd111546_ _expr111547_)
        (let ((_$e111549_
               (let ()
                 (declare (not safe))
                 (gxc#apply-count-values _expr111547_))))
          (if _$e111549_
              ((lambda (_count111552_)
                 (let ((_len111554_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _hd111546_)))
                       (_cmp111555_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _hd111546_))
                            fx=
                            fx>=)))
                   (if (or (fx= _len111554_ '0)
                           (_cmp111555_ _count111552_ _len111554_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _expr111547_
                          _hd111546_)))))
               _$e111549_)
              (let* ((_len111560_
                      (let () (declare (not safe)) (gx#stx-length _hd111546_)))
                     (_cmp111562_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _hd111546_))
                          '##fx=
                          '##fx>=))
                     (_errmsg111564_
                      (string-append
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-list? _hd111546_))
                           '"Context expects "
                           '"Context expects at least ")
                       (number->string _len111560_)
                       '" values"))
                     (_count111566_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (and (let ((__tmp114353
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _hd111546_))))
                           (declare (not safe))
                           (not __tmp114353))
                         (fx= _len111560_ '0))
                    '#!void
                    (let ((__tmp114330
                           (let ((__tmp114349
                                  (let ((__tmp114350
                                         (let ((__tmp114351
                                                (let ((__tmp114352
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-values-count
                                                          _vals111545_))))
                                                  (declare (not safe))
                                                  (cons __tmp114352 '()))))
                                           (declare (not safe))
                                           (cons _count111566_ __tmp114351))))
                                    (declare (not safe))
                                    (cons __tmp114350 '())))
                                 (__tmp114331
                                  (let ((__tmp114332
                                         (let ((__tmp114333
                                                (let ((__tmp114338
                                                       (let ((__tmp114339
                                                              (let ((__tmp114340
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-decls-unsafe?))
                                 (let ((__tmp114347
                                        (let ((__tmp114348
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _len111560_ '()))))
                                          (declare (not safe))
                                          (cons _count111566_ __tmp114348))))
                                   (declare (not safe))
                                   (cons _cmp111562_ __tmp114347))
                                 (let ((__tmp114341
                                        (let ((__tmp114342
                                               (let ((__tmp114343
                                                      (let ((__tmp114344
                                                             (let ((__tmp114345
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114346
                                   (let ()
                                     (declare (not safe))
                                     (cons _len111560_ '()))))
                              (declare (not safe))
                              (cons _count111566_ __tmp114346))))
                       (declare (not safe))
                       (cons _cmp111562_ __tmp114345))))
                (declare (not safe))
                (cons __tmp114344 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '(declare (not safe))
                                                       __tmp114343))))
                                          (declare (not safe))
                                          (cons '() __tmp114342))))
                                   (declare (not safe))
                                   (cons 'let __tmp114341)))))
                        (declare (not safe))
                        (cons __tmp114340 '()))))
                 (declare (not safe))
                 (cons 'not __tmp114339)))
              (__tmp114334
               (let ((__tmp114335
                      (let ((__tmp114336
                             (let ((__tmp114337
                                    (let ()
                                      (declare (not safe))
                                      (cons _count111566_ '()))))
                               (declare (not safe))
                               (cons _errmsg111564_ __tmp114337))))
                        (declare (not safe))
                        (cons 'error __tmp114336))))
                 (declare (not safe))
                 (cons __tmp114335 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp114338
                                                        __tmp114334))))
                                           (declare (not safe))
                                           (cons 'if __tmp114333))))
                                    (declare (not safe))
                                    (cons __tmp114332 '()))))
                             (declare (not safe))
                             (cons __tmp114349 __tmp114331))))
                      (declare (not safe))
                      (cons 'let __tmp114330))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_var111540_)
        (letrec ((_generate-inline111542_
                  (lambda ()
                    (let ((__tmp114354
                           (let ((__tmp114359
                                  (let ((__tmp114360
                                         (let ()
                                           (declare (not safe))
                                           (cons _var111540_ '()))))
                                    (declare (not safe))
                                    (cons '##values? __tmp114360)))
                                 (__tmp114355
                                  (let ((__tmp114357
                                         (let ((__tmp114358
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _var111540_ '()))))
                                           (declare (not safe))
                                           (cons '##vector-length
                                                 __tmp114358)))
                                        (__tmp114356
                                         (let ()
                                           (declare (not safe))
                                           (cons '1 '()))))
                                    (declare (not safe))
                                    (cons __tmp114357 __tmp114356))))
                             (declare (not safe))
                             (cons __tmp114359 __tmp114355))))
                      (declare (not safe))
                      (cons 'if __tmp114354)))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline111542_))
              (let ((__tmp114361
                     (let ((__tmp114362
                            (let ((__tmp114363
                                   (let ((__tmp114364
                                          (let ()
                                            (declare (not safe))
                                            (_generate-inline111542_))))
                                     (declare (not safe))
                                     (cons __tmp114364 '()))))
                              (declare (not safe))
                              (cons '(declare (not safe)) __tmp114363))))
                       (declare (not safe))
                       (cons '() __tmp114362))))
                (declare (not safe))
                (cons 'let __tmp114361))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_var111533_ _i111534_ _rest111535_)
        (letrec ((_generate-inline111537_
                  (lambda ()
                    (if (and (fx= _i111534_ '0)
                             (let ((__tmp114375
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _rest111535_))))
                               (declare (not safe))
                               (not __tmp114375)))
                        (let ((__tmp114367
                               (let ((__tmp114373
                                      (let ((__tmp114374
                                             (let ()
                                               (declare (not safe))
                                               (cons _var111533_ '()))))
                                        (declare (not safe))
                                        (cons '##values? __tmp114374)))
                                     (__tmp114368
                                      (let ((__tmp114370
                                             (let ((__tmp114371
                                                    (let ((__tmp114372
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '0 '()))))
                                                      (declare (not safe))
                                                      (cons _var111533_
                                                            __tmp114372))))
                                               (declare (not safe))
                                               (cons '##vector-ref
                                                     __tmp114371)))
                                            (__tmp114369
                                             (let ()
                                               (declare (not safe))
                                               (cons _var111533_ '()))))
                                        (declare (not safe))
                                        (cons __tmp114370 __tmp114369))))
                                 (declare (not safe))
                                 (cons __tmp114373 __tmp114368))))
                          (declare (not safe))
                          (cons 'if __tmp114367))
                        (let ((__tmp114365
                               (let ((__tmp114366
                                      (let ()
                                        (declare (not safe))
                                        (cons _i111534_ '()))))
                                 (declare (not safe))
                                 (cons _var111533_ __tmp114366))))
                          (declare (not safe))
                          (cons '##vector-ref __tmp114365))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline111537_))
              (let ((__tmp114376
                     (let ((__tmp114377
                            (let ((__tmp114378
                                   (let ((__tmp114379
                                          (let ()
                                            (declare (not safe))
                                            (_generate-inline111537_))))
                                     (declare (not safe))
                                     (cons __tmp114379 '()))))
                              (declare (not safe))
                              (cons '(declare (not safe)) __tmp114378))))
                       (declare (not safe))
                       (cons '() __tmp114377))))
                (declare (not safe))
                (cons 'let __tmp114376))))))
    (define gxc#generate-runtime-values->list
      (lambda (_var111530_ _i111531_)
        (if (fx= _i111531_ '0)
            (if (let ()
                  (declare (not safe))
                  (gxc#current-compile-decls-unsafe?))
                (let ((__tmp114427
                       (let ((__tmp114434
                              (let ((__tmp114435
                                     (let ()
                                       (declare (not safe))
                                       (cons _var111530_ '()))))
                                (declare (not safe))
                                (cons '##values? __tmp114435)))
                             (__tmp114428
                              (let ((__tmp114432
                                     (let ((__tmp114433
                                            (let ()
                                              (declare (not safe))
                                              (cons _var111530_ '()))))
                                       (declare (not safe))
                                       (cons '##vector->list __tmp114433)))
                                    (__tmp114429
                                     (let ((__tmp114430
                                            (let ((__tmp114431
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _var111530_ '()))))
                                              (declare (not safe))
                                              (cons 'list __tmp114431))))
                                       (declare (not safe))
                                       (cons __tmp114430 '()))))
                                (declare (not safe))
                                (cons __tmp114432 __tmp114429))))
                         (declare (not safe))
                         (cons __tmp114434 __tmp114428))))
                  (declare (not safe))
                  (cons 'if __tmp114427))
                (let ((__tmp114414
                       (let ((__tmp114415
                              (let ((__tmp114416
                                     (let ((__tmp114417
                                            (let ((__tmp114418
                                                   (let ((__tmp114425
                                                          (let ((__tmp114426
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _var111530_ '()))))
                    (declare (not safe))
                    (cons '##values? __tmp114426)))
                 (__tmp114419
                  (let ((__tmp114423
                         (let ((__tmp114424
                                (let ()
                                  (declare (not safe))
                                  (cons _var111530_ '()))))
                           (declare (not safe))
                           (cons '##vector->list __tmp114424)))
                        (__tmp114420
                         (let ((__tmp114421
                                (let ((__tmp114422
                                       (let ()
                                         (declare (not safe))
                                         (cons _var111530_ '()))))
                                  (declare (not safe))
                                  (cons 'list __tmp114422))))
                           (declare (not safe))
                           (cons __tmp114421 '()))))
                    (declare (not safe))
                    (cons __tmp114423 __tmp114420))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114425
                                                           __tmp114419))))
                                              (declare (not safe))
                                              (cons 'if __tmp114418))))
                                       (declare (not safe))
                                       (cons __tmp114417 '()))))
                                (declare (not safe))
                                (cons '(declare (not safe)) __tmp114416))))
                         (declare (not safe))
                         (cons '() __tmp114415))))
                  (declare (not safe))
                  (cons 'let __tmp114414)))
            (if (fx= _i111531_ '1)
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (let ((__tmp114405
                           (let ((__tmp114412
                                  (let ((__tmp114413
                                         (let ()
                                           (declare (not safe))
                                           (cons _var111530_ '()))))
                                    (declare (not safe))
                                    (cons '##values? __tmp114413)))
                                 (__tmp114406
                                  (let ((__tmp114408
                                         (let ((__tmp114409
                                                (let ((__tmp114410
                                                       (let ((__tmp114411
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _var111530_ '()))))
                 (declare (not safe))
                 (cons '##vector->list __tmp114411))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp114410 '()))))
                                           (declare (not safe))
                                           (cons '##cdr __tmp114409)))
                                        (__tmp114407
                                         (let ()
                                           (declare (not safe))
                                           (cons ''() '()))))
                                    (declare (not safe))
                                    (cons __tmp114408 __tmp114407))))
                             (declare (not safe))
                             (cons __tmp114412 __tmp114406))))
                      (declare (not safe))
                      (cons 'if __tmp114405))
                    (let ((__tmp114392
                           (let ((__tmp114393
                                  (let ((__tmp114394
                                         (let ((__tmp114395
                                                (let ((__tmp114396
                                                       (let ((__tmp114403
                                                              (let ((__tmp114404
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _var111530_ '()))))
                        (declare (not safe))
                        (cons '##values? __tmp114404)))
                     (__tmp114397
                      (let ((__tmp114399
                             (let ((__tmp114400
                                    (let ((__tmp114401
                                           (let ((__tmp114402
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _var111530_ '()))))
                                             (declare (not safe))
                                             (cons '##vector->list
                                                   __tmp114402))))
                                      (declare (not safe))
                                      (cons __tmp114401 '()))))
                               (declare (not safe))
                               (cons '##cdr __tmp114400)))
                            (__tmp114398
                             (let () (declare (not safe)) (cons ''() '()))))
                        (declare (not safe))
                        (cons __tmp114399 __tmp114398))))
                 (declare (not safe))
                 (cons __tmp114403 __tmp114397))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'if __tmp114396))))
                                           (declare (not safe))
                                           (cons __tmp114395 '()))))
                                    (declare (not safe))
                                    (cons '(declare (not safe)) __tmp114394))))
                             (declare (not safe))
                             (cons '() __tmp114393))))
                      (declare (not safe))
                      (cons 'let __tmp114392)))
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (let ((__tmp114388
                           (let ((__tmp114390
                                  (let ((__tmp114391
                                         (let ()
                                           (declare (not safe))
                                           (cons _var111530_ '()))))
                                    (declare (not safe))
                                    (cons '##vector->list __tmp114391)))
                                 (__tmp114389
                                  (let ()
                                    (declare (not safe))
                                    (cons _i111531_ '()))))
                             (declare (not safe))
                             (cons __tmp114390 __tmp114389))))
                      (declare (not safe))
                      (cons '##list-tail __tmp114388))
                    (let ((__tmp114380
                           (let ((__tmp114381
                                  (let ((__tmp114382
                                         (let ((__tmp114383
                                                (let ((__tmp114384
                                                       (let ((__tmp114386
                                                              (let ((__tmp114387
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _var111530_ '()))))
                        (declare (not safe))
                        (cons '##vector->list __tmp114387)))
                     (__tmp114385
                      (let () (declare (not safe)) (cons _i111531_ '()))))
                 (declare (not safe))
                 (cons __tmp114386 __tmp114385))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '##list-tail
                                                        __tmp114384))))
                                           (declare (not safe))
                                           (cons __tmp114383 '()))))
                                    (declare (not safe))
                                    (cons '(declare (not safe)) __tmp114382))))
                             (declare (not safe))
                             (cons '() __tmp114381))))
                      (declare (not safe))
                      (cons 'let __tmp114380)))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_self111462_ _stx111463_)
        (let* ((_g111465111482_
                (lambda (_g111466111479_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g111466111479_))))
               (_g111464111527_
                (lambda (_g111466111485_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g111466111485_))
                      (let ((_e111471111487_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g111466111485_))))
                        (let ((_hd111470111490_
                               (let ()
                                 (declare (not safe))
                                 (##car _e111471111487_)))
                              (_tl111469111492_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e111471111487_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl111469111492_))
                              (let ((_e111474111495_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl111469111492_))))
                                (let ((_hd111473111498_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e111474111495_)))
                                      (_tl111472111500_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e111474111495_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl111472111500_))
                                      (let ((_e111477111503_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl111472111500_))))
                                        (let ((_hd111476111506_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e111477111503_)))
                                              (_tl111475111508_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e111477111503_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl111475111508_))
                                              ((lambda (_L111511_ _L111512_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-lambda-form
                                                    _self111462_
                                                    _L111512_
                                                    _L111511_)))
                                               _hd111476111506_
                                               _hd111473111498_)
                                              (let ()
                                                (declare (not safe))
                                                (_g111465111482_
                                                 _g111466111485_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g111465111482_ _g111466111485_)))))
                              (let ()
                                (declare (not safe))
                                (_g111465111482_ _g111466111485_)))))
                      (let ()
                        (declare (not safe))
                        (_g111465111482_ _g111466111485_))))))
          (declare (not safe))
          (_g111464111527_ _stx111463_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_self111421_ _hd111422_ _body111423_)
        (let* ((_hd111425_
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-lambda-head _hd111422_)))
               (_body111427_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _self111421_ _body111423_)))
               (_body111459_
                (let* ((_body111428111436_ _body111427_)
                       (_else111430111444_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (cons _body111427_ '()))))
                       (_K111432111449_
                        (lambda (_exprs111447_) _exprs111447_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _body111428111436_))
                      (let ((_hd111433111452_
                             (let ()
                               (declare (not safe))
                               (##car _body111428111436_)))
                            (_tl111434111454_
                             (let ()
                               (declare (not safe))
                               (##cdr _body111428111436_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _hd111433111452_ 'begin))
                            (let ((_exprs111457_ _tl111434111454_))
                              (declare (not safe))
                              (_K111432111449_ _exprs111457_))
                            (let ()
                              (declare (not safe))
                              (_else111430111444_))))
                      (let () (declare (not safe)) (_else111430111444_))))))
          (let ((__tmp114436
                 (let () (declare (not safe)) (cons _hd111425_ _body111459_))))
            (declare (not safe))
            (cons 'lambda __tmp114436)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_hd111419_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _hd111419_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_self109961_ _stx109962_)
        (letrec ((_dispatch-case?109964_
                  (lambda (_hd110649_ _body110650_)
                    (let* ((_form110652_
                            (let ((__tmp114437
                                   (let ()
                                     (declare (not safe))
                                     (cons _body110650_ '()))))
                              (declare (not safe))
                              (cons _hd110649_ __tmp114437)))
                           (___stx113032113033_ _form110652_)
                           (_g110657110814_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx113032113033_)))))
                      (let ((___kont113034113035_
                             (lambda (_L111339_ _L111340_ _L111341_) '#t))
                            (___kont113040113041_
                             (lambda (_L111127_
                                      _L111128_
                                      _L111129_
                                      _L111130_
                                      _L111131_
                                      _L111132_)
                               '#t))
                            (___kont113046113047_
                             (lambda (_L110922_ _L110923_ _L110924_ _L110925_)
                               '#t))
                            (___kont113048113049_ (lambda () '#f)))
                        (let* ((___match113173113174_
                                (lambda (_e110776110826_
                                         _hd110775110829_
                                         _tl110774110831_
                                         _e110779110834_
                                         _hd110778110837_
                                         _tl110777110839_
                                         _e110782110842_
                                         _hd110781110845_
                                         _tl110780110847_
                                         _e110785110850_
                                         _hd110784110853_
                                         _tl110783110855_
                                         _e110788110858_
                                         _hd110787110861_
                                         _tl110786110863_
                                         _e110791110866_
                                         _hd110790110869_
                                         _tl110789110871_
                                         _e110794110874_
                                         _hd110793110877_
                                         _tl110792110879_
                                         _e110797110882_
                                         _hd110796110885_
                                         _tl110795110887_
                                         _e110800110890_
                                         _hd110799110893_
                                         _tl110798110895_
                                         _e110803110898_
                                         _hd110802110901_
                                         _tl110801110903_
                                         _e110806110906_
                                         _hd110805110909_
                                         _tl110804110911_
                                         _e110809110914_
                                         _hd110808110917_
                                         _tl110807110919_)
                                  (let ((_L110922_ _hd110808110917_)
                                        (_L110923_ _hd110799110893_)
                                        (_L110924_ _hd110790110869_)
                                        (_L110925_ _hd110775110829_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _L110925_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _L110924_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L110925_
                                                _L110922_))
                                             (let ((__tmp114438
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#free-identifier=?
                                                       _L110923_
                                                       _L110925_))))
                                               (declare (not safe))
                                               (not __tmp114438)))
                                        (___kont113046113047_
                                         _L110922_
                                         _L110923_
                                         _L110924_
                                         _L110925_)
                                        (___kont113048113049_)))))
                               (___match113145113146_
                                (lambda (_e110776110826_
                                         _hd110775110829_
                                         _tl110774110831_
                                         _e110779110834_
                                         _hd110778110837_
                                         _tl110777110839_
                                         _e110782110842_
                                         _hd110781110845_
                                         _tl110780110847_
                                         _e110785110850_
                                         _hd110784110853_
                                         _tl110783110855_
                                         _e110788110858_
                                         _hd110787110861_
                                         _tl110786110863_
                                         _e110791110866_
                                         _hd110790110869_
                                         _tl110789110871_
                                         _e110794110874_
                                         _hd110793110877_
                                         _tl110792110879_
                                         _e110797110882_
                                         _hd110796110885_
                                         _tl110795110887_
                                         _e110800110890_
                                         _hd110799110893_
                                         _tl110798110895_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl110792110879_))
                                      (let ((_e110803110898_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl110792110879_))))
                                        (let ((_tl110801110903_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e110803110898_)))
                                              (_hd110802110901_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e110803110898_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd110802110901_))
                                              (let ((_e110806110906_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd110802110901_))))
                                                (let ((_tl110804110911_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e110806110906_)))
                                                      (_hd110805110909_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e110806110906_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd110805110909_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _hd110805110909_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl110804110911_))
                      (let ((_e110809110914_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl110804110911_))))
                        (let ((_tl110807110919_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110809110914_)))
                              (_hd110808110917_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110809110914_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl110807110919_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl110801110903_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl110777110839_))
                                      (___match113173113174_
                                       _e110776110826_
                                       _hd110775110829_
                                       _tl110774110831_
                                       _e110779110834_
                                       _hd110778110837_
                                       _tl110777110839_
                                       _e110782110842_
                                       _hd110781110845_
                                       _tl110780110847_
                                       _e110785110850_
                                       _hd110784110853_
                                       _tl110783110855_
                                       _e110788110858_
                                       _hd110787110861_
                                       _tl110786110863_
                                       _e110791110866_
                                       _hd110790110869_
                                       _tl110789110871_
                                       _e110794110874_
                                       _hd110793110877_
                                       _tl110792110879_
                                       _e110797110882_
                                       _hd110796110885_
                                       _tl110795110887_
                                       _e110800110890_
                                       _hd110799110893_
                                       _tl110798110895_
                                       _e110803110898_
                                       _hd110802110901_
                                       _tl110801110903_
                                       _e110806110906_
                                       _hd110805110909_
                                       _tl110804110911_
                                       _e110809110914_
                                       _hd110808110917_
                                       _tl110807110919_)
                                      (___kont113048113049_))
                                  (___kont113048113049_))
                              (___kont113048113049_))))
                      (___kont113048113049_))
                  (___kont113048113049_))
              (___kont113048113049_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont113048113049_))))
                                      (___kont113048113049_))))
                               (___match113075113076_
                                (lambda (_e110712110967_
                                         _hd110711110970_
                                         _tl110710110972_
                                         ___splice113042113043_
                                         _target110713110975_
                                         _tl110715110977_)
                                  (letrec ((_loop110716110980_
                                            (lambda (_hd110714110983_
                                                     _arg110720110985_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110714110983_))
                                                  (let ((_e110717110988_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110714110983_))))
                                                    (let ((_lp-tl110719110993_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110717110988_)))
                                                          (_lp-hd110718110991_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110717110988_))))
                                                      (let ((__tmp114453
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd110718110991_ _arg110720110985_))))
                (declare (not safe))
                (_loop110716110980_ _lp-tl110719110993_ __tmp114453))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg110721110996_
                                                         (reverse _arg110720110985_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl110710110972_))
                                                        (let ((_e110724110999_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl110710110972_))))
                  (let ((_tl110722111004_
                         (let () (declare (not safe)) (##cdr _e110724110999_)))
                        (_hd110723111002_
                         (let ()
                           (declare (not safe))
                           (##car _e110724110999_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd110723111002_))
                        (let ((_e110727111007_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd110723111002_))))
                          (let ((_tl110725111012_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110727111007_)))
                                (_hd110726111010_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110727111007_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110726111010_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd110726111010_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110725111012_))
                                        (let ((_e110730111015_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110725111012_))))
                                          (let ((_tl110728111020_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110730111015_)))
                                                (_hd110729111018_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110730111015_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd110729111018_))
                                                (let ((_e110733111023_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd110729111018_))))
                                                  (let ((_tl110731111028_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e110733111023_)))
                                                        (_hd110732111026_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e110733111023_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd110732111026_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd110732111026_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl110731111028_))
                        (let ((_e110736111031_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl110731111028_))))
                          (let ((_tl110734111036_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110736111031_)))
                                (_hd110735111034_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110736111031_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl110734111036_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl110728111020_))
                                    (let ((_e110739111039_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl110728111020_))))
                                      (let ((_tl110737111044_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e110739111039_)))
                                            (_hd110738111042_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e110739111039_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd110738111042_))
                                            (let ((_e110742111047_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd110738111042_))))
                                              (let ((_tl110740111052_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110742111047_)))
                                                    (_hd110741111050_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110742111047_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd110741111050_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd110741111050_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl110740111052_))
                                                            (let ((_e110745111055_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl110740111052_))))
                      (let ((_tl110743111060_
                             (let ()
                               (declare (not safe))
                               (##cdr _e110745111055_)))
                            (_hd110744111058_
                             (let ()
                               (declare (not safe))
                               (##car _e110745111055_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl110743111060_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl110737111044_))
                                (if (fx>= (let ()
                                            (declare (not safe))
                                            (gx#stx-length _tl110737111044_))
                                          '1)
                                    (let ((___splice113044113045_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl110737111044_
                                              '1))))
                                      (let ((_tl110748111065_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice113044113045_
                                                '1)))
                                            (_target110746111063_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice113044113045_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl110748111065_))
                                            (let ((_e110757111068_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl110748111065_))))
                                              (let ((_tl110755111073_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110757111068_)))
                                                    (_hd110756111071_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110757111068_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd110756111071_))
                                                    (let ((_e110760111076_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd110756111071_))))
                                                      (let ((_tl110758111081_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e110760111076_)))
                    (_hd110759111079_
                     (let () (declare (not safe)) (##car _e110760111076_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd110759111079_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd110759111079_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl110758111081_))
                            (let ((_e110763111084_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl110758111081_))))
                              (let ((_tl110761111089_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e110763111084_)))
                                    (_hd110762111087_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e110763111084_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl110761111089_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl110755111073_))
                                        (letrec ((_loop110749111092_
                                                  (lambda (_hd110747111095_
                                                           _xarg110753111097_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd110747111095_))
                                                        (let ((_e110750111100_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd110747111095_))))
                  (let ((_lp-tl110752111105_
                         (let () (declare (not safe)) (##cdr _e110750111100_)))
                        (_lp-hd110751111103_
                         (let ()
                           (declare (not safe))
                           (##car _e110750111100_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd110751111103_))
                        (let ((_e110766111108_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd110751111103_))))
                          (let ((_tl110764111113_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110766111108_)))
                                (_hd110765111111_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110766111108_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110765111111_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd110765111111_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110764111113_))
                                        (let ((_e110769111116_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110764111113_))))
                                          (let ((_tl110767111121_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110769111116_)))
                                                (_hd110768111119_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110769111116_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl110767111121_))
                                                (let ((__tmp114452
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd110768111119_
                                                               _xarg110753111097_))))
                                                  (declare (not safe))
                                                  (_loop110749111092_
                                                   _lp-tl110752111105_
                                                   __tmp114452))
                                                (___match113145113146_
                                                 _e110712110967_
                                                 _hd110711110970_
                                                 _tl110710110972_
                                                 _e110724110999_
                                                 _hd110723111002_
                                                 _tl110722111004_
                                                 _e110727111007_
                                                 _hd110726111010_
                                                 _tl110725111012_
                                                 _e110730111015_
                                                 _hd110729111018_
                                                 _tl110728111020_
                                                 _e110733111023_
                                                 _hd110732111026_
                                                 _tl110731111028_
                                                 _e110736111031_
                                                 _hd110735111034_
                                                 _tl110734111036_
                                                 _e110739111039_
                                                 _hd110738111042_
                                                 _tl110737111044_
                                                 _e110742111047_
                                                 _hd110741111050_
                                                 _tl110740111052_
                                                 _e110745111055_
                                                 _hd110744111058_
                                                 _tl110743111060_))))
                                        (___match113145113146_
                                         _e110712110967_
                                         _hd110711110970_
                                         _tl110710110972_
                                         _e110724110999_
                                         _hd110723111002_
                                         _tl110722111004_
                                         _e110727111007_
                                         _hd110726111010_
                                         _tl110725111012_
                                         _e110730111015_
                                         _hd110729111018_
                                         _tl110728111020_
                                         _e110733111023_
                                         _hd110732111026_
                                         _tl110731111028_
                                         _e110736111031_
                                         _hd110735111034_
                                         _tl110734111036_
                                         _e110739111039_
                                         _hd110738111042_
                                         _tl110737111044_
                                         _e110742111047_
                                         _hd110741111050_
                                         _tl110740111052_
                                         _e110745111055_
                                         _hd110744111058_
                                         _tl110743111060_))
                                    (___match113145113146_
                                     _e110712110967_
                                     _hd110711110970_
                                     _tl110710110972_
                                     _e110724110999_
                                     _hd110723111002_
                                     _tl110722111004_
                                     _e110727111007_
                                     _hd110726111010_
                                     _tl110725111012_
                                     _e110730111015_
                                     _hd110729111018_
                                     _tl110728111020_
                                     _e110733111023_
                                     _hd110732111026_
                                     _tl110731111028_
                                     _e110736111031_
                                     _hd110735111034_
                                     _tl110734111036_
                                     _e110739111039_
                                     _hd110738111042_
                                     _tl110737111044_
                                     _e110742111047_
                                     _hd110741111050_
                                     _tl110740111052_
                                     _e110745111055_
                                     _hd110744111058_
                                     _tl110743111060_))
                                (___match113145113146_
                                 _e110712110967_
                                 _hd110711110970_
                                 _tl110710110972_
                                 _e110724110999_
                                 _hd110723111002_
                                 _tl110722111004_
                                 _e110727111007_
                                 _hd110726111010_
                                 _tl110725111012_
                                 _e110730111015_
                                 _hd110729111018_
                                 _tl110728111020_
                                 _e110733111023_
                                 _hd110732111026_
                                 _tl110731111028_
                                 _e110736111031_
                                 _hd110735111034_
                                 _tl110734111036_
                                 _e110739111039_
                                 _hd110738111042_
                                 _tl110737111044_
                                 _e110742111047_
                                 _hd110741111050_
                                 _tl110740111052_
                                 _e110745111055_
                                 _hd110744111058_
                                 _tl110743111060_))))
                        (___match113145113146_
                         _e110712110967_
                         _hd110711110970_
                         _tl110710110972_
                         _e110724110999_
                         _hd110723111002_
                         _tl110722111004_
                         _e110727111007_
                         _hd110726111010_
                         _tl110725111012_
                         _e110730111015_
                         _hd110729111018_
                         _tl110728111020_
                         _e110733111023_
                         _hd110732111026_
                         _tl110731111028_
                         _e110736111031_
                         _hd110735111034_
                         _tl110734111036_
                         _e110739111039_
                         _hd110738111042_
                         _tl110737111044_
                         _e110742111047_
                         _hd110741111050_
                         _tl110740111052_
                         _e110745111055_
                         _hd110744111058_
                         _tl110743111060_))))
                (let ((_xarg110754111124_ (reverse _xarg110753111097_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl110722111004_))
                      (let ((_L111127_ _hd110762111087_)
                            (_L111128_ _xarg110754111124_)
                            (_L111129_ _hd110744111058_)
                            (_L111130_ _hd110735111034_)
                            (_L111131_ _tl110715110977_)
                            (_L111132_ _arg110721110996_))
                        (if (and (let ((__tmp114450
                                        (let ((__tmp114451
                                               (lambda (_g111175111178_
                                                        _g111176111180_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g111175111178_
                                                         _g111176111180_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp114451 '() _L111132_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp114450))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L111131_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L111130_ 'apply))
                                 (fx= (length (let ((__tmp114448
                                                     (lambda (_g111182111185_
                                                              _g111183111187_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g111182111185_
                                                               _g111183111187_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp114448
                                                        '()
                                                        _L111132_)))
                                      (length (let ((__tmp114449
                                                     (lambda (_g111189111192_
                                                              _g111190111194_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g111189111192_
                                                               _g111190111194_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp114449
                                                        '()
                                                        _L111128_))))
                                 (let ((__tmp114446
                                        (let ((__tmp114447
                                               (lambda (_g111196111199_
                                                        _g111197111201_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g111196111199_
                                                         _g111197111201_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp114447 '() _L111132_)))
                                       (__tmp114444
                                        (let ((__tmp114445
                                               (lambda (_g111203111206_
                                                        _g111204111208_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g111203111206_
                                                         _g111204111208_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp114445 '() _L111128_))))
                                   (declare (not safe))
                                   (andmap2 gx#free-identifier=?
                                            __tmp114446
                                            __tmp114444))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L111131_ _L111127_))
                                 (let ((__tmp114439
                                        (let ((__tmp114443
                                               (lambda (_g111210111212_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#free-identifier=?
                                                    _g111210111212_
                                                    _L111129_))))
                                              (__tmp114440
                                               (let ((__tmp114442
                                                      (lambda (_g111214111217_
                                                               _g111215111219_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g111214111217_
                                                                _g111215111219_))))
                                                     (__tmp114441
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L111131_ '()))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp114442
                                                         __tmp114441
                                                         _L111132_))))
                                          (declare (not safe))
                                          (find __tmp114443 __tmp114440))))
                                   (declare (not safe))
                                   (not __tmp114439)))
                            (___kont113040113041_
                             _L111127_
                             _L111128_
                             _L111129_
                             _L111130_
                             _L111131_
                             _L111132_)
                            (___match113145113146_
                             _e110712110967_
                             _hd110711110970_
                             _tl110710110972_
                             _e110724110999_
                             _hd110723111002_
                             _tl110722111004_
                             _e110727111007_
                             _hd110726111010_
                             _tl110725111012_
                             _e110730111015_
                             _hd110729111018_
                             _tl110728111020_
                             _e110733111023_
                             _hd110732111026_
                             _tl110731111028_
                             _e110736111031_
                             _hd110735111034_
                             _tl110734111036_
                             _e110739111039_
                             _hd110738111042_
                             _tl110737111044_
                             _e110742111047_
                             _hd110741111050_
                             _tl110740111052_
                             _e110745111055_
                             _hd110744111058_
                             _tl110743111060_)))
                      (___match113145113146_
                       _e110712110967_
                       _hd110711110970_
                       _tl110710110972_
                       _e110724110999_
                       _hd110723111002_
                       _tl110722111004_
                       _e110727111007_
                       _hd110726111010_
                       _tl110725111012_
                       _e110730111015_
                       _hd110729111018_
                       _tl110728111020_
                       _e110733111023_
                       _hd110732111026_
                       _tl110731111028_
                       _e110736111031_
                       _hd110735111034_
                       _tl110734111036_
                       _e110739111039_
                       _hd110738111042_
                       _tl110737111044_
                       _e110742111047_
                       _hd110741111050_
                       _tl110740111052_
                       _e110745111055_
                       _hd110744111058_
                       _tl110743111060_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop110749111092_
                                             _target110746111063_
                                             '())))
                                        (___match113145113146_
                                         _e110712110967_
                                         _hd110711110970_
                                         _tl110710110972_
                                         _e110724110999_
                                         _hd110723111002_
                                         _tl110722111004_
                                         _e110727111007_
                                         _hd110726111010_
                                         _tl110725111012_
                                         _e110730111015_
                                         _hd110729111018_
                                         _tl110728111020_
                                         _e110733111023_
                                         _hd110732111026_
                                         _tl110731111028_
                                         _e110736111031_
                                         _hd110735111034_
                                         _tl110734111036_
                                         _e110739111039_
                                         _hd110738111042_
                                         _tl110737111044_
                                         _e110742111047_
                                         _hd110741111050_
                                         _tl110740111052_
                                         _e110745111055_
                                         _hd110744111058_
                                         _tl110743111060_))
                                    (___match113145113146_
                                     _e110712110967_
                                     _hd110711110970_
                                     _tl110710110972_
                                     _e110724110999_
                                     _hd110723111002_
                                     _tl110722111004_
                                     _e110727111007_
                                     _hd110726111010_
                                     _tl110725111012_
                                     _e110730111015_
                                     _hd110729111018_
                                     _tl110728111020_
                                     _e110733111023_
                                     _hd110732111026_
                                     _tl110731111028_
                                     _e110736111031_
                                     _hd110735111034_
                                     _tl110734111036_
                                     _e110739111039_
                                     _hd110738111042_
                                     _tl110737111044_
                                     _e110742111047_
                                     _hd110741111050_
                                     _tl110740111052_
                                     _e110745111055_
                                     _hd110744111058_
                                     _tl110743111060_))))
                            (___match113145113146_
                             _e110712110967_
                             _hd110711110970_
                             _tl110710110972_
                             _e110724110999_
                             _hd110723111002_
                             _tl110722111004_
                             _e110727111007_
                             _hd110726111010_
                             _tl110725111012_
                             _e110730111015_
                             _hd110729111018_
                             _tl110728111020_
                             _e110733111023_
                             _hd110732111026_
                             _tl110731111028_
                             _e110736111031_
                             _hd110735111034_
                             _tl110734111036_
                             _e110739111039_
                             _hd110738111042_
                             _tl110737111044_
                             _e110742111047_
                             _hd110741111050_
                             _tl110740111052_
                             _e110745111055_
                             _hd110744111058_
                             _tl110743111060_))
                        (___match113145113146_
                         _e110712110967_
                         _hd110711110970_
                         _tl110710110972_
                         _e110724110999_
                         _hd110723111002_
                         _tl110722111004_
                         _e110727111007_
                         _hd110726111010_
                         _tl110725111012_
                         _e110730111015_
                         _hd110729111018_
                         _tl110728111020_
                         _e110733111023_
                         _hd110732111026_
                         _tl110731111028_
                         _e110736111031_
                         _hd110735111034_
                         _tl110734111036_
                         _e110739111039_
                         _hd110738111042_
                         _tl110737111044_
                         _e110742111047_
                         _hd110741111050_
                         _tl110740111052_
                         _e110745111055_
                         _hd110744111058_
                         _tl110743111060_))
                    (___match113145113146_
                     _e110712110967_
                     _hd110711110970_
                     _tl110710110972_
                     _e110724110999_
                     _hd110723111002_
                     _tl110722111004_
                     _e110727111007_
                     _hd110726111010_
                     _tl110725111012_
                     _e110730111015_
                     _hd110729111018_
                     _tl110728111020_
                     _e110733111023_
                     _hd110732111026_
                     _tl110731111028_
                     _e110736111031_
                     _hd110735111034_
                     _tl110734111036_
                     _e110739111039_
                     _hd110738111042_
                     _tl110737111044_
                     _e110742111047_
                     _hd110741111050_
                     _tl110740111052_
                     _e110745111055_
                     _hd110744111058_
                     _tl110743111060_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match113145113146_
                                                     _e110712110967_
                                                     _hd110711110970_
                                                     _tl110710110972_
                                                     _e110724110999_
                                                     _hd110723111002_
                                                     _tl110722111004_
                                                     _e110727111007_
                                                     _hd110726111010_
                                                     _tl110725111012_
                                                     _e110730111015_
                                                     _hd110729111018_
                                                     _tl110728111020_
                                                     _e110733111023_
                                                     _hd110732111026_
                                                     _tl110731111028_
                                                     _e110736111031_
                                                     _hd110735111034_
                                                     _tl110734111036_
                                                     _e110739111039_
                                                     _hd110738111042_
                                                     _tl110737111044_
                                                     _e110742111047_
                                                     _hd110741111050_
                                                     _tl110740111052_
                                                     _e110745111055_
                                                     _hd110744111058_
                                                     _tl110743111060_))))
                                            (___match113145113146_
                                             _e110712110967_
                                             _hd110711110970_
                                             _tl110710110972_
                                             _e110724110999_
                                             _hd110723111002_
                                             _tl110722111004_
                                             _e110727111007_
                                             _hd110726111010_
                                             _tl110725111012_
                                             _e110730111015_
                                             _hd110729111018_
                                             _tl110728111020_
                                             _e110733111023_
                                             _hd110732111026_
                                             _tl110731111028_
                                             _e110736111031_
                                             _hd110735111034_
                                             _tl110734111036_
                                             _e110739111039_
                                             _hd110738111042_
                                             _tl110737111044_
                                             _e110742111047_
                                             _hd110741111050_
                                             _tl110740111052_
                                             _e110745111055_
                                             _hd110744111058_
                                             _tl110743111060_))))
                                    (___match113145113146_
                                     _e110712110967_
                                     _hd110711110970_
                                     _tl110710110972_
                                     _e110724110999_
                                     _hd110723111002_
                                     _tl110722111004_
                                     _e110727111007_
                                     _hd110726111010_
                                     _tl110725111012_
                                     _e110730111015_
                                     _hd110729111018_
                                     _tl110728111020_
                                     _e110733111023_
                                     _hd110732111026_
                                     _tl110731111028_
                                     _e110736111031_
                                     _hd110735111034_
                                     _tl110734111036_
                                     _e110739111039_
                                     _hd110738111042_
                                     _tl110737111044_
                                     _e110742111047_
                                     _hd110741111050_
                                     _tl110740111052_
                                     _e110745111055_
                                     _hd110744111058_
                                     _tl110743111060_))
                                (___match113145113146_
                                 _e110712110967_
                                 _hd110711110970_
                                 _tl110710110972_
                                 _e110724110999_
                                 _hd110723111002_
                                 _tl110722111004_
                                 _e110727111007_
                                 _hd110726111010_
                                 _tl110725111012_
                                 _e110730111015_
                                 _hd110729111018_
                                 _tl110728111020_
                                 _e110733111023_
                                 _hd110732111026_
                                 _tl110731111028_
                                 _e110736111031_
                                 _hd110735111034_
                                 _tl110734111036_
                                 _e110739111039_
                                 _hd110738111042_
                                 _tl110737111044_
                                 _e110742111047_
                                 _hd110741111050_
                                 _tl110740111052_
                                 _e110745111055_
                                 _hd110744111058_
                                 _tl110743111060_))
                            (___kont113048113049_))))
                    (___kont113048113049_))
                (___kont113048113049_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont113048113049_))))
                                            (___kont113048113049_))))
                                    (___kont113048113049_))
                                (___kont113048113049_))))
                        (___kont113048113049_))
                    (___kont113048113049_))
                (___kont113048113049_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont113048113049_))))
                                        (___kont113048113049_))
                                    (___kont113048113049_))
                                (___kont113048113049_))))
                        (___kont113048113049_))))
                (___kont113048113049_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop110716110980_
                                       _target110713110975_
                                       '())))))
                               (___match113063113064_
                                (lambda (_e110664111227_
                                         _hd110663111230_
                                         _tl110662111232_
                                         ___splice113036113037_
                                         _target110665111235_
                                         _tl110667111237_)
                                  (letrec ((_loop110668111240_
                                            (lambda (_hd110666111243_
                                                     _arg110672111245_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110666111243_))
                                                  (let ((_e110669111248_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110666111243_))))
                                                    (let ((_lp-tl110671111253_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110669111248_)))
                                                          (_lp-hd110670111251_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110669111248_))))
                                                      (let ((__tmp114467
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd110670111251_ _arg110672111245_))))
                (declare (not safe))
                (_loop110668111240_ _lp-tl110671111253_ __tmp114467))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg110673111256_
                                                         (reverse _arg110672111245_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl110662111232_))
                                                        (let ((_e110676111259_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl110662111232_))))
                  (let ((_tl110674111264_
                         (let () (declare (not safe)) (##cdr _e110676111259_)))
                        (_hd110675111262_
                         (let ()
                           (declare (not safe))
                           (##car _e110676111259_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd110675111262_))
                        (let ((_e110679111267_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd110675111262_))))
                          (let ((_tl110677111272_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110679111267_)))
                                (_hd110678111270_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110679111267_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110678111270_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd110678111270_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110677111272_))
                                        (let ((_e110682111275_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110677111272_))))
                                          (let ((_tl110680111280_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110682111275_)))
                                                (_hd110681111278_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110682111275_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd110681111278_))
                                                (let ((_e110685111283_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd110681111278_))))
                                                  (let ((_tl110683111288_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e110685111283_)))
                                                        (_hd110684111286_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e110685111283_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd110684111286_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd110684111286_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl110683111288_))
                        (let ((_e110688111291_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl110683111288_))))
                          (let ((_tl110686111296_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110688111291_)))
                                (_hd110687111294_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110688111291_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl110686111296_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl110680111280_))
                                    (let ((___splice113038113039_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl110680111280_
                                              '0))))
                                      (let ((_tl110691111301_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice113038113039_
                                                '1)))
                                            (_target110689111299_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice113038113039_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl110691111301_))
                                            (letrec ((_loop110692111304_
                                                      (lambda (_hd110690111307_
                                                               _xarg110696111309_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _hd110690111307_))
                                                            (let ((_e110693111312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd110690111307_))))
                      (let ((_lp-tl110695111317_
                             (let ()
                               (declare (not safe))
                               (##cdr _e110693111312_)))
                            (_lp-hd110694111315_
                             (let ()
                               (declare (not safe))
                               (##car _e110693111312_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _lp-hd110694111315_))
                            (let ((_e110700111320_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _lp-hd110694111315_))))
                              (let ((_tl110698111325_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e110700111320_)))
                                    (_hd110699111323_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e110700111320_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd110699111323_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#ref _hd110699111323_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl110698111325_))
                                            (let ((_e110703111328_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl110698111325_))))
                                              (let ((_tl110701111333_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110703111328_)))
                                                    (_hd110702111331_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110703111328_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl110701111333_))
                                                    (let ((__tmp114466
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd110702111331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xarg110696111309_))))
              (declare (not safe))
              (_loop110692111304_ _lp-tl110695111317_ __tmp114466))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match113075113076_
                                                     _e110664111227_
                                                     _hd110663111230_
                                                     _tl110662111232_
                                                     ___splice113036113037_
                                                     _target110665111235_
                                                     _tl110667111237_))))
                                            (___match113075113076_
                                             _e110664111227_
                                             _hd110663111230_
                                             _tl110662111232_
                                             ___splice113036113037_
                                             _target110665111235_
                                             _tl110667111237_))
                                        (___match113075113076_
                                         _e110664111227_
                                         _hd110663111230_
                                         _tl110662111232_
                                         ___splice113036113037_
                                         _target110665111235_
                                         _tl110667111237_))
                                    (___match113075113076_
                                     _e110664111227_
                                     _hd110663111230_
                                     _tl110662111232_
                                     ___splice113036113037_
                                     _target110665111235_
                                     _tl110667111237_))))
                            (___match113075113076_
                             _e110664111227_
                             _hd110663111230_
                             _tl110662111232_
                             ___splice113036113037_
                             _target110665111235_
                             _tl110667111237_))))
                    (let ((_xarg110697111336_ (reverse _xarg110696111309_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl110674111264_))
                          (let ((_L111339_ _xarg110697111336_)
                                (_L111340_ _hd110687111294_)
                                (_L111341_ _arg110673111256_))
                            (if (and (let ((__tmp114464
                                            (let ((__tmp114465
                                                   (lambda (_g111369111372_
                                                            _g111370111374_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g111369111372_
                                                             _g111370111374_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp114465
                                                      '()
                                                      _L111341_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp114464))
                                     (fx= (length (let ((__tmp114462
                                                         (lambda (_g111376111379_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g111377111381_)
                   (let ()
                     (declare (not safe))
                     (cons _g111376111379_ _g111377111381_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp114462
                                                            '()
                                                            _L111341_)))
                                          (length (let ((__tmp114463
                                                         (lambda (_g111383111386_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g111384111388_)
                   (let ()
                     (declare (not safe))
                     (cons _g111383111386_ _g111384111388_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp114463
                                                            '()
                                                            _L111339_))))
                                     (let ((__tmp114460
                                            (let ((__tmp114461
                                                   (lambda (_g111390111393_
                                                            _g111391111395_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g111390111393_
                                                             _g111391111395_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp114461
                                                      '()
                                                      _L111341_)))
                                           (__tmp114458
                                            (let ((__tmp114459
                                                   (lambda (_g111397111400_
                                                            _g111398111402_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g111397111400_
                                                             _g111398111402_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp114459
                                                      '()
                                                      _L111339_))))
                                       (declare (not safe))
                                       (andmap2 gx#free-identifier=?
                                                __tmp114460
                                                __tmp114458))
                                     (let ((__tmp114454
                                            (let ((__tmp114457
                                                   (lambda (_g111404111406_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _g111404111406_
                                                        _L111340_))))
                                                  (__tmp114455
                                                   (let ((__tmp114456
                                                          (lambda (_g111408111411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g111409111413_)
                    (let ()
                      (declare (not safe))
                      (cons _g111408111411_ _g111409111413_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr1 __tmp114456
                                                             '()
                                                             _L111341_))))
                                              (declare (not safe))
                                              (find __tmp114457 __tmp114455))))
                                       (declare (not safe))
                                       (not __tmp114454)))
                                (___kont113034113035_
                                 _L111339_
                                 _L111340_
                                 _L111341_)
                                (___match113075113076_
                                 _e110664111227_
                                 _hd110663111230_
                                 _tl110662111232_
                                 ___splice113036113037_
                                 _target110665111235_
                                 _tl110667111237_)))
                          (___match113075113076_
                           _e110664111227_
                           _hd110663111230_
                           _tl110662111232_
                           ___splice113036113037_
                           _target110665111235_
                           _tl110667111237_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop110692111304_
                                                 _target110689111299_
                                                 '())))
                                            (___match113075113076_
                                             _e110664111227_
                                             _hd110663111230_
                                             _tl110662111232_
                                             ___splice113036113037_
                                             _target110665111235_
                                             _tl110667111237_))))
                                    (___match113075113076_
                                     _e110664111227_
                                     _hd110663111230_
                                     _tl110662111232_
                                     ___splice113036113037_
                                     _target110665111235_
                                     _tl110667111237_))
                                (___match113075113076_
                                 _e110664111227_
                                 _hd110663111230_
                                 _tl110662111232_
                                 ___splice113036113037_
                                 _target110665111235_
                                 _tl110667111237_))))
                        (___match113075113076_
                         _e110664111227_
                         _hd110663111230_
                         _tl110662111232_
                         ___splice113036113037_
                         _target110665111235_
                         _tl110667111237_))
                    (___match113075113076_
                     _e110664111227_
                     _hd110663111230_
                     _tl110662111232_
                     ___splice113036113037_
                     _target110665111235_
                     _tl110667111237_))
                (___match113075113076_
                 _e110664111227_
                 _hd110663111230_
                 _tl110662111232_
                 ___splice113036113037_
                 _target110665111235_
                 _tl110667111237_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match113075113076_
                                                 _e110664111227_
                                                 _hd110663111230_
                                                 _tl110662111232_
                                                 ___splice113036113037_
                                                 _target110665111235_
                                                 _tl110667111237_))))
                                        (___match113075113076_
                                         _e110664111227_
                                         _hd110663111230_
                                         _tl110662111232_
                                         ___splice113036113037_
                                         _target110665111235_
                                         _tl110667111237_))
                                    (___match113075113076_
                                     _e110664111227_
                                     _hd110663111230_
                                     _tl110662111232_
                                     ___splice113036113037_
                                     _target110665111235_
                                     _tl110667111237_))
                                (___match113075113076_
                                 _e110664111227_
                                 _hd110663111230_
                                 _tl110662111232_
                                 ___splice113036113037_
                                 _target110665111235_
                                 _tl110667111237_))))
                        (___match113075113076_
                         _e110664111227_
                         _hd110663111230_
                         _tl110662111232_
                         ___splice113036113037_
                         _target110665111235_
                         _tl110667111237_))))
                (___match113075113076_
                 _e110664111227_
                 _hd110663111230_
                 _tl110662111232_
                 ___splice113036113037_
                 _target110665111235_
                 _tl110667111237_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop110668111240_
                                       _target110665111235_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx113032113033_))
                              (let ((_e110664111227_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx113032113033_))))
                                (let ((_tl110662111232_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110664111227_)))
                                      (_hd110663111230_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110664111227_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd110663111230_))
                                      (let ((___splice113036113037_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd110663111230_
                                                '0))))
                                        (let ((_tl110667111237_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice113036113037_
                                                  '1)))
                                              (_target110665111235_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice113036113037_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl110667111237_))
                                              (___match113063113064_
                                               _e110664111227_
                                               _hd110663111230_
                                               _tl110662111232_
                                               ___splice113036113037_
                                               _target110665111235_
                                               _tl110667111237_)
                                              (___match113075113076_
                                               _e110664111227_
                                               _hd110663111230_
                                               _tl110662111232_
                                               ___splice113036113037_
                                               _target110665111235_
                                               _tl110667111237_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl110662111232_))
                                          (let ((_e110779110834_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl110662111232_))))
                                            (let ((_tl110777110839_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e110779110834_)))
                                                  (_hd110778110837_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e110779110834_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110778110837_))
                                                  (let ((_e110782110842_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110778110837_))))
                                                    (let ((_tl110780110847_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110782110842_)))
                                                          (_hd110781110845_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110782110842_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd110781110845_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _hd110781110845_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl110780110847_))
                          (let ((_e110785110850_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl110780110847_))))
                            (let ((_tl110783110855_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e110785110850_)))
                                  (_hd110784110853_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e110785110850_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd110784110853_))
                                  (let ((_e110788110858_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd110784110853_))))
                                    (let ((_tl110786110863_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e110788110858_)))
                                          (_hd110787110861_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e110788110858_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd110787110861_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd110787110861_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl110786110863_))
                                                  (let ((_e110791110866_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl110786110863_))))
                                                    (let ((_tl110789110871_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110791110866_)))
                                                          (_hd110790110869_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110791110866_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl110789110871_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl110783110855_))
                      (let ((_e110794110874_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl110783110855_))))
                        (let ((_tl110792110879_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110794110874_)))
                              (_hd110793110877_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110794110874_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd110793110877_))
                              (let ((_e110797110882_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd110793110877_))))
                                (let ((_tl110795110887_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110797110882_)))
                                      (_hd110796110885_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110797110882_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd110796110885_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd110796110885_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl110795110887_))
                                              (let ((_e110800110890_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl110795110887_))))
                                                (let ((_tl110798110895_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e110800110890_)))
                                                      (_hd110799110893_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e110800110890_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl110798110895_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl110792110879_))
                                                          (let ((_e110803110898_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl110792110879_))))
                    (let ((_tl110801110903_
                           (let ()
                             (declare (not safe))
                             (##cdr _e110803110898_)))
                          (_hd110802110901_
                           (let ()
                             (declare (not safe))
                             (##car _e110803110898_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd110802110901_))
                          (let ((_e110806110906_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd110802110901_))))
                            (let ((_tl110804110911_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e110806110906_)))
                                  (_hd110805110909_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e110806110906_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd110805110909_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd110805110909_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl110804110911_))
                                          (let ((_e110809110914_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl110804110911_))))
                                            (let ((_tl110807110919_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e110809110914_)))
                                                  (_hd110808110917_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e110809110914_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl110807110919_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl110801110903_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl110777110839_))
                                                          (___match113173113174_
                                                           _e110664111227_
                                                           _hd110663111230_
                                                           _tl110662111232_
                                                           _e110779110834_
                                                           _hd110778110837_
                                                           _tl110777110839_
                                                           _e110782110842_
                                                           _hd110781110845_
                                                           _tl110780110847_
                                                           _e110785110850_
                                                           _hd110784110853_
                                                           _tl110783110855_
                                                           _e110788110858_
                                                           _hd110787110861_
                                                           _tl110786110863_
                                                           _e110791110866_
                                                           _hd110790110869_
                                                           _tl110789110871_
                                                           _e110794110874_
                                                           _hd110793110877_
                                                           _tl110792110879_
                                                           _e110797110882_
                                                           _hd110796110885_
                                                           _tl110795110887_
                                                           _e110800110890_
                                                           _hd110799110893_
                                                           _tl110798110895_
                                                           _e110803110898_
                                                           _hd110802110901_
                                                           _tl110801110903_
                                                           _e110806110906_
                                                           _hd110805110909_
                                                           _tl110804110911_
                                                           _e110809110914_
                                                           _hd110808110917_
                                                           _tl110807110919_)
                                                          (___kont113048113049_))
                                                      (___kont113048113049_))
                                                  (___kont113048113049_))))
                                          (___kont113048113049_))
                                      (___kont113048113049_))
                                  (___kont113048113049_))))
                          (___kont113048113049_))))
                  (___kont113048113049_))
              (___kont113048113049_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont113048113049_))
                                          (___kont113048113049_))
                                      (___kont113048113049_))))
                              (___kont113048113049_))))
                      (___kont113048113049_))
                  (___kont113048113049_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont113048113049_))
                                              (___kont113048113049_))
                                          (___kont113048113049_))))
                                  (___kont113048113049_))))
                          (___kont113048113049_))
                      (___kont113048113049_))
                  (___kont113048113049_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont113048113049_))))
                                          (___kont113048113049_)))))
                              (___kont113048113049_)))))))
                 (_dispatch-case-e109965_
                  (lambda (_hd110113_ _body110114_)
                    (let* ((_form110116_
                            (let ((__tmp114468
                                   (let ()
                                     (declare (not safe))
                                     (cons _body110114_ '()))))
                              (declare (not safe))
                              (cons _hd110113_ __tmp114468)))
                           (___stx113176113177_ _form110116_)
                           (_g110120110244_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx113176113177_)))))
                      (let ((___kont113178113179_
                             (lambda (_L110615_ _L110616_ _L110617_)
                               (let ((__tmp114469
                                      (let ((__tmp114471
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp114470
                                             (let ()
                                               (declare (not safe))
                                               (cons _L110616_ '()))))
                                        (declare (not safe))
                                        (cons __tmp114471 __tmp114470))))
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self109961_ __tmp114469))))
                            (___kont113184113185_
                             (lambda (_L110463_ _L110464_ _L110465_ _L110466_)
                               (let ((__tmp114472
                                      (let ((__tmp114474
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp114473
                                             (let ()
                                               (declare (not safe))
                                               (cons _L110463_ '()))))
                                        (declare (not safe))
                                        (cons __tmp114474 __tmp114473))))
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self109961_ __tmp114472))))
                            (___kont113188113189_
                             (lambda (_L110329_ _L110330_ _L110331_)
                               (let ((__tmp114475
                                      (let ((__tmp114477
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp114476
                                             (let ()
                                               (declare (not safe))
                                               (cons _L110329_ '()))))
                                        (declare (not safe))
                                        (cons __tmp114477 __tmp114476))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _self109961_
                                  __tmp114475)))))
                        (let* ((___match113285113286_
                                (lambda (_e110212110249_
                                         _hd110211110252_
                                         _tl110210110254_
                                         _e110215110257_
                                         _hd110214110260_
                                         _tl110213110262_
                                         _e110218110265_
                                         _hd110217110268_
                                         _tl110216110270_
                                         _e110221110273_
                                         _hd110220110276_
                                         _tl110219110278_
                                         _e110224110281_
                                         _hd110223110284_
                                         _tl110222110286_
                                         _e110227110289_
                                         _hd110226110292_
                                         _tl110225110294_
                                         _e110230110297_
                                         _hd110229110300_
                                         _tl110228110302_
                                         _e110233110305_
                                         _hd110232110308_
                                         _tl110231110310_
                                         _e110236110313_
                                         _hd110235110316_
                                         _tl110234110318_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl110228110302_))
                                      (let ((_e110239110321_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl110228110302_))))
                                        (let ((_tl110237110326_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e110239110321_)))
                                              (_hd110238110324_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e110239110321_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl110237110326_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl110213110262_))
                                                  (___kont113188113189_
                                                   _hd110235110316_
                                                   _hd110226110292_
                                                   _hd110211110252_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g110120110244_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g110120110244_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g110120110244_)))))
                               (___match113215113216_
                                (lambda (_e110173110367_
                                         _hd110172110370_
                                         _tl110171110372_
                                         ___splice113186113187_
                                         _target110174110375_
                                         _tl110176110377_)
                                  (letrec ((_loop110177110380_
                                            (lambda (_hd110175110383_
                                                     _arg110181110385_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110175110383_))
                                                  (let ((_e110178110388_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110175110383_))))
                                                    (let ((_lp-tl110180110393_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110178110388_)))
                                                          (_lp-hd110179110391_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110178110388_))))
                                                      (let ((__tmp114478
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd110179110391_ _arg110181110385_))))
                (declare (not safe))
                (_loop110177110380_ _lp-tl110180110393_ __tmp114478))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg110182110396_
                                                         (reverse _arg110181110385_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl110171110372_))
                                                        (let ((_e110185110399_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl110171110372_))))
                  (let ((_tl110183110404_
                         (let () (declare (not safe)) (##cdr _e110185110399_)))
                        (_hd110184110402_
                         (let ()
                           (declare (not safe))
                           (##car _e110185110399_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd110184110402_))
                        (let ((_e110188110407_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd110184110402_))))
                          (let ((_tl110186110412_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110188110407_)))
                                (_hd110187110410_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110188110407_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110187110410_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd110187110410_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110186110412_))
                                        (let ((_e110191110415_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110186110412_))))
                                          (let ((_tl110189110420_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110191110415_)))
                                                (_hd110190110418_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110191110415_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd110190110418_))
                                                (let ((_e110194110423_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd110190110418_))))
                                                  (let ((_tl110192110428_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e110194110423_)))
                                                        (_hd110193110426_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e110194110423_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd110193110426_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd110193110426_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl110192110428_))
                        (let ((_e110197110431_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl110192110428_))))
                          (let ((_tl110195110436_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110197110431_)))
                                (_hd110196110434_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110197110431_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl110195110436_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl110189110420_))
                                    (let ((_e110200110439_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl110189110420_))))
                                      (let ((_tl110198110444_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e110200110439_)))
                                            (_hd110199110442_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e110200110439_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd110199110442_))
                                            (let ((_e110203110447_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd110199110442_))))
                                              (let ((_tl110201110452_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110203110447_)))
                                                    (_hd110202110450_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110203110447_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd110202110450_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd110202110450_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl110201110452_))
                                                            (let ((_e110206110455_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl110201110452_))))
                      (let ((_tl110204110460_
                             (let ()
                               (declare (not safe))
                               (##cdr _e110206110455_)))
                            (_hd110205110458_
                             (let ()
                               (declare (not safe))
                               (##car _e110206110455_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl110204110460_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl110183110404_))
                                (___kont113184113185_
                                 _hd110205110458_
                                 _hd110196110434_
                                 _tl110176110377_
                                 _arg110182110396_)
                                (___match113285113286_
                                 _e110173110367_
                                 _hd110172110370_
                                 _tl110171110372_
                                 _e110185110399_
                                 _hd110184110402_
                                 _tl110183110404_
                                 _e110188110407_
                                 _hd110187110410_
                                 _tl110186110412_
                                 _e110191110415_
                                 _hd110190110418_
                                 _tl110189110420_
                                 _e110194110423_
                                 _hd110193110426_
                                 _tl110192110428_
                                 _e110197110431_
                                 _hd110196110434_
                                 _tl110195110436_
                                 _e110200110439_
                                 _hd110199110442_
                                 _tl110198110444_
                                 _e110203110447_
                                 _hd110202110450_
                                 _tl110201110452_
                                 _e110206110455_
                                 _hd110205110458_
                                 _tl110204110460_))
                            (let () (declare (not safe)) (_g110120110244_)))))
                    (let () (declare (not safe)) (_g110120110244_)))
                (let () (declare (not safe)) (_g110120110244_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g110120110244_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g110120110244_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g110120110244_)))
                                (let ()
                                  (declare (not safe))
                                  (_g110120110244_)))))
                        (let () (declare (not safe)) (_g110120110244_)))
                    (let () (declare (not safe)) (_g110120110244_)))
                (let () (declare (not safe)) (_g110120110244_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g110120110244_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g110120110244_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g110120110244_)))
                                (let ()
                                  (declare (not safe))
                                  (_g110120110244_)))))
                        (let () (declare (not safe)) (_g110120110244_)))))
                (let () (declare (not safe)) (_g110120110244_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop110177110380_
                                       _target110174110375_
                                       '())))))
                               (___match113203113204_
                                (lambda (_e110127110503_
                                         _hd110126110506_
                                         _tl110125110508_
                                         ___splice113180113181_
                                         _target110128110511_
                                         _tl110130110513_)
                                  (letrec ((_loop110131110516_
                                            (lambda (_hd110129110519_
                                                     _arg110135110521_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110129110519_))
                                                  (let ((_e110132110524_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110129110519_))))
                                                    (let ((_lp-tl110134110529_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110132110524_)))
                                                          (_lp-hd110133110527_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110132110524_))))
                                                      (let ((__tmp114480
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd110133110527_ _arg110135110521_))))
                (declare (not safe))
                (_loop110131110516_ _lp-tl110134110529_ __tmp114480))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg110136110532_
                                                         (reverse _arg110135110521_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl110125110508_))
                                                        (let ((_e110139110535_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl110125110508_))))
                  (let ((_tl110137110540_
                         (let () (declare (not safe)) (##cdr _e110139110535_)))
                        (_hd110138110538_
                         (let ()
                           (declare (not safe))
                           (##car _e110139110535_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd110138110538_))
                        (let ((_e110142110543_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd110138110538_))))
                          (let ((_tl110140110548_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110142110543_)))
                                (_hd110141110546_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110142110543_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110141110546_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd110141110546_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110140110548_))
                                        (let ((_e110145110551_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110140110548_))))
                                          (let ((_tl110143110556_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110145110551_)))
                                                (_hd110144110554_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110145110551_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd110144110554_))
                                                (let ((_e110148110559_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd110144110554_))))
                                                  (let ((_tl110146110564_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e110148110559_)))
                                                        (_hd110147110562_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e110148110559_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd110147110562_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd110147110562_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl110146110564_))
                        (let ((_e110151110567_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl110146110564_))))
                          (let ((_tl110149110572_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110151110567_)))
                                (_hd110150110570_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110151110567_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl110149110572_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl110143110556_))
                                    (let ((___splice113182113183_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl110143110556_
                                              '0))))
                                      (let ((_tl110154110577_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice113182113183_
                                                '1)))
                                            (_target110152110575_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice113182113183_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl110154110577_))
                                            (letrec ((_loop110155110580_
                                                      (lambda (_hd110153110583_
                                                               _xarg110159110585_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _hd110153110583_))
                                                            (let ((_e110156110588_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd110153110583_))))
                      (let ((_lp-tl110158110593_
                             (let ()
                               (declare (not safe))
                               (##cdr _e110156110588_)))
                            (_lp-hd110157110591_
                             (let ()
                               (declare (not safe))
                               (##car _e110156110588_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _lp-hd110157110591_))
                            (let ((_e110163110596_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _lp-hd110157110591_))))
                              (let ((_tl110161110601_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e110163110596_)))
                                    (_hd110162110599_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e110163110596_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd110162110599_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#ref _hd110162110599_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl110161110601_))
                                            (let ((_e110166110604_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl110161110601_))))
                                              (let ((_tl110164110609_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110166110604_)))
                                                    (_hd110165110607_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110166110604_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl110164110609_))
                                                    (let ((__tmp114479
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd110165110607_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xarg110159110585_))))
              (declare (not safe))
              (_loop110155110580_ _lp-tl110158110593_ __tmp114479))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match113215113216_
                                                     _e110127110503_
                                                     _hd110126110506_
                                                     _tl110125110508_
                                                     ___splice113180113181_
                                                     _target110128110511_
                                                     _tl110130110513_))))
                                            (___match113215113216_
                                             _e110127110503_
                                             _hd110126110506_
                                             _tl110125110508_
                                             ___splice113180113181_
                                             _target110128110511_
                                             _tl110130110513_))
                                        (___match113215113216_
                                         _e110127110503_
                                         _hd110126110506_
                                         _tl110125110508_
                                         ___splice113180113181_
                                         _target110128110511_
                                         _tl110130110513_))
                                    (___match113215113216_
                                     _e110127110503_
                                     _hd110126110506_
                                     _tl110125110508_
                                     ___splice113180113181_
                                     _target110128110511_
                                     _tl110130110513_))))
                            (___match113215113216_
                             _e110127110503_
                             _hd110126110506_
                             _tl110125110508_
                             ___splice113180113181_
                             _target110128110511_
                             _tl110130110513_))))
                    (let ((_xarg110160110612_ (reverse _xarg110159110585_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl110137110540_))
                          (___kont113178113179_
                           _xarg110160110612_
                           _hd110150110570_
                           _arg110136110532_)
                          (___match113215113216_
                           _e110127110503_
                           _hd110126110506_
                           _tl110125110508_
                           ___splice113180113181_
                           _target110128110511_
                           _tl110130110513_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop110155110580_
                                                 _target110152110575_
                                                 '())))
                                            (___match113215113216_
                                             _e110127110503_
                                             _hd110126110506_
                                             _tl110125110508_
                                             ___splice113180113181_
                                             _target110128110511_
                                             _tl110130110513_))))
                                    (___match113215113216_
                                     _e110127110503_
                                     _hd110126110506_
                                     _tl110125110508_
                                     ___splice113180113181_
                                     _target110128110511_
                                     _tl110130110513_))
                                (___match113215113216_
                                 _e110127110503_
                                 _hd110126110506_
                                 _tl110125110508_
                                 ___splice113180113181_
                                 _target110128110511_
                                 _tl110130110513_))))
                        (___match113215113216_
                         _e110127110503_
                         _hd110126110506_
                         _tl110125110508_
                         ___splice113180113181_
                         _target110128110511_
                         _tl110130110513_))
                    (___match113215113216_
                     _e110127110503_
                     _hd110126110506_
                     _tl110125110508_
                     ___splice113180113181_
                     _target110128110511_
                     _tl110130110513_))
                (___match113215113216_
                 _e110127110503_
                 _hd110126110506_
                 _tl110125110508_
                 ___splice113180113181_
                 _target110128110511_
                 _tl110130110513_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match113215113216_
                                                 _e110127110503_
                                                 _hd110126110506_
                                                 _tl110125110508_
                                                 ___splice113180113181_
                                                 _target110128110511_
                                                 _tl110130110513_))))
                                        (___match113215113216_
                                         _e110127110503_
                                         _hd110126110506_
                                         _tl110125110508_
                                         ___splice113180113181_
                                         _target110128110511_
                                         _tl110130110513_))
                                    (___match113215113216_
                                     _e110127110503_
                                     _hd110126110506_
                                     _tl110125110508_
                                     ___splice113180113181_
                                     _target110128110511_
                                     _tl110130110513_))
                                (___match113215113216_
                                 _e110127110503_
                                 _hd110126110506_
                                 _tl110125110508_
                                 ___splice113180113181_
                                 _target110128110511_
                                 _tl110130110513_))))
                        (___match113215113216_
                         _e110127110503_
                         _hd110126110506_
                         _tl110125110508_
                         ___splice113180113181_
                         _target110128110511_
                         _tl110130110513_))))
                (___match113215113216_
                 _e110127110503_
                 _hd110126110506_
                 _tl110125110508_
                 ___splice113180113181_
                 _target110128110511_
                 _tl110130110513_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop110131110516_
                                       _target110128110511_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx113176113177_))
                              (let ((_e110127110503_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx113176113177_))))
                                (let ((_tl110125110508_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110127110503_)))
                                      (_hd110126110506_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110127110503_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd110126110506_))
                                      (let ((___splice113180113181_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd110126110506_
                                                '0))))
                                        (let ((_tl110130110513_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice113180113181_
                                                  '1)))
                                              (_target110128110511_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice113180113181_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl110130110513_))
                                              (___match113203113204_
                                               _e110127110503_
                                               _hd110126110506_
                                               _tl110125110508_
                                               ___splice113180113181_
                                               _target110128110511_
                                               _tl110130110513_)
                                              (___match113215113216_
                                               _e110127110503_
                                               _hd110126110506_
                                               _tl110125110508_
                                               ___splice113180113181_
                                               _target110128110511_
                                               _tl110130110513_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl110125110508_))
                                          (let ((_e110215110257_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl110125110508_))))
                                            (let ((_tl110213110262_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e110215110257_)))
                                                  (_hd110214110260_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e110215110257_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110214110260_))
                                                  (let ((_e110218110265_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110214110260_))))
                                                    (let ((_tl110216110270_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110218110265_)))
                                                          (_hd110217110268_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110218110265_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd110217110268_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _hd110217110268_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl110216110270_))
                          (let ((_e110221110273_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl110216110270_))))
                            (let ((_tl110219110278_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e110221110273_)))
                                  (_hd110220110276_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e110221110273_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd110220110276_))
                                  (let ((_e110224110281_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd110220110276_))))
                                    (let ((_tl110222110286_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e110224110281_)))
                                          (_hd110223110284_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e110224110281_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd110223110284_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd110223110284_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl110222110286_))
                                                  (let ((_e110227110289_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl110222110286_))))
                                                    (let ((_tl110225110294_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110227110289_)))
                                                          (_hd110226110292_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110227110289_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl110225110294_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl110219110278_))
                      (let ((_e110230110297_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl110219110278_))))
                        (let ((_tl110228110302_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110230110297_)))
                              (_hd110229110300_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110230110297_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd110229110300_))
                              (let ((_e110233110305_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd110229110300_))))
                                (let ((_tl110231110310_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110233110305_)))
                                      (_hd110232110308_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110233110305_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd110232110308_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd110232110308_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl110231110310_))
                                              (let ((_e110236110313_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl110231110310_))))
                                                (let ((_tl110234110318_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e110236110313_)))
                                                      (_hd110235110316_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e110236110313_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl110234110318_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl110228110302_))
                                                          (let ((_e110239110321_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl110228110302_))))
                    (let ((_tl110237110326_
                           (let ()
                             (declare (not safe))
                             (##cdr _e110239110321_)))
                          (_hd110238110324_
                           (let ()
                             (declare (not safe))
                             (##car _e110239110321_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl110237110326_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl110213110262_))
                              (___kont113188113189_
                               _hd110235110316_
                               _hd110226110292_
                               _hd110126110506_)
                              (let () (declare (not safe)) (_g110120110244_)))
                          (let () (declare (not safe)) (_g110120110244_)))))
                  (let () (declare (not safe)) (_g110120110244_)))
              (let () (declare (not safe)) (_g110120110244_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g110120110244_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g110120110244_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g110120110244_)))))
                              (let ()
                                (declare (not safe))
                                (_g110120110244_)))))
                      (let () (declare (not safe)) (_g110120110244_)))
                  (let () (declare (not safe)) (_g110120110244_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g110120110244_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g110120110244_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g110120110244_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g110120110244_)))))
                          (let () (declare (not safe)) (_g110120110244_)))
                      (let () (declare (not safe)) (_g110120110244_)))
                  (let () (declare (not safe)) (_g110120110244_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g110120110244_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g110120110244_))))))
                              (let ()
                                (declare (not safe))
                                (_g110120110244_))))))))
                 (_generate1109966_
                  (lambda (_args110101_ _arglen110102_ _hd110103_ _body110104_)
                    (let* ((_len110106_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _hd110103_)))
                           (_condition110108_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _hd110103_))
                                (if (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-decls-unsafe?))
                                    (let ((__tmp114495
                                           (let ((__tmp114496
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _len110106_ '()))))
                                             (declare (not safe))
                                             (cons _arglen110102_
                                                   __tmp114496))))
                                      (declare (not safe))
                                      (cons '##fx= __tmp114495))
                                    (let ((__tmp114489
                                           (let ((__tmp114490
                                                  (let ((__tmp114491
                                                         (let ((__tmp114492
                                                                (let ((__tmp114493
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114494
                                      (let ()
                                        (declare (not safe))
                                        (cons _len110106_ '()))))
                                 (declare (not safe))
                                 (cons _arglen110102_ __tmp114494))))
                          (declare (not safe))
                          (cons '##fx= __tmp114493))))
                   (declare (not safe))
                   (cons __tmp114492 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '(declare (not safe))
                                                          __tmp114491))))
                                             (declare (not safe))
                                             (cons '() __tmp114490))))
                                      (declare (not safe))
                                      (cons 'let __tmp114489)))
                                (if (> _len110106_ '0)
                                    (if (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-decls-unsafe?))
                                        (let ((__tmp114487
                                               (let ((__tmp114488
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _len110106_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _arglen110102_
                                                       __tmp114488))))
                                          (declare (not safe))
                                          (cons '##fx>= __tmp114487))
                                        (let ((__tmp114481
                                               (let ((__tmp114482
                                                      (let ((__tmp114483
                                                             (let ((__tmp114484
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114485
                                   (let ((__tmp114486
                                          (let ()
                                            (declare (not safe))
                                            (cons _len110106_ '()))))
                                     (declare (not safe))
                                     (cons _arglen110102_ __tmp114486))))
                              (declare (not safe))
                              (cons '##fx>= __tmp114485))))
                       (declare (not safe))
                       (cons __tmp114484 '()))))
                (declare (not safe))
                (cons '(declare (not safe)) __tmp114483))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp114482))))
                                          (declare (not safe))
                                          (cons 'let __tmp114481)))
                                    '#t)))
                           (_dispatch110110_
                            (if (let ()
                                  (declare (not safe))
                                  (_dispatch-case?109964_
                                   _hd110103_
                                   _body110104_))
                                (let ()
                                  (declare (not safe))
                                  (_dispatch-case-e109965_
                                   _hd110103_
                                   _body110104_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-lambda-form
                                   _self109961_
                                   _hd110103_
                                   _body110104_)))))
                      (let ((__tmp114497
                             (let ((__tmp114498
                                    (let ((__tmp114499
                                           (let ((__tmp114500
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _args110101_ '()))))
                                             (declare (not safe))
                                             (cons _dispatch110110_
                                                   __tmp114500))))
                                      (declare (not safe))
                                      (cons 'apply __tmp114499))))
                               (declare (not safe))
                               (cons __tmp114498 '()))))
                        (declare (not safe))
                        (cons _condition110108_ __tmp114497))))))
          (let* ((_g109968109996_
                  (lambda (_g109969109993_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g109969109993_))))
                 (_g109967110098_
                  (lambda (_g109969109999_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g109969109999_))
                        (let ((_e109974110001_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g109969109999_))))
                          (let ((_hd109973110004_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e109974110001_)))
                                (_tl109972110006_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e109974110001_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl109972110006_))
                                (let ((_g114501_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl109972110006_
                                          '0))))
                                  (begin
                                    (let ((_g114502_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g114501_)
                                                 (##vector-length _g114501_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g114502_ 2)))
                                          (error "Context expects 2 values"
                                                 _g114502_)))
                                    (let ((_target109975110009_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g114501_ 0)))
                                          (_tl109977110011_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g114501_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl109977110011_))
                                          (letrec ((_loop109978110014_
                                                    (lambda (_hd109976110017_
                                                             _body109982110019_
                                                             _hd109983110021_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd109976110017_))
                                                          (let ((_e109979110024_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd109976110017_))))
                    (let ((_lp-hd109980110027_
                           (let ()
                             (declare (not safe))
                             (##car _e109979110024_)))
                          (_lp-tl109981110029_
                           (let ()
                             (declare (not safe))
                             (##cdr _e109979110024_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _lp-hd109980110027_))
                          (let ((_e109988110032_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _lp-hd109980110027_))))
                            (let ((_hd109987110035_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e109988110032_)))
                                  (_tl109986110037_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e109988110032_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl109986110037_))
                                  (let ((_e109991110040_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl109986110037_))))
                                    (let ((_hd109990110043_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e109991110040_)))
                                          (_tl109989110045_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e109991110040_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl109989110045_))
                                          (let ((__tmp114531
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd109990110043_
                                                         _body109982110019_)))
                                                (__tmp114530
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd109987110035_
                                                         _hd109983110021_))))
                                            (declare (not safe))
                                            (_loop109978110014_
                                             _lp-tl109981110029_
                                             __tmp114531
                                             __tmp114530))
                                          (let ()
                                            (declare (not safe))
                                            (_g109968109996_
                                             _g109969109999_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g109968109996_ _g109969109999_)))))
                          (let ()
                            (declare (not safe))
                            (_g109968109996_ _g109969109999_)))))
                  (let ((_body109984110048_ (reverse _body109982110019_))
                        (_hd109985110050_ (reverse _hd109983110021_)))
                    ((lambda (_L110053_ _L110054_)
                       (let ((_args110073_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_arglen110074_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_name110075_
                              (let ((_$e110070_
                                     (let ((__tmp114503
                                            (gxc#current-compile-runtime-names)))
                                       (declare (not safe))
                                       (hash-get __tmp114503 _stx109962_))))
                                (if _$e110070_
                                    _$e110070_
                                    ''case-lambda-dispatch))))
                         (let ((__tmp114504
                                (let ((__tmp114505
                                       (let ((__tmp114506
                                              (let ((__tmp114507
                                                     (let ((__tmp114520
                                                            (let ((__tmp114521
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114522
                                  (let ((__tmp114523
                                         (if (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls-unsafe?))
                                             (let ((__tmp114529
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args110073_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '##length __tmp114529))
                                             (let ((__tmp114524
                                                    (let ((__tmp114525
                                                           (let ((__tmp114526
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114527
                                 (let ((__tmp114528
                                        (let ()
                                          (declare (not safe))
                                          (cons _args110073_ '()))))
                                   (declare (not safe))
                                   (cons '##length __tmp114528))))
                            (declare (not safe))
                            (cons __tmp114527 '()))))
                     (declare (not safe))
                     (cons '(declare (not safe)) __tmp114526))))
              (declare (not safe))
              (cons '() __tmp114525))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'let __tmp114524)))))
                                    (declare (not safe))
                                    (cons __tmp114523 '()))))
                             (declare (not safe))
                             (cons _arglen110074_ __tmp114522))))
                      (declare (not safe))
                      (cons __tmp114521 '())))
                   (__tmp114508
                    (let ((__tmp114509
                           (let ((__tmp114510
                                  (let ((__tmp114514
                                         (let ((__tmp114515
                                                (let ((__tmp114516
                                                       (let ((__tmp114517
                                                              (let ((__tmp114518
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp114519
                                    (let ()
                                      (declare (not safe))
                                      (cons _args110073_ '()))))
                               (declare (not safe))
                               (cons _name110075_ __tmp114519))))
                        (declare (not safe))
                        (cons '##raise-wrong-number-of-arguments-exception
                              __tmp114518))))
                 (declare (not safe))
                 (cons __tmp114517 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'else __tmp114516))))
                                           (declare (not safe))
                                           (cons __tmp114515 '())))
                                        (__tmp114511
                                         (map (lambda (_g110076110079_
                                                       _g110077110081_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate1109966_
                                                   _args110073_
                                                   _arglen110074_
                                                   _g110076110079_
                                                   _g110077110081_)))
                                              (let ((__tmp114512
                                                     (lambda (_g110083110086_
                                                              _g110084110088_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g110083110086_
                                                               _g110084110088_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp114512
                                                        '()
                                                        _L110054_))
                                              (let ((__tmp114513
                                                     (lambda (_g110090110093_
                                                              _g110091110095_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g110090110093_
                                                               _g110091110095_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp114513
                                                        '()
                                                        _L110053_)))))
                                    (declare (not safe))
                                    (foldr1 cons __tmp114514 __tmp114511))))
                             (declare (not safe))
                             (cons 'cond __tmp114510))))
                      (declare (not safe))
                      (cons __tmp114509 '()))))
               (declare (not safe))
               (cons __tmp114520 __tmp114508))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'let __tmp114507))))
                                         (declare (not safe))
                                         (cons __tmp114506 '()))))
                                  (declare (not safe))
                                  (cons _args110073_ __tmp114505))))
                           (declare (not safe))
                           (cons 'lambda __tmp114504))))
                     _body109984110048_
                     _hd109985110050_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_loop109978110014_
                                               _target109975110009_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_g109968109996_
                                             _g109969109999_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g109968109996_ _g109969109999_)))))
                        (let ()
                          (declare (not safe))
                          (_g109968109996_ _g109969109999_))))))
            (declare (not safe))
            (_g109967110098_ _stx109962_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_self109232_ _stx109233_ _compiled-body?109234_)
        (letrec ((_generate-simple109236_
                  (lambda (_hd109946_ _body109947_)
                    (let ((__tmp114532
                           (let ((__tmp114533
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-simple-let
                                     _self109232_
                                     'let
                                     _hd109946_
                                     _body109947_
                                     _compiled-body?109234_))))
                             (declare (not safe))
                             (_coalesce-let*109238_ __tmp114533))))
                      (declare (not safe))
                      (_coalesce-boolean109237_ __tmp114532))))
                 (_coalesce-boolean109237_
                  (lambda (_code109807_)
                    (if (gxc#current-compile-boolean-context)
                        (let* ((_code109808109834_ _code109807_)
                               (_else109810109842_ (lambda () _code109807_))
                               (_K109812109879_
                                (lambda (_expr2109845_
                                         _expr1109846_
                                         _id109847_)
                                  (let* ((_expr2109848109856_ _expr2109845_)
                                         (_else109850109864_
                                          (lambda ()
                                            (let ((__tmp114534
                                                   (let ((__tmp114535
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _expr2109845_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _expr1109846_
                                                           __tmp114535))))
                                              (declare (not safe))
                                              (cons 'or __tmp114534))))
                                         (_K109852109869_
                                          (lambda (_exprs109867_)
                                            (let ((__tmp114536
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _expr1109846_
                                                           _exprs109867_))))
                                              (declare (not safe))
                                              (cons 'or __tmp114536)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _expr2109848109856_))
                                        (let ((_hd109853109872_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _expr2109848109856_)))
                                              (_tl109854109874_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _expr2109848109856_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd109853109872_ 'or))
                                              (let ((_exprs109877_
                                                     _tl109854109874_))
                                                (declare (not safe))
                                                (_K109852109869_
                                                 _exprs109877_))
                                              (let ()
                                                (declare (not safe))
                                                (_else109850109864_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else109850109864_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _code109808109834_))
                              (let ((_hd109813109882_
                                     (let ()
                                       (declare (not safe))
                                       (##car _code109808109834_)))
                                    (_tl109814109884_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _code109808109834_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _hd109813109882_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tl109814109884_))
                                        (let ((_hd109815109887_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tl109814109884_)))
                                              (_tl109816109889_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tl109814109884_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _hd109815109887_))
                                              (let ((_hd109827109892_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _hd109815109887_)))
                                                    (_tl109828109894_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _hd109815109887_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _hd109827109892_))
                                                    (let ((_hd109829109897_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _hd109827109892_)))
                                                          (_tl109830109899_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _hd109827109892_))))
                                                      (let ((_id109902_
                                                             _hd109829109897_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _tl109830109899_))
                                                            (let ((_hd109831109904_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _tl109830109899_)))
                          (_tl109832109906_
                           (let ()
                             (declare (not safe))
                             (##cdr _tl109830109899_))))
                      (let ((_expr1109909_ _hd109831109904_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _tl109832109906_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl109828109894_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl109816109889_))
                                    (let ((_hd109817109911_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl109816109889_)))
                                          (_tl109818109913_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl109816109889_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd109817109911_))
                                          (let ((_hd109819109916_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd109817109911_)))
                                                (_tl109820109918_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd109817109911_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd109819109916_ 'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl109820109918_))
                                                    (let ((_hd109821109921_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl109820109918_)))
                                                          (_tl109822109923_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl109820109918_))))
                                                      (if ((lambda (_g109925109927_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (eq? _g109925109927_ _id109902_)))
                   _hd109821109921_)
                  (if (let () (declare (not safe)) (##pair? _tl109822109923_))
                      (let ((_hd109823109930_
                             (let ()
                               (declare (not safe))
                               (##car _tl109822109923_)))
                            (_tl109824109932_
                             (let ()
                               (declare (not safe))
                               (##cdr _tl109822109923_))))
                        (if ((lambda (_g109934109936_)
                               (let ()
                                 (declare (not safe))
                                 (eq? _g109934109936_ _id109902_)))
                             _hd109823109930_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl109824109932_))
                                (let ((_hd109825109939_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl109824109932_)))
                                      (_tl109826109941_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl109824109932_))))
                                  (let ((_expr2109944_ _hd109825109939_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl109826109941_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _tl109818109913_))
                                            (let ()
                                              (declare (not safe))
                                              (_K109812109879_
                                               _expr2109944_
                                               _expr1109909_
                                               _id109902_))
                                            (let ()
                                              (declare (not safe))
                                              (_else109810109842_)))
                                        (let ()
                                          (declare (not safe))
                                          (_else109810109842_)))))
                                (let ()
                                  (declare (not safe))
                                  (_else109810109842_)))
                            (let ()
                              (declare (not safe))
                              (_else109810109842_))))
                      (let () (declare (not safe)) (_else109810109842_)))
                  (let () (declare (not safe)) (_else109810109842_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else109810109842_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_else109810109842_))))
                                          (let ()
                                            (declare (not safe))
                                            (_else109810109842_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else109810109842_)))
                                (let ()
                                  (declare (not safe))
                                  (_else109810109842_)))
                            (let ()
                              (declare (not safe))
                              (_else109810109842_)))))
                    (let () (declare (not safe)) (_else109810109842_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else109810109842_))))
                                              (let ()
                                                (declare (not safe))
                                                (_else109810109842_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else109810109842_)))
                                    (let ()
                                      (declare (not safe))
                                      (_else109810109842_))))
                              (let ()
                                (declare (not safe))
                                (_else109810109842_))))
                        _code109807_)))
                 (_coalesce-let*109238_
                  (lambda (_code109540_)
                    (let* ((_code109541109605_ _code109540_)
                           (_else109545109613_ (lambda () _code109540_)))
                      (let ((_K109587109758_
                             (lambda (_body109754_ _expr109755_ _id109756_)
                               (let ((__tmp114537
                                      (let ((__tmp114538
                                             (let ((__tmp114539
                                                    (let ((__tmp114540
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr109755_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id109756_ __tmp114540))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114539 '()))))
                                        (declare (not safe))
                                        (cons __tmp114538 _body109754_))))
                                 (declare (not safe))
                                 (cons 'let __tmp114537))))
                            (_K109564109683_
                             (lambda (_body109677_
                                      _expr2109678_
                                      _id2109679_
                                      _expr1109680_
                                      _id1109681_)
                               (let ((__tmp114541
                                      (let ((__tmp114542
                                             (let ((__tmp114546
                                                    (let ((__tmp114547
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr1109680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id1109681_ __tmp114547)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp114543
                                                    (let ((__tmp114544
                                                           (let ((__tmp114545
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _expr2109678_ '()))))
                     (declare (not safe))
                     (cons _id2109679_ __tmp114545))))
              (declare (not safe))
              (cons __tmp114544 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114546
                                                     __tmp114543))))
                                        (declare (not safe))
                                        (cons __tmp114542 _body109677_))))
                                 (declare (not safe))
                                 (cons 'let* __tmp114541))))
                            (_K109547109622_
                             (lambda (_body109617_
                                      _bind109618_
                                      _expr1109619_
                                      _id1109620_)
                               (let ((__tmp114548
                                      (let ((__tmp114549
                                             (let ((__tmp114550
                                                    (let ((__tmp114551
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr1109619_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id1109620_ __tmp114551))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114550
                                                     _bind109618_))))
                                        (declare (not safe))
                                        (cons __tmp114549 _body109617_))))
                                 (declare (not safe))
                                 (cons 'let* __tmp114548)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _code109541109605_))
                            (let ((_tl109589109763_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _code109541109605_)))
                                  (_hd109588109761_
                                   (let ()
                                     (declare (not safe))
                                     (##car _code109541109605_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd109588109761_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl109589109763_))
                                      (let ((_tl109591109768_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl109589109763_)))
                                            (_hd109590109766_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl109589109763_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _hd109590109766_))
                                            (let ((_tl109599109773_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _hd109590109766_)))
                                                  (_hd109598109771_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _hd109590109766_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _hd109598109771_))
                                                  (let ((_tl109601109778_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _hd109598109771_)))
                                                        (_hd109600109776_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _hd109598109771_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl109601109778_))
                                                        (let ((_tl109603109785_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl109601109778_)))
                      (_hd109602109783_
                       (let () (declare (not safe)) (##car _tl109601109778_))))
                  (if (let () (declare (not safe)) (##null? _tl109603109785_))
                      (if (let ()
                            (declare (not safe))
                            (##null? _tl109599109773_))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _tl109591109768_))
                              (let ((_tl109593109792_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _tl109591109768_)))
                                    (_hd109592109790_
                                     (let ()
                                       (declare (not safe))
                                       (##car _tl109591109768_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd109592109790_))
                                    (let ((_tl109595109797_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd109592109790_)))
                                          (_hd109594109795_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd109592109790_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd109594109795_ 'let))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _tl109595109797_))
                                              (let ((_tl109597109802_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _tl109595109797_)))
                                                    (_hd109596109800_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _tl109595109797_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _hd109596109800_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl109593109792_))
                                                        (let ((_id109781_
                                                               _hd109600109776_)
                                                              (_expr109788_
                                                               _hd109602109783_)
                                                              (_body109805_
                                                               _tl109597109802_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K109587109758_
                                                             _body109805_
                                                             _expr109788_
                                                             _id109781_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_else109545109613_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _hd109596109800_))
                                                        (let ((_tl109576109732_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _hd109596109800_)))
                      (_hd109575109730_
                       (let () (declare (not safe)) (##car _hd109596109800_))))
                  (if (let () (declare (not safe)) (##pair? _hd109575109730_))
                      (let ((_tl109578109737_
                             (let ()
                               (declare (not safe))
                               (##cdr _hd109575109730_)))
                            (_hd109577109735_
                             (let ()
                               (declare (not safe))
                               (##car _hd109575109730_))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl109578109737_))
                            (let ((_tl109580109744_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl109578109737_)))
                                  (_hd109579109742_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl109578109737_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl109580109744_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl109576109732_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl109593109792_))
                                          (let ((_id1109706_ _hd109600109776_)
                                                (_expr1109713_
                                                 _hd109602109783_)
                                                (_id2109740_ _hd109577109735_)
                                                (_expr2109747_
                                                 _hd109579109742_)
                                                (_body109749_
                                                 _tl109597109802_))
                                            (let ()
                                              (declare (not safe))
                                              (_K109564109683_
                                               _body109749_
                                               _expr2109747_
                                               _id2109740_
                                               _expr1109713_
                                               _id1109706_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else109545109613_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else109545109613_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else109545109613_))))
                            (let ()
                              (declare (not safe))
                              (_else109545109613_))))
                      (let () (declare (not safe)) (_else109545109613_))))
                (let () (declare (not safe)) (_else109545109613_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_else109545109613_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd109594109795_ 'let*))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl109595109797_))
                                                  (let ((_tl109557109666_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl109595109797_)))
                                                        (_hd109556109664_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl109595109797_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl109593109792_))
                                                        (let ((_id1109645_
                                                               _hd109600109776_)
                                                              (_expr1109652_
                                                               _hd109602109783_)
                                                              (_bind109669_
                                                               _hd109556109664_)
                                                              (_body109671_
                                                               _tl109557109666_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K109547109622_
                                                             _body109671_
                                                             _bind109669_
                                                             _expr1109652_
                                                             _id1109645_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_else109545109613_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else109545109613_)))
                                              (let ()
                                                (declare (not safe))
                                                (_else109545109613_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_else109545109613_))))
                              (let ()
                                (declare (not safe))
                                (_else109545109613_)))
                          (let () (declare (not safe)) (_else109545109613_)))
                      (let () (declare (not safe)) (_else109545109613_))))
                (let () (declare (not safe)) (_else109545109613_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else109545109613_))))
                                            (let ()
                                              (declare (not safe))
                                              (_else109545109613_))))
                                      (let ()
                                        (declare (not safe))
                                        (_else109545109613_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else109545109613_))))
                            (let ()
                              (declare (not safe))
                              (_else109545109613_)))))))
                 (_generate-values109239_
                  (lambda (_hd109353_ _body109354_)
                    (let _lp109356_ ((_rest109358_ _hd109353_)
                                     (_bind109359_ '())
                                     (_check109360_ '())
                                     (_post109361_ '()))
                      (let* ((___stx113487113488_ _rest109358_)
                             (_g109364109375_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx113487113488_)))))
                        (let ((___kont113489113490_
                               (lambda (_L109402_ _L109403_)
                                 (let* ((___stx113443113444_ _L109403_)
                                        (_g109418109443_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx113443113444_)))))
                                   (let ((___kont113445113446_
                                          (lambda (_L109516_ _L109517_)
                                            (let ((_eid109531_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _L109517_)))
                                                  (_expr109532_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self109232_
                                                      _L109516_))))
                                              (let ((__tmp114552
                                                     (let ((__tmp114553
                                                            (let ((__tmp114554
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr109532_ '()))))
                      (declare (not safe))
                      (cons _eid109531_ __tmp114554))))
               (declare (not safe))
               (cons __tmp114553 _bind109359_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp109356_
                                                 _L109402_
                                                 __tmp114552
                                                 _check109360_
                                                 _post109361_)))))
                                         (___kont113447113448_
                                          (lambda (_L109464_ _L109465_)
                                            (let* ((_vals109478_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_check-values109480_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _vals109478_
                                                       _L109465_
                                                       _L109464_)))
                                                   (_refs109482_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _vals109478_
                                                       _L109465_)))
                                                   (_expr109484_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self109232_
                                                       _L109464_))))
                                              (let ((__tmp114557
                                                     (let ((__tmp114558
                                                            (let ((__tmp114559
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr109484_ '()))))
                      (declare (not safe))
                      (cons _vals109478_ __tmp114559))))
               (declare (not safe))
               (cons __tmp114558 _bind109359_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp114556
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _check-values109480_
                                                             _check109360_)))
                                                    (__tmp114555
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _refs109482_
                                                             _post109361_))))
                                                (declare (not safe))
                                                (_lp109356_
                                                 _L109402_
                                                 __tmp114557
                                                 __tmp114556
                                                 __tmp114555))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx113443113444_))
                                         (let ((_e109424109492_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx113443113444_))))
                                           (let ((_tl109422109497_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e109424109492_)))
                                                 (_hd109423109495_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e109424109492_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _hd109423109495_))
                                                 (let ((_e109427109500_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _hd109423109495_))))
                                                   (let ((_tl109425109505_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e109427109500_)))
                                                         (_hd109426109503_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e109427109500_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl109425109505_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl109422109497_))
                     (let ((_e109430109508_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl109422109497_))))
                       (let ((_tl109428109513_
                              (let ()
                                (declare (not safe))
                                (##cdr _e109430109508_)))
                             (_hd109429109511_
                              (let ()
                                (declare (not safe))
                                (##car _e109430109508_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl109428109513_))
                             (___kont113445113446_
                              _hd109429109511_
                              _hd109426109503_)
                             (let () (declare (not safe)) (_g109418109443_)))))
                     (let () (declare (not safe)) (_g109418109443_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl109422109497_))
                     (let ((_e109438109456_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl109422109497_))))
                       (let ((_tl109436109461_
                              (let ()
                                (declare (not safe))
                                (##cdr _e109438109456_)))
                             (_hd109437109459_
                              (let ()
                                (declare (not safe))
                                (##car _e109438109456_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl109436109461_))
                             (___kont113447113448_
                              _hd109437109459_
                              _hd109423109495_)
                             (let () (declare (not safe)) (_g109418109443_)))))
                     (let () (declare (not safe)) (_g109418109443_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl109422109497_))
                                                     (let ((_e109438109456_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl109422109497_))))
                                                       (let ((_tl109436109461_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e109438109456_)))
                     (_hd109437109459_
                      (let () (declare (not safe)) (##car _e109438109456_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl109436109461_))
                     (___kont113447113448_ _hd109437109459_ _hd109423109495_)
                     (let () (declare (not safe)) (_g109418109443_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g109418109443_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g109418109443_)))))))
                              (___kont113491113492_
                               (lambda ()
                                 (let* ((_body109382_
                                         (if _compiled-body?109234_
                                             _body109354_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self109232_
                                                _body109354_))))
                                        (_body109384_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-post109240_
                                            _post109361_
                                            _body109382_)))
                                        (_body109386_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-check109241_
                                            _check109360_
                                            _body109384_))))
                                   (let ((__tmp114560
                                          (let ((__tmp114562
                                                 (reverse _bind109359_))
                                                (__tmp114561
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _body109386_ '()))))
                                            (declare (not safe))
                                            (cons __tmp114562 __tmp114561))))
                                     (declare (not safe))
                                     (cons 'let __tmp114560))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx113487113488_))
                              (let ((_e109370109394_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx113487113488_))))
                                (let ((_tl109368109399_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e109370109394_)))
                                      (_hd109369109397_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e109370109394_))))
                                  (___kont113489113490_
                                   _tl109368109399_
                                   _hd109369109397_)))
                              (___kont113491113492_)))))))
                 (_generate-values-post109240_
                  (lambda (_post109312_ _body109313_)
                    (let _lp109315_ ((_rest109317_ _post109312_)
                                     (_body109318_ _body109313_))
                      (let* ((_rest109319109327_ _rest109317_)
                             (_else109321109335_ (lambda () _body109318_))
                             (_K109323109341_
                              (lambda (_rest109338_ _bind109339_)
                                (let ((__tmp114563
                                       (let ((__tmp114564
                                              (let ((__tmp114565
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body109318_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _bind109339_
                                                      __tmp114565))))
                                         (declare (not safe))
                                         (cons 'let __tmp114564))))
                                  (declare (not safe))
                                  (_lp109315_ _rest109338_ __tmp114563)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest109319109327_))
                            (let ((_hd109324109344_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest109319109327_)))
                                  (_tl109325109346_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest109319109327_))))
                              (let* ((_bind109349_ _hd109324109344_)
                                     (_rest109351_ _tl109325109346_))
                                (declare (not safe))
                                (_K109323109341_ _rest109351_ _bind109349_)))
                            (let ()
                              (declare (not safe))
                              (_else109321109335_)))))))
                 (_generate-values-check109241_
                  (lambda (_check109309_ _body109310_)
                    (let ((__tmp114566
                           (let ((__tmp114568
                                  (let ()
                                    (declare (not safe))
                                    (cons _body109310_ '())))
                                 (__tmp114567 (reverse _check109309_)))
                             (declare (not safe))
                             (foldr1 cons __tmp114568 __tmp114567))))
                      (declare (not safe))
                      (cons 'begin __tmp114566)))))
          (let* ((_g109243109260_
                  (lambda (_g109244109257_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g109244109257_))))
                 (_g109242109306_
                  (lambda (_g109244109263_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g109244109263_))
                        (let ((_e109249109265_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g109244109263_))))
                          (let ((_hd109248109268_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e109249109265_)))
                                (_tl109247109270_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e109249109265_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl109247109270_))
                                (let ((_e109252109273_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl109247109270_))))
                                  (let ((_hd109251109276_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e109252109273_)))
                                        (_tl109250109278_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e109252109273_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl109250109278_))
                                        (let ((_e109255109281_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl109250109278_))))
                                          (let ((_hd109254109284_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e109255109281_)))
                                                (_tl109253109286_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e109255109281_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl109253109286_))
                                                ((lambda (_L109289_ _L109290_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L109290_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-simple109236_
                                                          _L109290_
                                                          _L109289_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values109239_
                                                          _L109290_
                                                          _L109289_))))
                                                 _hd109254109284_
                                                 _hd109251109276_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g109243109260_
                                                   _g109244109263_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g109243109260_ _g109244109263_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g109243109260_ _g109244109263_)))))
                        (let ()
                          (declare (not safe))
                          (_g109243109260_ _g109244109263_))))))
            (declare (not safe))
            (_g109242109306_ _stx109233_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_self109952_ _stx109953_)
        (let ((_compiled-body?109955_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-let-values%__%
           _self109952_
           _stx109953_
           _compiled-body?109955_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g114570_
        (let ((_g114569_ (let () (declare (not safe)) (##length _g114570_))))
          (cond ((let () (declare (not safe)) (##fx= _g114569_ 2))
                 (apply (lambda (_self109952_ _stx109953_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__0
                             _self109952_
                             _stx109953_)))
                        _g114570_))
                ((let () (declare (not safe)) (##fx= _g114569_ 3))
                 (apply (lambda (_self109957_
                                 _stx109958_
                                 _compiled-body?109959_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__%
                             _self109957_
                             _stx109958_
                             _compiled-body?109959_)))
                        _g114570_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g114570_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_vals109126_ _hd109127_)
        (let _lp109129_ ((_rest109131_ _hd109127_)
                         (_k109132_ '0)
                         (_r109133_ '()))
          (let* ((___stx113501113502_ _rest109131_)
                 (_g109138109155_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx113501113502_)))))
            (let ((___kont113503113504_
                   (lambda (_L109218_)
                     (let ((__tmp114571
                            (let () (declare (not safe)) (fx+ _k109132_ '1))))
                       (declare (not safe))
                       (_lp109129_ _L109218_ __tmp114571 _r109133_))))
                  (___kont113505113506_
                   (lambda (_L109191_ _L109192_)
                     (let ((__tmp114577
                            (let () (declare (not safe)) (fx+ _k109132_ '1)))
                           (__tmp114572
                            (let ((__tmp114573
                                   (let ((__tmp114576
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-binding-id
                                             _L109192_)))
                                         (__tmp114574
                                          (let ((__tmp114575
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-values-ref
                                                    _vals109126_
                                                    _k109132_
                                                    _L109191_))))
                                            (declare (not safe))
                                            (cons __tmp114575 '()))))
                                     (declare (not safe))
                                     (cons __tmp114576 __tmp114574))))
                              (declare (not safe))
                              (cons __tmp114573 _r109133_))))
                       (declare (not safe))
                       (_lp109129_ _L109191_ __tmp114577 __tmp114572))))
                  (___kont113507113508_
                   (lambda (_L109167_)
                     (let ((__tmp114578
                            (let ((__tmp114579
                                   (let ((__tmp114582
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-binding-id
                                             _L109167_)))
                                         (__tmp114580
                                          (let ((__tmp114581
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-values->list
                                                    _vals109126_
                                                    _k109132_))))
                                            (declare (not safe))
                                            (cons __tmp114581 '()))))
                                     (declare (not safe))
                                     (cons __tmp114582 __tmp114580))))
                              (declare (not safe))
                              (cons __tmp114579 '()))))
                       (declare (not safe))
                       (foldl1 cons __tmp114578 _r109133_))))
                  (___kont113509113510_ (lambda () (reverse _r109133_))))
              (let ((_g109136109178_
                     (lambda ()
                       (let ((_L109167_ ___stx113501113502_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _L109167_))
                             (___kont113507113508_ _L109167_)
                             (___kont113509113510_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx113501113502_))
                    (let ((_e109143109207_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx113501113502_))))
                      (let ((_tl109141109212_
                             (let ()
                               (declare (not safe))
                               (##cdr _e109143109207_)))
                            (_hd109142109210_
                             (let ()
                               (declare (not safe))
                               (##car _e109143109207_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _hd109142109210_))
                            (let ((_e109144109215_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd109142109210_))))
                              (if (let ()
                                    (declare (not safe))
                                    (equal? _e109144109215_ '#f))
                                  (___kont113503113504_ _tl109141109212_)
                                  (___kont113505113506_
                                   _tl109141109212_
                                   _hd109142109210_)))
                            (___kont113505113506_
                             _tl109141109212_
                             _hd109142109210_))))
                    (let () (declare (not safe)) (_g109136109178_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_self108805_ _stx108806_ _compiled-body?108807_)
        (letrec ((_generate-simple108809_
                  (lambda (_hd109111_ _body109112_)
                    (let ()
                      (declare (not safe))
                      (gxc#generate-runtime-simple-let
                       _self108805_
                       'letrec
                       _hd109111_
                       _body109112_
                       _compiled-body?108807_))))
                 (_generate-values108810_
                  (lambda (_hd108890_ _body108891_)
                    (let _lp108893_ ((_rest108895_ _hd108890_)
                                     (_bind108896_ '())
                                     (_check108897_ '())
                                     (_post108898_ '()))
                      (let* ((___stx113575113576_ _rest108895_)
                             (_g108901108912_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx113575113576_)))))
                        (let ((___kont113577113578_
                               (lambda (_L108939_ _L108940_)
                                 (let* ((___stx113531113532_ _L108940_)
                                        (_g108955108980_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx113531113532_)))))
                                   (let ((___kont113533113534_
                                          (lambda (_L109087_ _L109088_)
                                            (let ((_eid109102_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _L109088_)))
                                                  (_expr109103_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self108805_
                                                      _L109087_))))
                                              (let ((__tmp114583
                                                     (let ((__tmp114584
                                                            (let ((__tmp114585
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr109103_ '()))))
                      (declare (not safe))
                      (cons _eid109102_ __tmp114585))))
               (declare (not safe))
               (cons __tmp114584 _bind108896_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp108893_
                                                 _L108939_
                                                 __tmp114583
                                                 _check108897_
                                                 _post108898_)))))
                                         (___kont113535113536_
                                          (lambda (_L109001_ _L109002_)
                                            (let* ((_vals109015_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_check-values109017_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _vals109015_
                                                       _L109002_
                                                       _L109001_)))
                                                   (_refs109019_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _vals109015_
                                                       _L109002_)))
                                                   (_expr109021_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self108805_
                                                       _L109001_))))
                                              (let ((__tmp114588
                                                     (let ((__tmp114591
                                                            (let ((__tmp114592
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114593
                                  (let ()
                                    (declare (not safe))
                                    (cons _expr109021_ '()))))
                             (declare (not safe))
                             (cons _vals109015_ __tmp114593))))
                      (declare (not safe))
                      (cons __tmp114592 _bind108896_)))
                   (__tmp114589
                    (map (lambda (_e109023109025_)
                           (let* ((_g109027109036_ _e109023109025_)
                                  (_E109029109040_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _g109027109036_))))
                                  (_K109030109045_
                                   (lambda (_eid109043_)
                                     (let ((__tmp114590
                                            (let ()
                                              (declare (not safe))
                                              (cons '#!void '()))))
                                       (declare (not safe))
                                       (cons _eid109043_ __tmp114590)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _g109027109036_))
                                 (let ((_hd109031109048_
                                        (let ()
                                          (declare (not safe))
                                          (##car _g109027109036_)))
                                       (_tl109032109050_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _g109027109036_))))
                                   (let ((_eid109053_ _hd109031109048_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##pair? _tl109032109050_))
                                         (let ((_tl109034109055_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _tl109032109050_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##null? _tl109034109055_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_K109030109045_ _eid109053_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_E109029109040_))))
                                         (let ()
                                           (declare (not safe))
                                           (_E109029109040_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_E109029109040_)))))
                         _refs109019_)))
               (declare (not safe))
               (foldl1 cons __tmp114591 __tmp114589)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp114587
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _check-values109017_
                                                             _check108897_)))
                                                    (__tmp114586
                                                     (let ()
                                                       (declare (not safe))
                                                       (foldl1 cons
                                                               _refs109019_
                                                               _post108898_))))
                                                (declare (not safe))
                                                (_lp108893_
                                                 _L108939_
                                                 __tmp114588
                                                 __tmp114587
                                                 __tmp114586))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx113531113532_))
                                         (let ((_e108961109063_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx113531113532_))))
                                           (let ((_tl108959109068_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e108961109063_)))
                                                 (_hd108960109066_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e108961109063_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _hd108960109066_))
                                                 (let ((_e108964109071_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _hd108960109066_))))
                                                   (let ((_tl108962109076_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e108964109071_)))
                                                         (_hd108963109074_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e108964109071_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl108962109076_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl108959109068_))
                     (let ((_e108967109079_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl108959109068_))))
                       (let ((_tl108965109084_
                              (let ()
                                (declare (not safe))
                                (##cdr _e108967109079_)))
                             (_hd108966109082_
                              (let ()
                                (declare (not safe))
                                (##car _e108967109079_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl108965109084_))
                             (___kont113533113534_
                              _hd108966109082_
                              _hd108963109074_)
                             (let () (declare (not safe)) (_g108955108980_)))))
                     (let () (declare (not safe)) (_g108955108980_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl108959109068_))
                     (let ((_e108975108993_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl108959109068_))))
                       (let ((_tl108973108998_
                              (let ()
                                (declare (not safe))
                                (##cdr _e108975108993_)))
                             (_hd108974108996_
                              (let ()
                                (declare (not safe))
                                (##car _e108975108993_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl108973108998_))
                             (___kont113535113536_
                              _hd108974108996_
                              _hd108960109066_)
                             (let () (declare (not safe)) (_g108955108980_)))))
                     (let () (declare (not safe)) (_g108955108980_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl108959109068_))
                                                     (let ((_e108975108993_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl108959109068_))))
                                                       (let ((_tl108973108998_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e108975108993_)))
                     (_hd108974108996_
                      (let () (declare (not safe)) (##car _e108975108993_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl108973108998_))
                     (___kont113535113536_ _hd108974108996_ _hd108960109066_)
                     (let () (declare (not safe)) (_g108955108980_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g108955108980_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g108955108980_)))))))
                              (___kont113579113580_
                               (lambda ()
                                 (let* ((_body108919_
                                         (if _compiled-body?108807_
                                             _body108891_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self108805_
                                                _body108891_))))
                                        (_body108921_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-post108812_
                                            _post108898_
                                            _body108919_)))
                                        (_body108923_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-check108811_
                                            _check108897_
                                            _body108921_))))
                                   (let ((__tmp114594
                                          (let ((__tmp114596
                                                 (reverse _bind108896_))
                                                (__tmp114595
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _body108923_ '()))))
                                            (declare (not safe))
                                            (cons __tmp114596 __tmp114595))))
                                     (declare (not safe))
                                     (cons 'letrec __tmp114594))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx113575113576_))
                              (let ((_e108907108931_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx113575113576_))))
                                (let ((_tl108905108936_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e108907108931_)))
                                      (_hd108906108934_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e108907108931_))))
                                  (___kont113577113578_
                                   _tl108905108936_
                                   _hd108906108934_)))
                              (___kont113579113580_)))))))
                 (_generate-values-check108811_
                  (lambda (_check108887_ _body108888_)
                    (let ((__tmp114597
                           (let ((__tmp114599
                                  (let ()
                                    (declare (not safe))
                                    (cons _body108888_ '())))
                                 (__tmp114598 (reverse _check108887_)))
                             (declare (not safe))
                             (foldr1 cons __tmp114599 __tmp114598))))
                      (declare (not safe))
                      (cons 'begin __tmp114597))))
                 (_generate-values-post108812_
                  (lambda (_post108880_ _body108881_)
                    (let ((__tmp114600
                           (let ((__tmp114602
                                  (let ()
                                    (declare (not safe))
                                    (cons _body108881_ '())))
                                 (__tmp114601
                                  (map (lambda (_g108882108884_)
                                         (let ()
                                           (declare (not safe))
                                           (cons 'set! _g108882108884_)))
                                       (reverse _post108880_))))
                             (declare (not safe))
                             (foldr1 cons __tmp114602 __tmp114601))))
                      (declare (not safe))
                      (cons 'begin __tmp114600)))))
          (let* ((_g108814108831_
                  (lambda (_g108815108828_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g108815108828_))))
                 (_g108813108877_
                  (lambda (_g108815108834_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g108815108834_))
                        (let ((_e108820108836_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g108815108834_))))
                          (let ((_hd108819108839_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108820108836_)))
                                (_tl108818108841_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108820108836_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl108818108841_))
                                (let ((_e108823108844_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl108818108841_))))
                                  (let ((_hd108822108847_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e108823108844_)))
                                        (_tl108821108849_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e108823108844_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl108821108849_))
                                        (let ((_e108826108852_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl108821108849_))))
                                          (let ((_hd108825108855_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108826108852_)))
                                                (_tl108824108857_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108826108852_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl108824108857_))
                                                ((lambda (_L108860_ _L108861_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L108861_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-simple108809_
                                                          _L108861_
                                                          _L108860_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values108810_
                                                          _L108861_
                                                          _L108860_))))
                                                 _hd108825108855_
                                                 _hd108822108847_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g108814108831_
                                                   _g108815108834_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g108814108831_ _g108815108834_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g108814108831_ _g108815108834_)))))
                        (let ()
                          (declare (not safe))
                          (_g108814108831_ _g108815108834_))))))
            (declare (not safe))
            (_g108813108877_ _stx108806_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_self109117_ _stx109118_)
        (let ((_compiled-body?109120_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-letrec-values%__%
           _self109117_
           _stx109118_
           _compiled-body?109120_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g114604_
        (let ((_g114603_ (let () (declare (not safe)) (##length _g114604_))))
          (cond ((let () (declare (not safe)) (##fx= _g114603_ 2))
                 (apply (lambda (_self109117_ _stx109118_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__0
                             _self109117_
                             _stx109118_)))
                        _g114604_))
                ((let () (declare (not safe)) (##fx= _g114603_ 3))
                 (apply (lambda (_self109122_
                                 _stx109123_
                                 _compiled-body?109124_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__%
                             _self109122_
                             _stx109123_
                             _compiled-body?109124_)))
                        _g114604_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g114604_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_self108386_ _stx108387_)
        (letrec ((_generate-values108389_
                  (lambda (_hd108632_ _body108633_)
                    (let _lp108635_ ((_rest108637_ _hd108632_)
                                     (_bind108638_ '()))
                      (let* ((_rest108639108647_ _rest108637_)
                             (_else108641108658_
                              (lambda ()
                                (let ((_bind108655_ (reverse _bind108638_))
                                      (_body108656_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self108386_
                                          _body108633_))))
                                  (let ((__tmp114605
                                         (let ((__tmp114606
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _body108656_ '()))))
                                           (declare (not safe))
                                           (cons _bind108655_ __tmp114606))))
                                    (declare (not safe))
                                    (cons 'letrec* __tmp114605)))))
                             (_K108643108792_
                              (lambda (_rest108661_ _hd-bind108662_)
                                (let* ((___stx113589113590_ _hd-bind108662_)
                                       (_g108665108690_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx113589113590_)))))
                                  (let ((___kont113591113592_
                                         (lambda (_L108771_ _L108772_)
                                           (let ((_eid108786_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _L108772_)))
                                                 (_expr108787_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _self108386_
                                                     _L108771_))))
                                             (let ((__tmp114607
                                                    (let ((__tmp114608
                                                           (let ((__tmp114609
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _expr108787_ '()))))
                     (declare (not safe))
                     (cons _eid108786_ __tmp114609))))
              (declare (not safe))
              (cons __tmp114608 _bind108638_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp108635_
                                                _rest108661_
                                                __tmp114607)))))
                                        (___kont113593113594_
                                         (lambda (_L108711_ _L108712_)
                                           (let* ((_vals108731_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_tmp108733_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_check-values108735_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-check-values
                                                      _tmp108733_
                                                      _L108712_
                                                      _L108711_)))
                                                  (_refs108737_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-let-values-bind
                                                      _vals108731_
                                                      _L108712_)))
                                                  (_expr108739_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self108386_
                                                      _L108711_))))
                                             (let ((__tmp114610
                                                    (let ((__tmp114611
                                                           (let ((__tmp114612
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114613
                                 (let ((__tmp114614
                                        (let ((__tmp114615
                                               (let ((__tmp114618
                                                      (let ((__tmp114619
                                                             (let ((__tmp114620
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _expr108739_ '()))))
                       (declare (not safe))
                       (cons _tmp108733_ __tmp114620))))
                (declare (not safe))
                (cons __tmp114619 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp114616
                                                      (let ((__tmp114617
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _tmp108733_ '()))))
                (declare (not safe))
                (cons _check-values108735_ __tmp114617))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp114618
                                                       __tmp114616))))
                                          (declare (not safe))
                                          (cons 'let __tmp114615))))
                                   (declare (not safe))
                                   (cons __tmp114614 '()))))
                            (declare (not safe))
                            (cons _vals108731_ __tmp114613))))
                     (declare (not safe))
                     (cons __tmp114612 _bind108638_))))
              (declare (not safe))
              (foldl1 cons __tmp114611 _refs108737_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp108635_
                                                _rest108661_
                                                __tmp114610))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx113589113590_))
                                        (let ((_e108671108747_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx113589113590_))))
                                          (let ((_tl108669108752_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108671108747_)))
                                                (_hd108670108750_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108671108747_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd108670108750_))
                                                (let ((_e108674108755_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd108670108750_))))
                                                  (let ((_tl108672108760_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e108674108755_)))
                                                        (_hd108673108758_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e108674108755_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl108672108760_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl108669108752_))
                                                            (let ((_e108677108763_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl108669108752_))))
                      (let ((_tl108675108768_
                             (let ()
                               (declare (not safe))
                               (##cdr _e108677108763_)))
                            (_hd108676108766_
                             (let ()
                               (declare (not safe))
                               (##car _e108677108763_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl108675108768_))
                            (___kont113591113592_
                             _hd108676108766_
                             _hd108673108758_)
                            (let () (declare (not safe)) (_g108665108690_)))))
                    (let () (declare (not safe)) (_g108665108690_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl108669108752_))
                    (let ((_e108685108703_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl108669108752_))))
                      (let ((_tl108683108708_
                             (let ()
                               (declare (not safe))
                               (##cdr _e108685108703_)))
                            (_hd108684108706_
                             (let ()
                               (declare (not safe))
                               (##car _e108685108703_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl108683108708_))
                            (___kont113593113594_
                             _hd108684108706_
                             _hd108670108750_)
                            (let () (declare (not safe)) (_g108665108690_)))))
                    (let () (declare (not safe)) (_g108665108690_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl108669108752_))
                                                    (let ((_e108685108703_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl108669108752_))))
                                                      (let ((_tl108683108708_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e108685108703_)))
                    (_hd108684108706_
                     (let () (declare (not safe)) (##car _e108685108703_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl108683108708_))
                    (___kont113593113594_ _hd108684108706_ _hd108670108750_)
                    (let () (declare (not safe)) (_g108665108690_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g108665108690_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g108665108690_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108639108647_))
                            (let ((_hd108644108795_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108639108647_)))
                                  (_tl108645108797_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108639108647_))))
                              (let* ((_hd-bind108800_ _hd108644108795_)
                                     (_rest108802_ _tl108645108797_))
                                (declare (not safe))
                                (_K108643108792_
                                 _rest108802_
                                 _hd-bind108800_)))
                            (let ()
                              (declare (not safe))
                              (_else108641108658_)))))))
                 (_generate-letrec?108390_
                  (lambda (_hd108522_)
                    (let _lp108524_ ((_rest108526_ _hd108522_))
                      (let* ((_rest108527108535_ _rest108526_)
                             (_else108529108543_ (lambda () '#t))
                             (_K108531108620_
                              (lambda (_rest108546_ _hd-bind108547_)
                                (let* ((_g108549108566_
                                        (lambda (_g108550108563_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g108550108563_))))
                                       (_g108548108617_
                                        (lambda (_g108550108569_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _g108550108569_))
                                              (let ((_e108555108571_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _g108550108569_))))
                                                (let ((_hd108554108574_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e108555108571_)))
                                                      (_tl108553108576_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e108555108571_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd108554108574_))
                                                      (let ((_e108558108579_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd108554108574_))))
                (let ((_hd108557108582_
                       (let () (declare (not safe)) (##car _e108558108579_)))
                      (_tl108556108584_
                       (let () (declare (not safe)) (##cdr _e108558108579_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl108556108584_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl108553108576_))
                          (let ((_e108561108587_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl108553108576_))))
                            (let ((_hd108560108590_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e108561108587_)))
                                  (_tl108559108592_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e108561108587_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl108559108592_))
                                  ((lambda (_L108595_ _L108596_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_is-lambda-expr?108391_ _L108595_))
                                         (let ()
                                           (declare (not safe))
                                           (_lp108524_ _rest108546_))
                                         '#f))
                                   _hd108560108590_
                                   _hd108557108582_)
                                  (let ()
                                    (declare (not safe))
                                    (_g108549108566_ _g108550108569_)))))
                          (let ()
                            (declare (not safe))
                            (_g108549108566_ _g108550108569_)))
                      (let ()
                        (declare (not safe))
                        (_g108549108566_ _g108550108569_)))))
              (let ()
                (declare (not safe))
                (_g108549108566_ _g108550108569_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g108549108566_
                                                 _g108550108569_))))))
                                  (declare (not safe))
                                  (_g108548108617_ _hd-bind108547_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108527108535_))
                            (let ((_hd108532108623_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108527108535_)))
                                  (_tl108533108625_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108527108535_))))
                              (let* ((_hd-bind108628_ _hd108532108623_)
                                     (_rest108630_ _tl108533108625_))
                                (declare (not safe))
                                (_K108531108620_
                                 _rest108630_
                                 _hd-bind108628_)))
                            (let ()
                              (declare (not safe))
                              (_else108529108543_)))))))
                 (_is-lambda-expr?108391_
                  (lambda (_expr108459_)
                    (let* ((___stx113633113634_ _expr108459_)
                           (_g108462108476_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx113633113634_)))))
                      (let ((___kont113635113636_
                             (lambda (_L108504_ _L108505_) '#t))
                            (___kont113637113638_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? ___stx113633113634_))
                            (let ((_e108468108488_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e ___stx113633113634_))))
                              (let ((_tl108466108493_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e108468108488_)))
                                    (_hd108467108491_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e108468108488_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd108467108491_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd108467108491_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl108466108493_))
                                            (let ((_e108471108496_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl108466108493_))))
                                              (let ((_tl108469108501_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e108471108496_)))
                                                    (_hd108470108499_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e108471108496_))))
                                                (___kont113635113636_
                                                 _tl108469108501_
                                                 _hd108470108499_)))
                                            (___kont113637113638_))
                                        (___kont113637113638_))
                                    (___kont113637113638_))))
                            (___kont113637113638_)))))))
          (let* ((_g108393108410_
                  (lambda (_g108394108407_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g108394108407_))))
                 (_g108392108456_
                  (lambda (_g108394108413_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g108394108413_))
                        (let ((_e108399108415_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g108394108413_))))
                          (let ((_hd108398108418_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108399108415_)))
                                (_tl108397108420_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108399108415_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl108397108420_))
                                (let ((_e108402108423_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl108397108420_))))
                                  (let ((_hd108401108426_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e108402108423_)))
                                        (_tl108400108428_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e108402108423_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl108400108428_))
                                        (let ((_e108405108431_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl108400108428_))))
                                          (let ((_hd108404108434_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108405108431_)))
                                                (_tl108403108436_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108405108431_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl108403108436_))
                                                ((lambda (_L108439_ _L108440_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L108440_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-letrec?108390_
                                                              _L108440_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _self108386_
                                                              'letrec
                                                              _L108440_
                                                              _L108439_
                                                              '#f))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _self108386_
                                                              'letrec*
                                                              _L108440_
                                                              _L108439_
                                                              '#f)))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values108389_
                                                          _L108440_
                                                          _L108439_))))
                                                 _hd108404108434_
                                                 _hd108401108426_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g108393108410_
                                                   _g108394108413_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g108393108410_ _g108394108413_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g108393108410_ _g108394108413_)))))
                        (let ()
                          (declare (not safe))
                          (_g108393108410_ _g108394108413_))))))
            (declare (not safe))
            (_g108392108456_ _stx108387_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_hd108323_)
        (let _lp108325_ ((_rest108327_ _hd108323_))
          (let* ((_rest108328108344_ _rest108327_)
                 (_else108331108352_ (lambda () '#f)))
            (let ((_K108334108365_
                   (lambda (_rest108363_)
                     (let () (declare (not safe)) (_lp108325_ _rest108363_))))
                  (_K108333108357_ (lambda () '#t)))
              (let ((_try-match108330108360_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest108328108344_))
                           (let () (declare (not safe)) (_K108333108357_))
                           (let ()
                             (declare (not safe))
                             (_else108331108352_))))))
                (if (let () (declare (not safe)) (##pair? _rest108328108344_))
                    (let ((_tl108336108370_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest108328108344_)))
                          (_hd108335108368_
                           (let ()
                             (declare (not safe))
                             (##car _rest108328108344_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _hd108335108368_))
                          (let ((_tl108338108375_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _hd108335108368_)))
                                (_hd108337108373_
                                 (let ()
                                   (declare (not safe))
                                   (##car _hd108335108368_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd108337108373_))
                                (let ((_tl108342108378_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd108337108373_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl108342108378_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl108338108375_))
                                          (let ((_tl108340108381_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl108338108375_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _tl108340108381_))
                                                (let ((_rest108384_
                                                       _tl108336108370_))
                                                  (declare (not safe))
                                                  (_lp108325_ _rest108384_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_else108331108352_))))
                                          (let ()
                                            (declare (not safe))
                                            (_else108331108352_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else108331108352_))))
                                (let ()
                                  (declare (not safe))
                                  (_else108331108352_))))
                          (let () (declare (not safe)) (_else108331108352_))))
                    (let ()
                      (declare (not safe))
                      (_try-match108330108360_)))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_self108234_
               _form108235_
               _hd108236_
               _body108237_
               _compiled-body?108238_)
        (letrec ((_generate1108240_
                  (lambda (_bind108279_)
                    (let* ((_bind108280108291_ _bind108279_)
                           (_E108282108295_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _bind108280108291_))))
                           (_K108283108301_
                            (lambda (_expr108298_ _id108299_)
                              (let ((__tmp114623
                                     (let ()
                                       (declare (not safe))
                                       (gxc#generate-runtime-binding-id*
                                        _id108299_)))
                                    (__tmp114621
                                     (let ((__tmp114622
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self108234_
                                               _expr108298_))))
                                       (declare (not safe))
                                       (cons __tmp114622 '()))))
                                (declare (not safe))
                                (cons __tmp114623 __tmp114621)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _bind108280108291_))
                          (let ((_hd108284108304_
                                 (let ()
                                   (declare (not safe))
                                   (##car _bind108280108291_)))
                                (_tl108285108306_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _bind108280108291_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd108284108304_))
                                (let ((_hd108288108309_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd108284108304_)))
                                      (_tl108289108311_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd108284108304_))))
                                  (let ((_id108314_ _hd108288108309_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl108289108311_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl108285108306_))
                                            (let ((_hd108286108316_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl108285108306_)))
                                                  (_tl108287108318_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl108285108306_))))
                                              (let ((_expr108321_
                                                     _hd108286108316_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _tl108287108318_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K108283108301_
                                                       _expr108321_
                                                       _id108314_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E108282108295_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_E108282108295_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E108282108295_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E108282108295_))))
                          (let () (declare (not safe)) (_E108282108295_)))))))
          (let* ((_bind108242_ (map _generate1108240_ _hd108236_))
                 (_body108244_
                  (if _compiled-body?108238_
                      _body108237_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self108234_ _body108237_))))
                 (_body108276_
                  (let* ((_body108245108253_ _body108244_)
                         (_else108247108261_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (cons _body108244_ '()))))
                         (_K108249108266_
                          (lambda (_exprs108264_) _exprs108264_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _body108245108253_))
                        (let ((_hd108250108269_
                               (let ()
                                 (declare (not safe))
                                 (##car _body108245108253_)))
                              (_tl108251108271_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _body108245108253_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _hd108250108269_ 'begin))
                              (let ((_exprs108274_ _tl108251108271_))
                                (declare (not safe))
                                (_K108249108266_ _exprs108274_))
                              (let ()
                                (declare (not safe))
                                (_else108247108261_))))
                        (let () (declare (not safe)) (_else108247108261_))))))
            (let ((__tmp114624
                   (let ()
                     (declare (not safe))
                     (cons _bind108242_ _body108276_))))
              (declare (not safe))
              (cons _form108235_ __tmp114624))))))
    (define gxc#generate-runtime-quote%
      (lambda (_self108141_ _stx108142_)
        (letrec ((_generate1108144_
                  (lambda (_datum108196_)
                    (if (or (let () (declare (not safe)) (null? _datum108196_))
                            (interned-symbol? _datum108196_)
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _datum108196_))
                            (let ()
                              (declare (not safe))
                              (eof-object? _datum108196_)))
                        _datum108196_
                        (if (uninterned-symbol? _datum108196_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _datum108196_
                               '#t))
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _datum108196_))
                                (let ((__tmp114629
                                       (let ((__tmp114630 (car _datum108196_)))
                                         (declare (not safe))
                                         (_generate1108144_ __tmp114630)))
                                      (__tmp114627
                                       (let ((__tmp114628 (cdr _datum108196_)))
                                         (declare (not safe))
                                         (_generate1108144_ __tmp114628))))
                                  (declare (not safe))
                                  (cons __tmp114629 __tmp114627))
                                (if (let ()
                                      (declare (not safe))
                                      (box? _datum108196_))
                                    (let ((__tmp114625
                                           (let ((__tmp114626
                                                  (unbox _datum108196_)))
                                             (declare (not safe))
                                             (_generate1108144_ __tmp114626))))
                                      (declare (not safe))
                                      (box __tmp114625))
                                    (if (let ()
                                          (declare (not safe))
                                          (vector? _datum108196_))
                                        (vector-map
                                         _generate1108144_
                                         _datum108196_)
                                        (if (or (s8vector? _datum108196_)
                                                (let ()
                                                  (declare (not safe))
                                                  (u8vector? _datum108196_))
                                                (s16vector? _datum108196_)
                                                (u16vector? _datum108196_)
                                                (s32vector? _datum108196_)
                                                (u32vector? _datum108196_)
                                                (s64vector? _datum108196_)
                                                (u64vector? _datum108196_)
                                                (f32vector? _datum108196_)
                                                (f64vector? _datum108196_))
                                            _datum108196_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _stx108142_)))))))))))
          (let* ((_g108146108159_
                  (lambda (_g108147108156_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g108147108156_))))
                 (_g108145108193_
                  (lambda (_g108147108162_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g108147108162_))
                        (let ((_e108151108164_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g108147108162_))))
                          (let ((_hd108150108167_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108151108164_)))
                                (_tl108149108169_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108151108164_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl108149108169_))
                                (let ((_e108154108172_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl108149108169_))))
                                  (let ((_hd108153108175_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e108154108172_)))
                                        (_tl108152108177_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e108154108172_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl108152108177_))
                                        ((lambda (_L108180_)
                                           (let ((__tmp114631
                                                  (let ((__tmp114632
                                                         (let ((__tmp114633
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L108180_))))
                   (declare (not safe))
                   (_generate1108144_ __tmp114633))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114632 '()))))
                                             (declare (not safe))
                                             (cons 'quote __tmp114631)))
                                         _hd108153108175_)
                                        (let ()
                                          (declare (not safe))
                                          (_g108146108159_ _g108147108162_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g108146108159_ _g108147108162_)))))
                        (let ()
                          (declare (not safe))
                          (_g108146108159_ _g108147108162_))))))
            (declare (not safe))
            (_g108145108193_ _stx108142_)))))
    (define gxc#generate-runtime-call%
      (lambda (_self107654_ _stx107655_)
        (letrec ((_compile-call107657_
                  (lambda (_rator107881_ _rands107882_)
                    (let ((_rator107888_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self107654_ _rator107881_)))
                          (_rands107889_
                           (map (lambda (_g107883107885_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self107654_
                                     _g107883107885_)))
                                _rands107882_)))
                      (let* ((___stx113680113681_ _rator107888_)
                             (_g107892107944_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx113680113681_)))))
                        (let ((___kont113682113683_
                               (lambda (_L108068_
                                        _L108069_
                                        _L108070_
                                        _L108071_)
                                 (if (fx= (length _rands107889_)
                                          (length (let ((__tmp114638
                                                         (lambda (_g108107108110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g108108108112_)
                   (let ()
                     (declare (not safe))
                     (cons _g108107108110_ _g108108108112_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp114638
                                                            '()
                                                            _L108070_))))
                                     (let* ((_id108115_ _L108071_)
                                            (_args108124_
                                             (let ((__tmp114634
                                                    (lambda (_g108116108119_
                                                             _g108117108121_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g108116108119_
                                                              _g108117108121_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp114634
                                                       '()
                                                       _L108070_)))
                                            (_body108133_
                                             (let ((__tmp114635
                                                    (lambda (_g108125108128_
                                                             _g108126108130_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g108125108128_
                                                              _g108126108130_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp114635
                                                       '()
                                                       _L108069_)))
                                            (_init108135_
                                             (map list
                                                  _args108124_
                                                  _rands107889_)))
                                       (let ((__tmp114636
                                              (let ((__tmp114637
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _init108135_
                                                             _body108133_))))
                                                (declare (not safe))
                                                (cons _id108115_
                                                      __tmp114637))))
                                         (declare (not safe))
                                         (cons 'let __tmp114636)))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _stx107655_)))))
                              (___kont113688113689_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (cons _rator107888_ _rands107889_)))))
                          (let ((___match113747113748_
                                 (lambda (_e107900107956_
                                          _hd107899107959_
                                          _tl107898107961_
                                          _e107903107964_
                                          _hd107902107967_
                                          _tl107901107969_
                                          _e107906107972_
                                          _hd107905107975_
                                          _tl107904107977_
                                          _e107909107980_
                                          _hd107908107983_
                                          _tl107907107985_
                                          _e107912107988_
                                          _hd107911107991_
                                          _tl107910107993_
                                          _e107915107996_
                                          _hd107914107999_
                                          _tl107913108001_
                                          _e107918108004_
                                          _hd107917108007_
                                          _tl107916108009_
                                          ___splice113684113685_
                                          _target107919108012_
                                          _tl107921108014_)
                                   (letrec ((_loop107922108017_
                                             (lambda (_hd107920108020_
                                                      _arg107926108022_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd107920108020_))
                                                   (let ((_e107923108025_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd107920108020_))))
                                                     (let ((_lp-tl107925108030_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e107923108025_)))
                                                           (_lp-hd107924108028_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e107923108025_))))
                                                       (let ((__tmp114640
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _lp-hd107924108028_ _arg107926108022_))))
                 (declare (not safe))
                 (_loop107922108017_ _lp-tl107925108030_ __tmp114640))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_arg107927108033_
                                                          (reverse _arg107926108022_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _tl107916108009_))
                                                         (let ((___splice113686113687_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _tl107916108009_ '0))))
                   (let ((_tl107930108038_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice113686113687_ '1)))
                         (_target107928108036_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice113686113687_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl107930108038_))
                         (letrec ((_loop107931108041_
                                   (lambda (_hd107929108044_
                                            _body107935108046_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd107929108044_))
                                         (let ((_e107932108049_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd107929108044_))))
                                           (let ((_lp-tl107934108054_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e107932108049_)))
                                                 (_lp-hd107933108052_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e107932108049_))))
                                             (let ((__tmp114639
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd107933108052_
                                                            _body107935108046_))))
                                               (declare (not safe))
                                               (_loop107931108041_
                                                _lp-tl107934108054_
                                                __tmp114639))))
                                         (let ((_body107936108057_
                                                (reverse _body107935108046_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl107910107993_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl107904107977_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl107901107969_))
                                                       (let ((_e107939108060_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl107901107969_))))
                 (let ((_tl107937108065_
                        (let () (declare (not safe)) (##cdr _e107939108060_)))
                       (_hd107938108063_
                        (let () (declare (not safe)) (##car _e107939108060_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl107937108065_))
                       (let ((_L108068_ _hd107938108063_)
                             (_L108069_ _body107936108057_)
                             (_L108070_ _arg107927108033_)
                             (_L108071_ _hd107908107983_))
                         (if (let ()
                               (declare (not safe))
                               (eq? _L108071_ _L108068_))
                             (___kont113682113683_
                              _L108068_
                              _L108069_
                              _L108070_
                              _L108071_)
                             (___kont113688113689_)))
                       (___kont113688113689_))))
               (___kont113688113689_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont113688113689_))
                                               (___kont113688113689_)))))))
                           (let ()
                             (declare (not safe))
                             (_loop107931108041_ _target107928108036_ '())))
                         (___kont113688113689_))))
                 (___kont113688113689_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ()
                                       (declare (not safe))
                                       (_loop107922108017_
                                        _target107919108012_
                                        '()))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? ___stx113680113681_))
                                (let ((_e107900107956_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e ___stx113680113681_))))
                                  (let ((_tl107898107961_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107900107956_)))
                                        (_hd107899107959_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107900107956_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd107899107959_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _hd107899107959_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl107898107961_))
                                                (let ((_e107903107964_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl107898107961_))))
                                                  (let ((_tl107901107969_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e107903107964_)))
                                                        (_hd107902107967_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e107903107964_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd107902107967_))
                                                        (let ((_e107906107972_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd107902107967_))))
                  (let ((_tl107904107977_
                         (let () (declare (not safe)) (##cdr _e107906107972_)))
                        (_hd107905107975_
                         (let ()
                           (declare (not safe))
                           (##car _e107906107972_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd107905107975_))
                        (let ((_e107909107980_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd107905107975_))))
                          (let ((_tl107907107985_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107909107980_)))
                                (_hd107908107983_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107909107980_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl107907107985_))
                                (let ((_e107912107988_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl107907107985_))))
                                  (let ((_tl107910107993_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107912107988_)))
                                        (_hd107911107991_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107912107988_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd107911107991_))
                                        (let ((_e107915107996_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd107911107991_))))
                                          (let ((_tl107913108001_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107915107996_)))
                                                (_hd107914107999_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107915107996_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd107914107999_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _hd107914107999_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl107913108001_))
                                                        (let ((_e107918108004_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl107913108001_))))
                  (let ((_tl107916108009_
                         (let () (declare (not safe)) (##cdr _e107918108004_)))
                        (_hd107917108007_
                         (let ()
                           (declare (not safe))
                           (##car _e107918108004_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _hd107917108007_))
                        (let ((___splice113684113685_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _hd107917108007_
                                  '0))))
                          (let ((_tl107921108014_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice113684113685_ '1)))
                                (_target107919108012_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice113684113685_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl107921108014_))
                                (___match113747113748_
                                 _e107900107956_
                                 _hd107899107959_
                                 _tl107898107961_
                                 _e107903107964_
                                 _hd107902107967_
                                 _tl107901107969_
                                 _e107906107972_
                                 _hd107905107975_
                                 _tl107904107977_
                                 _e107909107980_
                                 _hd107908107983_
                                 _tl107907107985_
                                 _e107912107988_
                                 _hd107911107991_
                                 _tl107910107993_
                                 _e107915107996_
                                 _hd107914107999_
                                 _tl107913108001_
                                 _e107918108004_
                                 _hd107917108007_
                                 _tl107916108009_
                                 ___splice113684113685_
                                 _target107919108012_
                                 _tl107921108014_)
                                (___kont113688113689_))))
                        (___kont113688113689_))))
                (___kont113688113689_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont113688113689_))
                                                (___kont113688113689_))))
                                        (___kont113688113689_))))
                                (___kont113688113689_))))
                        (___kont113688113689_))))
                (___kont113688113689_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont113688113689_))
                                            (___kont113688113689_))
                                        (___kont113688113689_))))
                                (___kont113688113689_)))))))))
          (let* ((_g107659107673_
                  (lambda (_g107660107670_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g107660107670_))))
                 (_g107658107878_
                  (lambda (_g107660107676_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g107660107676_))
                        (let ((_e107665107678_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g107660107676_))))
                          (let ((_hd107664107681_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107665107678_)))
                                (_tl107663107683_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107665107678_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl107663107683_))
                                (let ((_e107668107686_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl107663107683_))))
                                  (let ((_hd107667107689_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107668107686_)))
                                        (_tl107666107691_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107668107686_))))
                                    ((lambda (_L107694_ _L107695_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gxc#current-compile-decls-unsafe?))
                                           (let ()
                                             (declare (not safe))
                                             (_compile-call107657_
                                              _L107695_
                                              _L107694_))
                                           (let* ((___stx113796113797_
                                                   _L107695_)
                                                  (_g107710107722_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx113796113797_)))))
                                             (let ((___kont113798113799_
                                                    (lambda ()
                                                      (let ((_f107752_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _self107654_ _L107695_))))
                (if (let ((__tmp114655 (symbol->string _f107752_)))
                      (declare (not safe))
                      (string-prefix? '"##" __tmp114655))
                    (let _lp107754_ ((_rest107757_ (reverse _L107694_))
                                     (_bind107759_ '())
                                     (_args107760_ '()))
                      (let* ((_rest107761107769_ _rest107757_)
                             (_else107763107777_
                              (lambda ()
                                (let ((__tmp114641
                                       (let ((__tmp114642
                                              (let ((__tmp114643
                                                     (let ((__tmp114644
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _f107752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _args107760_))))
               (declare (not safe))
               (cons __tmp114644 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(declare (not safe))
                                                      __tmp114643))))
                                         (declare (not safe))
                                         (cons _bind107759_ __tmp114642))))
                                  (declare (not safe))
                                  (cons 'let __tmp114641))))
                             (_K107765107863_
                              (lambda (_rest107780_ _e107781_)
                                (let* ((___stx113750113751_ _e107781_)
                                       (_g107786107804_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx113750113751_)))))
                                  (let ((___kont113752113753_
                                         (lambda ()
                                           (let ((__tmp114645
                                                  (let ((__tmp114646
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _e107781_))))
                                                    (declare (not safe))
                                                    (cons __tmp114646
                                                          _args107760_))))
                                             (declare (not safe))
                                             (_lp107754_
                                              _rest107780_
                                              _bind107759_
                                              __tmp114645))))
                                        (___kont113754113755_
                                         (lambda ()
                                           (let ((__tmp114647
                                                  (let ((__tmp114648
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _e107781_))))
                                                    (declare (not safe))
                                                    (cons __tmp114648
                                                          _args107760_))))
                                             (declare (not safe))
                                             (_lp107754_
                                              _rest107780_
                                              _bind107759_
                                              __tmp114647))))
                                        (___kont113756113757_
                                         (lambda ()
                                           (let ((_tmp107811_
                                                  (let ((__tmp114649
                                                         (gensym '__tmp)))
                                                    (declare (not safe))
                                                    (make-symbol__0
                                                     __tmp114649))))
                                             (let ((__tmp114651
                                                    (let ((__tmp114652
                                                           (let ((__tmp114653
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114654
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _e107781_))))
                            (declare (not safe))
                            (cons __tmp114654 '()))))
                     (declare (not safe))
                     (cons _tmp107811_ __tmp114653))))
              (declare (not safe))
              (cons __tmp114652 _bind107759_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp114650
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _tmp107811_
                                                            _args107760_))))
                                               (declare (not safe))
                                               (_lp107754_
                                                _rest107780_
                                                __tmp114651
                                                __tmp114650))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx113750113751_))
                                        (let ((_e107790107842_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx113750113751_))))
                                          (let ((_tl107788107847_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107790107842_)))
                                                (_hd107789107845_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107790107842_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd107789107845_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd107789107845_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl107788107847_))
                                                        (let ((_e107793107850_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl107788107847_))))
                  (let ((_tl107791107855_
                         (let () (declare (not safe)) (##cdr _e107793107850_)))
                        (_hd107792107853_
                         (let ()
                           (declare (not safe))
                           (##car _e107793107850_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl107791107855_))
                        (___kont113752113753_)
                        (___kont113756113757_))))
                (___kont113756113757_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#quote
                                                           _hd107789107845_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl107788107847_))
                                                            (let ((_e107799107827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl107788107847_))))
                      (let ((_tl107797107832_
                             (let ()
                               (declare (not safe))
                               (##cdr _e107799107827_)))
                            (_hd107798107830_
                             (let ()
                               (declare (not safe))
                               (##car _e107799107827_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl107797107832_))
                            (___kont113754113755_)
                            (___kont113756113757_))))
                    (___kont113756113757_))
                (___kont113756113757_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont113756113757_))))
                                        (___kont113756113757_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest107761107769_))
                            (let ((_hd107766107866_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest107761107769_)))
                                  (_tl107767107868_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest107761107769_))))
                              (let* ((_e107871_ _hd107766107866_)
                                     (_rest107873_ _tl107767107868_))
                                (declare (not safe))
                                (_K107765107863_ _rest107873_ _e107871_)))
                            (let ()
                              (declare (not safe))
                              (_else107763107777_)))))
                    (let ()
                      (declare (not safe))
                      (_compile-call107657_ _L107695_ _L107694_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont113800113801_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (_compile-call107657_
                                                         _L107695_
                                                         _L107694_)))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      ___stx113796113797_))
                                                   (let ((_e107714107734_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             ___stx113796113797_))))
                                                     (let ((_tl107712107739_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e107714107734_)))
                                                           (_hd107713107737_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e107714107734_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#identifier?
                                                              _hd107713107737_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-eq? '%#ref _hd107713107737_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl107712107739_))
                           (let ((_e107717107742_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl107712107739_))))
                             (let ((_tl107715107747_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e107717107742_)))
                                   (_hd107716107745_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e107717107742_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl107715107747_))
                                   (___kont113798113799_)
                                   (___kont113800113801_))))
                           (___kont113800113801_))
                       (___kont113800113801_))
                   (___kont113800113801_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont113800113801_))))))
                                     _tl107666107691_
                                     _hd107667107689_)))
                                (let ()
                                  (declare (not safe))
                                  (_g107659107673_ _g107660107676_)))))
                        (let ()
                          (declare (not safe))
                          (_g107659107673_ _g107660107676_))))))
            (declare (not safe))
            (_g107658107878_ _stx107655_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_self107441_ _stx107442_)
        (let* ((___stx113868113869_ _stx107442_)
               (_g107445107465_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx113868113869_)))))
          (let ((___kont113870113871_
                 (lambda (_L107509_ _L107510_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-decls-unsafe?))
                       (let ()
                         (declare (not safe))
                         (gxc#generate-runtime-call% _self107441_ _stx107442_))
                       (let ((_f107528_
                              (let ((__tmp114656
                                     (let ((__tmp114658
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               '%#ref)))
                                           (__tmp114657
                                            (let ()
                                              (declare (not safe))
                                              (cons _L107510_ '()))))
                                       (declare (not safe))
                                       (cons __tmp114658 __tmp114657))))
                                (declare (not safe))
                                (gxc#compile-e__1 _self107441_ __tmp114656))))
                         (let _lp107530_ ((_rest107533_ (reverse _L107509_))
                                          (_bind107535_ '())
                                          (_args107536_ '()))
                           (let* ((_rest107537107545_ _rest107533_)
                                  (_else107539107553_
                                   (lambda ()
                                     (let ((__tmp114659
                                            (let ((__tmp114660
                                                   (let ((__tmp114661
                                                          (let ((__tmp114662
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _f107528_ _args107536_))))
                    (declare (not safe))
                    (cons __tmp114662 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '(declare
                                                              (not safe))
                                                           __tmp114661))))
                                              (declare (not safe))
                                              (cons _bind107535_
                                                    __tmp114660))))
                                       (declare (not safe))
                                       (cons 'let __tmp114659))))
                                  (_K107541107639_
                                   (lambda (_rest107556_ _e107557_)
                                     (let* ((___stx113822113823_ _e107557_)
                                            (_g107562107580_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  ___stx113822113823_)))))
                                       (let ((___kont113824113825_
                                              (lambda ()
                                                (let ((__tmp114663
                                                       (let ((__tmp114664
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _e107557_))))
                 (declare (not safe))
                 (cons __tmp114664 _args107536_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp107530_
                                                   _rest107556_
                                                   _bind107535_
                                                   __tmp114663))))
                                             (___kont113826113827_
                                              (lambda ()
                                                (let ((__tmp114665
                                                       (let ((__tmp114666
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _e107557_))))
                 (declare (not safe))
                 (cons __tmp114666 _args107536_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp107530_
                                                   _rest107556_
                                                   _bind107535_
                                                   __tmp114665))))
                                             (___kont113828113829_
                                              (lambda ()
                                                (let ((_tmp107587_
                                                       (let ((__tmp114667
                                                              (gensym '__tmp)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp114667))))
                                                  (let ((__tmp114669
                                                         (let ((__tmp114670
                                                                (let ((__tmp114671
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114672
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__0 _e107557_))))
                                 (declare (not safe))
                                 (cons __tmp114672 '()))))
                          (declare (not safe))
                          (cons _tmp107587_ __tmp114671))))
                   (declare (not safe))
                   (cons __tmp114670 _bind107535_)))
                (__tmp114668
                 (let ()
                   (declare (not safe))
                   (cons _tmp107587_ _args107536_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_lp107530_
                                                     _rest107556_
                                                     __tmp114669
                                                     __tmp114668))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                ___stx113822113823_))
                                             (let ((_e107566107618_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       ___stx113822113823_))))
                                               (let ((_tl107564107623_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e107566107618_)))
                                                     (_hd107565107621_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e107566107618_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _hd107565107621_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _hd107565107621_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl107564107623_))
                     (let ((_e107569107626_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl107564107623_))))
                       (let ((_tl107567107631_
                              (let ()
                                (declare (not safe))
                                (##cdr _e107569107626_)))
                             (_hd107568107629_
                              (let ()
                                (declare (not safe))
                                (##car _e107569107626_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl107567107631_))
                             (___kont113824113825_)
                             (___kont113828113829_))))
                     (___kont113828113829_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _hd107565107621_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _tl107564107623_))
                         (let ((_e107575107603_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _tl107564107623_))))
                           (let ((_tl107573107608_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e107575107603_)))
                                 (_hd107574107606_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e107575107603_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _tl107573107608_))
                                 (___kont113826113827_)
                                 (___kont113828113829_))))
                         (___kont113828113829_))
                     (___kont113828113829_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont113828113829_))))
                                             (___kont113828113829_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _rest107537107545_))
                                 (let ((_hd107542107642_
                                        (let ()
                                          (declare (not safe))
                                          (##car _rest107537107545_)))
                                       (_tl107543107644_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _rest107537107545_))))
                                   (let* ((_e107647_ _hd107542107642_)
                                          (_rest107649_ _tl107543107644_))
                                     (declare (not safe))
                                     (_K107541107639_ _rest107649_ _e107647_)))
                                 (let ()
                                   (declare (not safe))
                                   (_else107539107553_)))))))))
                (___kont113872113873_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#generate-runtime-call% _self107441_ _stx107442_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx113868113869_))
                (let ((_e107451107477_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx113868113869_))))
                  (let ((_tl107449107482_
                         (let () (declare (not safe)) (##cdr _e107451107477_)))
                        (_hd107450107480_
                         (let ()
                           (declare (not safe))
                           (##car _e107451107477_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl107449107482_))
                        (let ((_e107454107485_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl107449107482_))))
                          (let ((_tl107452107490_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107454107485_)))
                                (_hd107453107488_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107454107485_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd107453107488_))
                                (let ((_e107457107493_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd107453107488_))))
                                  (let ((_tl107455107498_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107457107493_)))
                                        (_hd107456107496_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107457107493_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd107456107496_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd107456107496_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl107455107498_))
                                                (let ((_e107460107501_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl107455107498_))))
                                                  (let ((_tl107458107506_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e107460107501_)))
                                                        (_hd107459107504_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e107460107501_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl107458107506_))
                                                        (___kont113870113871_
                                                         _tl107452107490_
                                                         _hd107459107504_)
                                                        (___kont113872113873_))))
                                                (___kont113872113873_))
                                            (___kont113872113873_))
                                        (___kont113872113873_))))
                                (___kont113872113873_))))
                        (___kont113872113873_))))
                (___kont113872113873_))))))
    (define gxc#generate-runtime-if%
      (lambda (_self107253_ _stx107254_)
        (letrec ((_simplify107256_
                  (lambda (_code107341_)
                    (let* ((_code107342107360_ _code107341_)
                           (_else107344107368_ (lambda () _code107341_))
                           (_K107346107404_
                            (lambda (_expr107371_ _test107372_)
                              (let* ((_expr107373107381_ _expr107371_)
                                     (_else107375107389_
                                      (lambda ()
                                        (let ((__tmp114673
                                               (let ((__tmp114674
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _expr107371_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _test107372_
                                                       __tmp114674))))
                                          (declare (not safe))
                                          (cons 'and __tmp114673))))
                                     (_K107377107394_
                                      (lambda (_exprs107392_)
                                        (let ((__tmp114675
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _test107372_
                                                       _exprs107392_))))
                                          (declare (not safe))
                                          (cons 'and __tmp114675)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _expr107373107381_))
                                    (let ((_hd107378107397_
                                           (let ()
                                             (declare (not safe))
                                             (##car _expr107373107381_)))
                                          (_tl107379107399_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _expr107373107381_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd107378107397_ 'and))
                                          (let ((_exprs107402_
                                                 _tl107379107399_))
                                            (declare (not safe))
                                            (_K107377107394_ _exprs107402_))
                                          (let ()
                                            (declare (not safe))
                                            (_else107375107389_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else107375107389_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _code107342107360_))
                          (let ((_hd107347107407_
                                 (let ()
                                   (declare (not safe))
                                   (##car _code107342107360_)))
                                (_tl107348107409_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _code107342107360_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _hd107347107407_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl107348107409_))
                                    (let ((_hd107349107412_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl107348107409_)))
                                          (_tl107350107414_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl107348107409_))))
                                      (let ((_test107417_ _hd107349107412_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl107350107414_))
                                            (let ((_hd107351107419_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl107350107414_)))
                                                  (_tl107352107421_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl107350107414_))))
                                              (let ((_expr107424_
                                                     _hd107351107419_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl107352107421_))
                                                    (let ((_hd107353107426_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl107352107421_)))
                                                          (_tl107354107428_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl107352107421_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _hd107353107426_))
                                                          (let ((_hd107355107431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _hd107353107426_)))
                        (_tl107356107433_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd107353107426_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd107355107431_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl107356107433_))
                            (let ((_hd107357107436_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl107356107433_)))
                                  (_tl107358107438_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl107356107433_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd107357107436_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl107358107438_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl107354107428_))
                                          (let ()
                                            (declare (not safe))
                                            (_K107346107404_
                                             _expr107424_
                                             _test107417_))
                                          (let ()
                                            (declare (not safe))
                                            (_else107344107368_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else107344107368_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else107344107368_))))
                            (let () (declare (not safe)) (_else107344107368_)))
                        (let () (declare (not safe)) (_else107344107368_))))
                  (let () (declare (not safe)) (_else107344107368_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else107344107368_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_else107344107368_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_else107344107368_)))
                                (let ()
                                  (declare (not safe))
                                  (_else107344107368_))))
                          (let ()
                            (declare (not safe))
                            (_else107344107368_)))))))
          (let* ((_g107258107279_
                  (lambda (_g107259107276_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g107259107276_))))
                 (_g107257107338_
                  (lambda (_g107259107282_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g107259107282_))
                        (let ((_e107265107284_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g107259107282_))))
                          (let ((_hd107264107287_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107265107284_)))
                                (_tl107263107289_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107265107284_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl107263107289_))
                                (let ((_e107268107292_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl107263107289_))))
                                  (let ((_hd107267107295_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107268107292_)))
                                        (_tl107266107297_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107268107292_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl107266107297_))
                                        (let ((_e107271107300_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl107266107297_))))
                                          (let ((_hd107270107303_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107271107300_)))
                                                (_tl107269107305_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107271107300_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl107269107305_))
                                                (let ((_e107274107308_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl107269107305_))))
                                                  (let ((_hd107273107311_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e107274107308_)))
                                                        (_tl107272107313_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e107274107308_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl107272107313_))
                                                        ((lambda (_L107316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L107317_
                          _L107318_)
                   (if (gxc#current-compile-boolean-context)
                       (let ((__tmp114683
                              (let ((__tmp114684
                                     (let ((__tmp114689
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self107253_
                                               _L107318_)))
                                           (__tmp114685
                                            (let ((__tmp114688
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self107253_
                                                      _L107317_)))
                                                  (__tmp114686
                                                   (let ((__tmp114687
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self107253_
                                                             _L107316_))))
                                                     (declare (not safe))
                                                     (cons __tmp114687 '()))))
                                              (declare (not safe))
                                              (cons __tmp114688 __tmp114686))))
                                       (declare (not safe))
                                       (cons __tmp114689 __tmp114685))))
                                (declare (not safe))
                                (cons 'if __tmp114684))))
                         (declare (not safe))
                         (_simplify107256_ __tmp114683))
                       (let ((__tmp114676
                              (let ((__tmp114681
                                     (let ((__tmp114682
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self107253_
                                                 _L107318_)))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp114682
                                        gxc#current-compile-boolean-context
                                        '#t)))
                                    (__tmp114677
                                     (let ((__tmp114680
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self107253_
                                               _L107317_)))
                                           (__tmp114678
                                            (let ((__tmp114679
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self107253_
                                                      _L107316_))))
                                              (declare (not safe))
                                              (cons __tmp114679 '()))))
                                       (declare (not safe))
                                       (cons __tmp114680 __tmp114678))))
                                (declare (not safe))
                                (cons __tmp114681 __tmp114677))))
                         (declare (not safe))
                         (cons 'if __tmp114676))))
                 _hd107273107311_
                 _hd107270107303_
                 _hd107267107295_)
                (let ()
                  (declare (not safe))
                  (_g107258107279_ _g107259107282_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g107258107279_
                                                   _g107259107282_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g107258107279_ _g107259107282_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g107258107279_ _g107259107282_)))))
                        (let ()
                          (declare (not safe))
                          (_g107258107279_ _g107259107282_))))))
            (declare (not safe))
            (_g107257107338_ _stx107254_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_self107201_ _stx107202_)
        (let* ((_g107204107217_
                (lambda (_g107205107214_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g107205107214_))))
               (_g107203107250_
                (lambda (_g107205107220_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g107205107220_))
                      (let ((_e107209107222_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g107205107220_))))
                        (let ((_hd107208107225_
                               (let ()
                                 (declare (not safe))
                                 (##car _e107209107222_)))
                              (_tl107207107227_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e107209107222_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl107207107227_))
                              (let ((_e107212107230_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl107207107227_))))
                                (let ((_hd107211107233_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e107212107230_)))
                                      (_tl107210107235_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e107212107230_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl107210107235_))
                                      ((lambda (_L107238_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _L107238_)))
                                       _hd107211107233_)
                                      (let ()
                                        (declare (not safe))
                                        (_g107204107217_ _g107205107220_)))))
                              (let ()
                                (declare (not safe))
                                (_g107204107217_ _g107205107220_)))))
                      (let ()
                        (declare (not safe))
                        (_g107204107217_ _g107205107220_))))))
          (declare (not safe))
          (_g107203107250_ _stx107202_))))
    (define gxc#generate-runtime-setq%
      (lambda (_self107133_ _stx107134_)
        (let* ((_g107136107153_
                (lambda (_g107137107150_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g107137107150_))))
               (_g107135107198_
                (lambda (_g107137107156_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g107137107156_))
                      (let ((_e107142107158_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g107137107156_))))
                        (let ((_hd107141107161_
                               (let ()
                                 (declare (not safe))
                                 (##car _e107142107158_)))
                              (_tl107140107163_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e107142107158_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl107140107163_))
                              (let ((_e107145107166_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl107140107163_))))
                                (let ((_hd107144107169_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e107145107166_)))
                                      (_tl107143107171_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e107145107166_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl107143107171_))
                                      (let ((_e107148107174_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl107143107171_))))
                                        (let ((_hd107147107177_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e107148107174_)))
                                              (_tl107146107179_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e107148107174_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl107146107179_))
                                              ((lambda (_L107182_ _L107183_)
                                                 (let ((__tmp114690
                                                        (let ((__tmp114693
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-binding-id _L107183_)))
                      (__tmp114691
                       (let ((__tmp114692
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1 _self107133_ _L107182_))))
                         (declare (not safe))
                         (cons __tmp114692 '()))))
                  (declare (not safe))
                  (cons __tmp114693 __tmp114691))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'set! __tmp114690)))
                                               _hd107147107177_
                                               _hd107144107169_)
                                              (let ()
                                                (declare (not safe))
                                                (_g107136107153_
                                                 _g107137107156_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g107136107153_ _g107137107156_)))))
                              (let ()
                                (declare (not safe))
                                (_g107136107153_ _g107137107156_)))))
                      (let ()
                        (declare (not safe))
                        (_g107136107153_ _g107137107156_))))))
          (declare (not safe))
          (_g107135107198_ _stx107134_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_self106944_ _stx106945_)
        (let* ((_g106947106964_
                (lambda (_g106948106961_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106948106961_))))
               (_g106946107130_
                (lambda (_g106948106967_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106948106967_))
                      (let ((_e106953106969_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106948106967_))))
                        (let ((_hd106952106972_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106953106969_)))
                              (_tl106951106974_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106953106969_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106951106974_))
                              (let ((_e106956106977_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106951106974_))))
                                (let ((_hd106955106980_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106956106977_)))
                                      (_tl106954106982_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106956106977_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106954106982_))
                                      (let ((_e106959106985_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106954106982_))))
                                        (let ((_hd106958106988_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106959106985_)))
                                              (_tl106957106990_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106959106985_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl106957106990_))
                                              ((lambda (_L106993_ _L106994_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (let ((__tmp114709
                                                            (let ((__tmp114712
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self106944_ _L106993_)))
                          (__tmp114710
                           (let ((__tmp114711
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self106944_
                                     _L106994_))))
                             (declare (not safe))
                             (cons __tmp114711 '()))))
                      (declare (not safe))
                      (cons __tmp114712 __tmp114710))))
               (declare (not safe))
               (cons '##structure-instance-of? __tmp114709))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp107009_ ((_rest107012_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114708
                                      (let ()
                                        (declare (not safe))
                                        (cons _L106993_ '()))))
                                 (declare (not safe))
                                 (cons _L106994_ __tmp114708)))
                              (_bind107014_ '())
                              (_args107015_ '()))
               (let* ((_rest107016107024_ _rest107012_)
                      (_else107018107032_
                       (lambda ()
                         (let ((__tmp114694
                                (let ((__tmp114695
                                       (let ((__tmp114696
                                              (let ((__tmp114697
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '##structure-instance-of?
                                                             _args107015_))))
                                                (declare (not safe))
                                                (cons __tmp114697 '()))))
                                         (declare (not safe))
                                         (cons '(declare (not safe))
                                               __tmp114696))))
                                  (declare (not safe))
                                  (cons _bind107014_ __tmp114695))))
                           (declare (not safe))
                           (cons 'let __tmp114694))))
                      (_K107020107118_
                       (lambda (_rest107035_ _e107036_)
                         (let* ((___stx113906113907_ _e107036_)
                                (_g107041107059_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx113906113907_)))))
                           (let ((___kont113908113909_
                                  (lambda ()
                                    (let ((__tmp114698
                                           (let ((__tmp114699
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e107036_))))
                                             (declare (not safe))
                                             (cons __tmp114699 _args107015_))))
                                      (declare (not safe))
                                      (_lp107009_
                                       _rest107035_
                                       _bind107014_
                                       __tmp114698))))
                                 (___kont113910113911_
                                  (lambda ()
                                    (let ((__tmp114700
                                           (let ((__tmp114701
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e107036_))))
                                             (declare (not safe))
                                             (cons __tmp114701 _args107015_))))
                                      (declare (not safe))
                                      (_lp107009_
                                       _rest107035_
                                       _bind107014_
                                       __tmp114700))))
                                 (___kont113912113913_
                                  (lambda ()
                                    (let ((_tmp107066_
                                           (let ((__tmp114702 (gensym '__tmp)))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp114702))))
                                      (let ((__tmp114704
                                             (let ((__tmp114705
                                                    (let ((__tmp114706
                                                           (let ((__tmp114707
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e107036_))))
                     (declare (not safe))
                     (cons __tmp114707 '()))))
              (declare (not safe))
              (cons _tmp107066_ __tmp114706))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114705
                                                     _bind107014_)))
                                            (__tmp114703
                                             (let ()
                                               (declare (not safe))
                                               (cons _tmp107066_
                                                     _args107015_))))
                                        (declare (not safe))
                                        (_lp107009_
                                         _rest107035_
                                         __tmp114704
                                         __tmp114703))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx113906113907_))
                                 (let ((_e107045107097_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx113906113907_))))
                                   (let ((_tl107043107102_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e107045107097_)))
                                         (_hd107044107100_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e107045107097_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _hd107044107100_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _hd107044107100_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl107043107102_))
                                                 (let ((_e107048107105_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl107043107102_))))
                                                   (let ((_tl107046107110_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e107048107105_)))
                                                         (_hd107047107108_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e107048107105_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl107046107110_))
                                                         (___kont113908113909_)
                                                         (___kont113912113913_))))
                                                 (___kont113912113913_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _hd107044107100_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl107043107102_))
                                                     (let ((_e107054107082_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl107043107102_))))
                                                       (let ((_tl107052107087_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e107054107082_)))
                     (_hd107053107085_
                      (let () (declare (not safe)) (##car _e107054107082_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl107052107087_))
                     (___kont113910113911_)
                     (___kont113912113913_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont113912113913_))
                                                 (___kont113912113913_)))
                                         (___kont113912113913_))))
                                 (___kont113912113913_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest107016107024_))
                     (let ((_hd107021107121_
                            (let ()
                              (declare (not safe))
                              (##car _rest107016107024_)))
                           (_tl107022107123_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest107016107024_))))
                       (let* ((_e107126_ _hd107021107121_)
                              (_rest107128_ _tl107022107123_))
                         (declare (not safe))
                         (_K107020107118_ _rest107128_ _e107126_)))
                     (let () (declare (not safe)) (_else107018107032_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd106958106988_
                                               _hd106955106980_)
                                              (let ()
                                                (declare (not safe))
                                                (_g106947106964_
                                                 _g106948106967_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106947106964_ _g106948106967_)))))
                              (let ()
                                (declare (not safe))
                                (_g106947106964_ _g106948106967_)))))
                      (let ()
                        (declare (not safe))
                        (_g106947106964_ _g106948106967_))))))
          (declare (not safe))
          (_g106946107130_ _stx106945_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_self106755_ _stx106756_)
        (let* ((_g106758106775_
                (lambda (_g106759106772_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106759106772_))))
               (_g106757106941_
                (lambda (_g106759106778_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106759106778_))
                      (let ((_e106764106780_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106759106778_))))
                        (let ((_hd106763106783_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106764106780_)))
                              (_tl106762106785_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106764106780_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106762106785_))
                              (let ((_e106767106788_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106762106785_))))
                                (let ((_hd106766106791_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106767106788_)))
                                      (_tl106765106793_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106767106788_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106765106793_))
                                      (let ((_e106770106796_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106765106793_))))
                                        (let ((_hd106769106799_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106770106796_)))
                                              (_tl106768106801_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106770106796_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl106768106801_))
                                              ((lambda (_L106804_ _L106805_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (let ((__tmp114728
                                                            (let ((__tmp114731
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self106755_ _L106804_)))
                          (__tmp114729
                           (let ((__tmp114730
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self106755_
                                     _L106805_))))
                             (declare (not safe))
                             (cons __tmp114730 '()))))
                      (declare (not safe))
                      (cons __tmp114731 __tmp114729))))
               (declare (not safe))
               (cons '##structure-direct-instance-of? __tmp114728))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp106820_ ((_rest106823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114727
                                      (let ()
                                        (declare (not safe))
                                        (cons _L106804_ '()))))
                                 (declare (not safe))
                                 (cons _L106805_ __tmp114727)))
                              (_bind106825_ '())
                              (_args106826_ '()))
               (let* ((_rest106827106835_ _rest106823_)
                      (_else106829106843_
                       (lambda ()
                         (let ((__tmp114713
                                (let ((__tmp114714
                                       (let ((__tmp114715
                                              (let ((__tmp114716
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '##structure-direct-instance-of?
                                                             _args106826_))))
                                                (declare (not safe))
                                                (cons __tmp114716 '()))))
                                         (declare (not safe))
                                         (cons '(declare (not safe))
                                               __tmp114715))))
                                  (declare (not safe))
                                  (cons _bind106825_ __tmp114714))))
                           (declare (not safe))
                           (cons 'let __tmp114713))))
                      (_K106831106929_
                       (lambda (_rest106846_ _e106847_)
                         (let* ((___stx113952113953_ _e106847_)
                                (_g106852106870_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx113952113953_)))))
                           (let ((___kont113954113955_
                                  (lambda ()
                                    (let ((__tmp114717
                                           (let ((__tmp114718
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e106847_))))
                                             (declare (not safe))
                                             (cons __tmp114718 _args106826_))))
                                      (declare (not safe))
                                      (_lp106820_
                                       _rest106846_
                                       _bind106825_
                                       __tmp114717))))
                                 (___kont113956113957_
                                  (lambda ()
                                    (let ((__tmp114719
                                           (let ((__tmp114720
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e106847_))))
                                             (declare (not safe))
                                             (cons __tmp114720 _args106826_))))
                                      (declare (not safe))
                                      (_lp106820_
                                       _rest106846_
                                       _bind106825_
                                       __tmp114719))))
                                 (___kont113958113959_
                                  (lambda ()
                                    (let ((_tmp106877_
                                           (let ((__tmp114721 (gensym '__tmp)))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp114721))))
                                      (let ((__tmp114723
                                             (let ((__tmp114724
                                                    (let ((__tmp114725
                                                           (let ((__tmp114726
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e106847_))))
                     (declare (not safe))
                     (cons __tmp114726 '()))))
              (declare (not safe))
              (cons _tmp106877_ __tmp114725))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114724
                                                     _bind106825_)))
                                            (__tmp114722
                                             (let ()
                                               (declare (not safe))
                                               (cons _tmp106877_
                                                     _args106826_))))
                                        (declare (not safe))
                                        (_lp106820_
                                         _rest106846_
                                         __tmp114723
                                         __tmp114722))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx113952113953_))
                                 (let ((_e106856106908_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx113952113953_))))
                                   (let ((_tl106854106913_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e106856106908_)))
                                         (_hd106855106911_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e106856106908_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _hd106855106911_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _hd106855106911_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl106854106913_))
                                                 (let ((_e106859106916_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl106854106913_))))
                                                   (let ((_tl106857106921_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e106859106916_)))
                                                         (_hd106858106919_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e106859106916_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl106857106921_))
                                                         (___kont113954113955_)
                                                         (___kont113958113959_))))
                                                 (___kont113958113959_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _hd106855106911_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl106854106913_))
                                                     (let ((_e106865106893_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl106854106913_))))
                                                       (let ((_tl106863106898_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e106865106893_)))
                     (_hd106864106896_
                      (let () (declare (not safe)) (##car _e106865106893_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl106863106898_))
                     (___kont113956113957_)
                     (___kont113958113959_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont113958113959_))
                                                 (___kont113958113959_)))
                                         (___kont113958113959_))))
                                 (___kont113958113959_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest106827106835_))
                     (let ((_hd106832106932_
                            (let ()
                              (declare (not safe))
                              (##car _rest106827106835_)))
                           (_tl106833106934_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest106827106835_))))
                       (let* ((_e106937_ _hd106832106932_)
                              (_rest106939_ _tl106833106934_))
                         (declare (not safe))
                         (_K106831106929_ _rest106939_ _e106937_)))
                     (let () (declare (not safe)) (_else106829106843_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd106769106799_
                                               _hd106766106791_)
                                              (let ()
                                                (declare (not safe))
                                                (_g106758106775_
                                                 _g106759106778_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106758106775_ _g106759106778_)))))
                              (let ()
                                (declare (not safe))
                                (_g106758106775_ _g106759106778_)))))
                      (let ()
                        (declare (not safe))
                        (_g106758106775_ _g106759106778_))))))
          (declare (not safe))
          (_g106757106941_ _stx106756_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_self106671_ _stx106672_)
        (let* ((_g106674106695_
                (lambda (_g106675106692_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106675106692_))))
               (_g106673106752_
                (lambda (_g106675106698_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106675106698_))
                      (let ((_e106681106700_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106675106698_))))
                        (let ((_hd106680106703_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106681106700_)))
                              (_tl106679106705_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106681106700_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106679106705_))
                              (let ((_e106684106708_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106679106705_))))
                                (let ((_hd106683106711_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106684106708_)))
                                      (_tl106682106713_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106684106708_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106682106713_))
                                      (let ((_e106687106716_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106682106713_))))
                                        (let ((_hd106686106719_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106687106716_)))
                                              (_tl106685106721_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106687106716_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106685106721_))
                                              (let ((_e106690106724_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106685106721_))))
                                                (let ((_hd106689106727_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106690106724_)))
                                                      (_tl106688106729_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106690106724_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl106688106729_))
                                                      ((lambda (_L106732_
                                                                _L106733_
                                                                _L106734_)
                                                         (let ((__tmp114732
                                                                (let ((__tmp114738
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self106671_ _L106732_)))
                              (__tmp114733
                               (let ((__tmp114737
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self106671_
                                         _L106733_)))
                                     (__tmp114734
                                      (let ((__tmp114736
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self106671_
                                                _L106734_)))
                                            (__tmp114735
                                             (let ()
                                               (declare (not safe))
                                               (cons ''#f '()))))
                                        (declare (not safe))
                                        (cons __tmp114736 __tmp114735))))
                                 (declare (not safe))
                                 (cons __tmp114737 __tmp114734))))
                          (declare (not safe))
                          (cons __tmp114738 __tmp114733))))
                   (declare (not safe))
                   (cons '##structure-ref __tmp114732)))
               _hd106689106727_
               _hd106686106719_
               _hd106683106711_)
              (let ()
                (declare (not safe))
                (_g106674106695_ _g106675106698_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106674106695_
                                                 _g106675106698_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106674106695_ _g106675106698_)))))
                              (let ()
                                (declare (not safe))
                                (_g106674106695_ _g106675106698_)))))
                      (let ()
                        (declare (not safe))
                        (_g106674106695_ _g106675106698_))))))
          (declare (not safe))
          (_g106673106752_ _stx106672_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_self106571_ _stx106572_)
        (let* ((_g106574106599_
                (lambda (_g106575106596_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106575106596_))))
               (_g106573106668_
                (lambda (_g106575106602_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106575106602_))
                      (let ((_e106582106604_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106575106602_))))
                        (let ((_hd106581106607_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106582106604_)))
                              (_tl106580106609_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106582106604_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106580106609_))
                              (let ((_e106585106612_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106580106609_))))
                                (let ((_hd106584106615_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106585106612_)))
                                      (_tl106583106617_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106585106612_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106583106617_))
                                      (let ((_e106588106620_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106583106617_))))
                                        (let ((_hd106587106623_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106588106620_)))
                                              (_tl106586106625_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106588106620_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106586106625_))
                                              (let ((_e106591106628_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106586106625_))))
                                                (let ((_hd106590106631_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106591106628_)))
                                                      (_tl106589106633_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106591106628_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl106589106633_))
                                                      (let ((_e106594106636_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl106589106633_))))
                (let ((_hd106593106639_
                       (let () (declare (not safe)) (##car _e106594106636_)))
                      (_tl106592106641_
                       (let () (declare (not safe)) (##cdr _e106594106636_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl106592106641_))
                      ((lambda (_L106644_ _L106645_ _L106646_ _L106647_)
                         (let ((__tmp114739
                                (let ((__tmp114747
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self106571_
                                          _L106645_)))
                                      (__tmp114740
                                       (let ((__tmp114746
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self106571_
                                                 _L106644_)))
                                             (__tmp114741
                                              (let ((__tmp114745
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self106571_
                                                        _L106646_)))
                                                    (__tmp114742
                                                     (let ((__tmp114744
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self106571_
                                                               _L106647_)))
                                                           (__tmp114743
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons ''#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp114744 __tmp114743))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114745
                                                      __tmp114742))))
                                         (declare (not safe))
                                         (cons __tmp114746 __tmp114741))))
                                  (declare (not safe))
                                  (cons __tmp114747 __tmp114740))))
                           (declare (not safe))
                           (cons '##structure-set! __tmp114739)))
                       _hd106593106639_
                       _hd106590106631_
                       _hd106587106623_
                       _hd106584106615_)
                      (let ()
                        (declare (not safe))
                        (_g106574106599_ _g106575106602_)))))
              (let ()
                (declare (not safe))
                (_g106574106599_ _g106575106602_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106574106599_
                                                 _g106575106602_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106574106599_ _g106575106602_)))))
                              (let ()
                                (declare (not safe))
                                (_g106574106599_ _g106575106602_)))))
                      (let ()
                        (declare (not safe))
                        (_g106574106599_ _g106575106602_))))))
          (declare (not safe))
          (_g106573106668_ _stx106572_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_self106487_ _stx106488_)
        (let* ((_g106490106511_
                (lambda (_g106491106508_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106491106508_))))
               (_g106489106568_
                (lambda (_g106491106514_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106491106514_))
                      (let ((_e106497106516_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106491106514_))))
                        (let ((_hd106496106519_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106497106516_)))
                              (_tl106495106521_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106497106516_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106495106521_))
                              (let ((_e106500106524_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106495106521_))))
                                (let ((_hd106499106527_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106500106524_)))
                                      (_tl106498106529_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106500106524_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106498106529_))
                                      (let ((_e106503106532_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106498106529_))))
                                        (let ((_hd106502106535_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106503106532_)))
                                              (_tl106501106537_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106503106532_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106501106537_))
                                              (let ((_e106506106540_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106501106537_))))
                                                (let ((_hd106505106543_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106506106540_)))
                                                      (_tl106504106545_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106506106540_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl106504106545_))
                                                      ((lambda (_L106548_
                                                                _L106549_
                                                                _L106550_)
                                                         (let ((__tmp114748
                                                                (let ((__tmp114754
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self106487_ _L106548_)))
                              (__tmp114749
                               (let ((__tmp114753
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self106487_
                                         _L106549_)))
                                     (__tmp114750
                                      (let ((__tmp114752
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self106487_
                                                _L106550_)))
                                            (__tmp114751
                                             (let ()
                                               (declare (not safe))
                                               (cons ''#f '()))))
                                        (declare (not safe))
                                        (cons __tmp114752 __tmp114751))))
                                 (declare (not safe))
                                 (cons __tmp114753 __tmp114750))))
                          (declare (not safe))
                          (cons __tmp114754 __tmp114749))))
                   (declare (not safe))
                   (cons '##direct-structure-ref __tmp114748)))
               _hd106505106543_
               _hd106502106535_
               _hd106499106527_)
              (let ()
                (declare (not safe))
                (_g106490106511_ _g106491106514_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106490106511_
                                                 _g106491106514_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106490106511_ _g106491106514_)))))
                              (let ()
                                (declare (not safe))
                                (_g106490106511_ _g106491106514_)))))
                      (let ()
                        (declare (not safe))
                        (_g106490106511_ _g106491106514_))))))
          (declare (not safe))
          (_g106489106568_ _stx106488_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_self106387_ _stx106388_)
        (let* ((_g106390106415_
                (lambda (_g106391106412_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106391106412_))))
               (_g106389106484_
                (lambda (_g106391106418_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106391106418_))
                      (let ((_e106398106420_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106391106418_))))
                        (let ((_hd106397106423_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106398106420_)))
                              (_tl106396106425_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106398106420_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106396106425_))
                              (let ((_e106401106428_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106396106425_))))
                                (let ((_hd106400106431_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106401106428_)))
                                      (_tl106399106433_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106401106428_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106399106433_))
                                      (let ((_e106404106436_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106399106433_))))
                                        (let ((_hd106403106439_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106404106436_)))
                                              (_tl106402106441_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106404106436_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106402106441_))
                                              (let ((_e106407106444_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106402106441_))))
                                                (let ((_hd106406106447_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106407106444_)))
                                                      (_tl106405106449_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106407106444_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl106405106449_))
                                                      (let ((_e106410106452_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl106405106449_))))
                (let ((_hd106409106455_
                       (let () (declare (not safe)) (##car _e106410106452_)))
                      (_tl106408106457_
                       (let () (declare (not safe)) (##cdr _e106410106452_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl106408106457_))
                      ((lambda (_L106460_ _L106461_ _L106462_ _L106463_)
                         (let ((__tmp114755
                                (let ((__tmp114763
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self106387_
                                          _L106461_)))
                                      (__tmp114756
                                       (let ((__tmp114762
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self106387_
                                                 _L106460_)))
                                             (__tmp114757
                                              (let ((__tmp114761
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self106387_
                                                        _L106462_)))
                                                    (__tmp114758
                                                     (let ((__tmp114760
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self106387_
                                                               _L106463_)))
                                                           (__tmp114759
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons ''#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp114760 __tmp114759))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114761
                                                      __tmp114758))))
                                         (declare (not safe))
                                         (cons __tmp114762 __tmp114757))))
                                  (declare (not safe))
                                  (cons __tmp114763 __tmp114756))))
                           (declare (not safe))
                           (cons '##direct-structure-set! __tmp114755)))
                       _hd106409106455_
                       _hd106406106447_
                       _hd106403106439_
                       _hd106400106431_)
                      (let ()
                        (declare (not safe))
                        (_g106390106415_ _g106391106418_)))))
              (let ()
                (declare (not safe))
                (_g106390106415_ _g106391106418_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106390106415_
                                                 _g106391106418_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106390106415_ _g106391106418_)))))
                              (let ()
                                (declare (not safe))
                                (_g106390106415_ _g106391106418_)))))
                      (let ()
                        (declare (not safe))
                        (_g106390106415_ _g106391106418_))))))
          (declare (not safe))
          (_g106389106484_ _stx106388_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_self106182_ _stx106183_)
        (let* ((_g106185106206_
                (lambda (_g106186106203_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106186106203_))))
               (_g106184106384_
                (lambda (_g106186106209_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106186106209_))
                      (let ((_e106192106211_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106186106209_))))
                        (let ((_hd106191106214_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106192106211_)))
                              (_tl106190106216_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106192106211_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106190106216_))
                              (let ((_e106195106219_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106190106216_))))
                                (let ((_hd106194106222_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106195106219_)))
                                      (_tl106193106224_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106195106219_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106193106224_))
                                      (let ((_e106198106227_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106193106224_))))
                                        (let ((_hd106197106230_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106198106227_)))
                                              (_tl106196106232_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106198106227_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106196106232_))
                                              (let ((_e106201106235_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106196106232_))))
                                                (let ((_hd106200106238_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106201106235_)))
                                                      (_tl106199106240_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106201106235_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl106199106240_))
                                                      ((lambda (_L106243_
                                                                _L106244_
                                                                _L106245_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-decls-unsafe?))
                     (let ((__tmp114782
                            (let ((__tmp114788
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self106182_
                                      _L106243_)))
                                  (__tmp114783
                                   (let ((__tmp114787
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _self106182_
                                             _L106244_)))
                                         (__tmp114784
                                          (let ((__tmp114786
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self106182_
                                                    _L106245_)))
                                                (__tmp114785
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons ''#f '()))))
                                            (declare (not safe))
                                            (cons __tmp114786 __tmp114785))))
                                     (declare (not safe))
                                     (cons __tmp114787 __tmp114784))))
                              (declare (not safe))
                              (cons __tmp114788 __tmp114783))))
                       (declare (not safe))
                       (cons '##unchecked-structure-ref __tmp114782))
                     (let _lp106263_ ((_rest106266_
                                       (let ((__tmp114780
                                              (let ((__tmp114781
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L106243_ '()))))
                                                (declare (not safe))
                                                (cons _L106244_ __tmp114781))))
                                         (declare (not safe))
                                         (cons _L106245_ __tmp114780)))
                                      (_bind106268_ '())
                                      (_args106269_ '()))
                       (let* ((_rest106270106278_ _rest106266_)
                              (_else106272106286_
                               (lambda ()
                                 (let ((__tmp114764
                                        (let ((__tmp114765
                                               (let ((__tmp114766
                                                      (let ((__tmp114767
                                                             (let ((__tmp114768
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114769
                                   (let ()
                                     (declare (not safe))
                                     (cons ''#f '()))))
                              (declare (not safe))
                              (foldr1 cons __tmp114769 _args106269_))))
                       (declare (not safe))
                       (cons '##unchecked-structure-ref __tmp114768))))
                (declare (not safe))
                (cons __tmp114767 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '(declare (not safe))
                                                       __tmp114766))))
                                          (declare (not safe))
                                          (cons _bind106268_ __tmp114765))))
                                   (declare (not safe))
                                   (cons 'let __tmp114764))))
                              (_K106274106372_
                               (lambda (_rest106289_ _e106290_)
                                 (let* ((___stx113998113999_ _e106290_)
                                        (_g106295106313_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx113998113999_)))))
                                   (let ((___kont114000114001_
                                          (lambda ()
                                            (let ((__tmp114770
                                                   (let ((__tmp114771
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _e106290_))))
                                                     (declare (not safe))
                                                     (cons __tmp114771
                                                           _args106269_))))
                                              (declare (not safe))
                                              (_lp106263_
                                               _rest106289_
                                               _bind106268_
                                               __tmp114770))))
                                         (___kont114002114003_
                                          (lambda ()
                                            (let ((__tmp114772
                                                   (let ((__tmp114773
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _e106290_))))
                                                     (declare (not safe))
                                                     (cons __tmp114773
                                                           _args106269_))))
                                              (declare (not safe))
                                              (_lp106263_
                                               _rest106289_
                                               _bind106268_
                                               __tmp114772))))
                                         (___kont114004114005_
                                          (lambda ()
                                            (let ((_tmp106320_
                                                   (let ((__tmp114774
                                                          (gensym '__tmp)))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp114774))))
                                              (let ((__tmp114776
                                                     (let ((__tmp114777
                                                            (let ((__tmp114778
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114779
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__0 _e106290_))))
                             (declare (not safe))
                             (cons __tmp114779 '()))))
                      (declare (not safe))
                      (cons _tmp106320_ __tmp114778))))
               (declare (not safe))
               (cons __tmp114777 _bind106268_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp114775
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _tmp106320_
                                                             _args106269_))))
                                                (declare (not safe))
                                                (_lp106263_
                                                 _rest106289_
                                                 __tmp114776
                                                 __tmp114775))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx113998113999_))
                                         (let ((_e106299106351_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx113998113999_))))
                                           (let ((_tl106297106356_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e106299106351_)))
                                                 (_hd106298106354_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e106299106351_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd106298106354_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _hd106298106354_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _tl106297106356_))
                                                         (let ((_e106302106359_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _tl106297106356_))))
                   (let ((_tl106300106364_
                          (let ()
                            (declare (not safe))
                            (##cdr _e106302106359_)))
                         (_hd106301106362_
                          (let ()
                            (declare (not safe))
                            (##car _e106302106359_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl106300106364_))
                         (___kont114000114001_)
                         (___kont114004114005_))))
                 (___kont114004114005_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _hd106298106354_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl106297106356_))
                     (let ((_e106308106336_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl106297106356_))))
                       (let ((_tl106306106341_
                              (let ()
                                (declare (not safe))
                                (##cdr _e106308106336_)))
                             (_hd106307106339_
                              (let ()
                                (declare (not safe))
                                (##car _e106308106336_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl106306106341_))
                             (___kont114002114003_)
                             (___kont114004114005_))))
                     (___kont114004114005_))
                 (___kont114004114005_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont114004114005_))))
                                         (___kont114004114005_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest106270106278_))
                             (let ((_hd106275106375_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest106270106278_)))
                                   (_tl106276106377_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest106270106278_))))
                               (let* ((_e106380_ _hd106275106375_)
                                      (_rest106382_ _tl106276106377_))
                                 (declare (not safe))
                                 (_K106274106372_ _rest106382_ _e106380_)))
                             (let ()
                               (declare (not safe))
                               (_else106272106286_)))))))
               _hd106200106238_
               _hd106197106230_
               _hd106194106222_)
              (let ()
                (declare (not safe))
                (_g106185106206_ _g106186106209_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106185106206_
                                                 _g106186106209_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106185106206_ _g106186106209_)))))
                              (let ()
                                (declare (not safe))
                                (_g106185106206_ _g106186106209_)))))
                      (let ()
                        (declare (not safe))
                        (_g106185106206_ _g106186106209_))))))
          (declare (not safe))
          (_g106184106384_ _stx106183_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_self105961_ _stx105962_)
        (let* ((_g105964105989_
                (lambda (_g105965105986_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105965105986_))))
               (_g105963106179_
                (lambda (_g105965105992_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105965105992_))
                      (let ((_e105972105994_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105965105992_))))
                        (let ((_hd105971105997_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105972105994_)))
                              (_tl105970105999_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105972105994_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105970105999_))
                              (let ((_e105975106002_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105970105999_))))
                                (let ((_hd105974106005_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105975106002_)))
                                      (_tl105973106007_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105975106002_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl105973106007_))
                                      (let ((_e105978106010_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl105973106007_))))
                                        (let ((_hd105977106013_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e105978106010_)))
                                              (_tl105976106015_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e105978106010_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl105976106015_))
                                              (let ((_e105981106018_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl105976106015_))))
                                                (let ((_hd105980106021_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e105981106018_)))
                                                      (_tl105979106023_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e105981106018_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl105979106023_))
                                                      (let ((_e105984106026_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl105979106023_))))
                (let ((_hd105983106029_
                       (let () (declare (not safe)) (##car _e105984106026_)))
                      (_tl105982106031_
                       (let () (declare (not safe)) (##cdr _e105984106026_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl105982106031_))
                      ((lambda (_L106034_ _L106035_ _L106036_ _L106037_)
                         (if (let ()
                               (declare (not safe))
                               (gxc#current-compile-decls-unsafe?))
                             (let ((__tmp114808
                                    (let ((__tmp114816
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self105961_
                                              _L106035_)))
                                          (__tmp114809
                                           (let ((__tmp114815
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _self105961_
                                                     _L106034_)))
                                                 (__tmp114810
                                                  (let ((__tmp114814
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self105961_
                                                            _L106036_)))
                                                        (__tmp114811
                                                         (let ((__tmp114813
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _self105961_ _L106037_)))
                       (__tmp114812
                        (let () (declare (not safe)) (cons ''#f '()))))
                   (declare (not safe))
                   (cons __tmp114813 __tmp114812))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114814
                                                          __tmp114811))))
                                             (declare (not safe))
                                             (cons __tmp114815 __tmp114810))))
                                      (declare (not safe))
                                      (cons __tmp114816 __tmp114809))))
                               (declare (not safe))
                               (cons '##unchecked-structure-set! __tmp114808))
                             (let _lp106058_ ((_rest106061_
                                               (let ((__tmp114805
                                                      (let ((__tmp114806
                                                             (let ((__tmp114807
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _L106035_ '()))))
                       (declare (not safe))
                       (cons _L106034_ __tmp114807))))
                (declare (not safe))
                (cons _L106036_ __tmp114806))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L106037_ __tmp114805)))
                                              (_bind106063_ '())
                                              (_args106064_ '()))
                               (let* ((_rest106065106073_ _rest106061_)
                                      (_else106067106081_
                                       (lambda ()
                                         (let ((__tmp114789
                                                (let ((__tmp114790
                                                       (let ((__tmp114791
                                                              (let ((__tmp114792
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp114793
                                    (let ((__tmp114794
                                           (let ()
                                             (declare (not safe))
                                             (cons ''#f '()))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp114794 _args106064_))))
                               (declare (not safe))
                               (cons '##unchecked-structure-set!
                                     __tmp114793))))
                        (declare (not safe))
                        (cons __tmp114792 '()))))
                 (declare (not safe))
                 (cons '(declare (not safe)) __tmp114791))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _bind106063_
                                                        __tmp114790))))
                                           (declare (not safe))
                                           (cons 'let __tmp114789))))
                                      (_K106069106167_
                                       (lambda (_rest106084_ _e106085_)
                                         (let* ((___stx114044114045_ _e106085_)
                                                (_g106090106108_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx114044114045_)))))
                                           (let ((___kont114046114047_
                                                  (lambda ()
                                                    (let ((__tmp114795
                                                           (let ((__tmp114796
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e106085_))))
                     (declare (not safe))
                     (cons __tmp114796 _args106064_))))
              (declare (not safe))
              (_lp106058_ _rest106084_ _bind106063_ __tmp114795))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont114048114049_
                                                  (lambda ()
                                                    (let ((__tmp114797
                                                           (let ((__tmp114798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e106085_))))
                     (declare (not safe))
                     (cons __tmp114798 _args106064_))))
              (declare (not safe))
              (_lp106058_ _rest106084_ _bind106063_ __tmp114797))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont114050114051_
                                                  (lambda ()
                                                    (let ((_tmp106115_
                                                           (let ((__tmp114799
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__tmp)))
                     (declare (not safe))
                     (make-symbol__0 __tmp114799))))
              (let ((__tmp114801
                     (let ((__tmp114802
                            (let ((__tmp114803
                                   (let ((__tmp114804
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _e106085_))))
                                     (declare (not safe))
                                     (cons __tmp114804 '()))))
                              (declare (not safe))
                              (cons _tmp106115_ __tmp114803))))
                       (declare (not safe))
                       (cons __tmp114802 _bind106063_)))
                    (__tmp114800
                     (let ()
                       (declare (not safe))
                       (cons _tmp106115_ _args106064_))))
                (declare (not safe))
                (_lp106058_ _rest106084_ __tmp114801 __tmp114800))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    ___stx114044114045_))
                                                 (let ((_e106094106146_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           ___stx114044114045_))))
                                                   (let ((_tl106092106151_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e106094106146_)))
                                                         (_hd106093106149_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e106094106146_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _hd106093106149_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _hd106093106149_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _tl106092106151_))
                         (let ((_e106097106154_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _tl106092106151_))))
                           (let ((_tl106095106159_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e106097106154_)))
                                 (_hd106096106157_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e106097106154_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _tl106095106159_))
                                 (___kont114046114047_)
                                 (___kont114050114051_))))
                         (___kont114050114051_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _hd106093106149_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _tl106092106151_))
                             (let ((_e106103106131_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _tl106092106151_))))
                               (let ((_tl106101106136_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e106103106131_)))
                                     (_hd106102106134_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e106103106131_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _tl106101106136_))
                                     (___kont114048114049_)
                                     (___kont114050114051_))))
                             (___kont114050114051_))
                         (___kont114050114051_)))
                 (___kont114050114051_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont114050114051_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _rest106065106073_))
                                     (let ((_hd106070106170_
                                            (let ()
                                              (declare (not safe))
                                              (##car _rest106065106073_)))
                                           (_tl106071106172_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _rest106065106073_))))
                                       (let* ((_e106175_ _hd106070106170_)
                                              (_rest106177_ _tl106071106172_))
                                         (declare (not safe))
                                         (_K106069106167_
                                          _rest106177_
                                          _e106175_)))
                                     (let ()
                                       (declare (not safe))
                                       (_else106067106081_)))))))
                       _hd105983106029_
                       _hd105980106021_
                       _hd105977106013_
                       _hd105974106005_)
                      (let ()
                        (declare (not safe))
                        (_g105964105989_ _g105965105992_)))))
              (let ()
                (declare (not safe))
                (_g105964105989_ _g105965105992_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g105964105989_
                                                 _g105965105992_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g105964105989_ _g105965105992_)))))
                              (let ()
                                (declare (not safe))
                                (_g105964105989_ _g105965105992_)))))
                      (let ()
                        (declare (not safe))
                        (_g105964105989_ _g105965105992_))))))
          (declare (not safe))
          (_g105963106179_ _stx105962_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_self105814_ _stx105815_)
        (letrec ((_import-set-template105817_
                  (lambda (_in105913_ _phi105914_)
                    (let ((_iphi105916_
                           (fx+ _phi105914_
                                (##direct-structure-ref
                                 _in105913_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_imports105917_
                           (##structure-ref
                            (##direct-structure-ref
                             _in105913_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _lp105919_ ((_rest105921_ _imports105917_)
                                       (_r105922_ '()))
                        (let* ((_rest105923105931_ _rest105921_)
                               (_else105925105939_ (lambda () _r105922_))
                               (_K105927105949_
                                (lambda (_rest105942_ _in105943_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _in105943_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (fxzero? _iphi105916_))
                                          (let ((__tmp114823
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _in105943_
                                                         _r105922_))))
                                            (declare (not safe))
                                            (_lp105919_
                                             _rest105942_
                                             __tmp114823))
                                          (let ()
                                            (declare (not safe))
                                            (_lp105919_
                                             _rest105942_
                                             _r105922_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _in105943_
                                             'gx#module-import::t))
                                          (let ((_iphi105945_
                                                 (fx+ _phi105914_
                                                      (##direct-structure-ref
                                                       _in105943_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (fxzero? _iphi105945_))
                                                (let ((__tmp114821
                                                       (let ((__tmp114822
                                                              (##direct-structure-ref
                                                               (##direct-structure-ref
                                                                _in105943_
                                                                '1
                                                                gx#module-import::t
                                                                '#f)
                                                               '1
                                                               gx#module-export::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp114822
                                                               _r105922_))))
                                                  (declare (not safe))
                                                  (_lp105919_
                                                   _rest105942_
                                                   __tmp114821))
                                                (let ()
                                                  (declare (not safe))
                                                  (_lp105919_
                                                   _rest105942_
                                                   _r105922_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _in105943_
                                                 'gx#import-set::t))
                                              (let ((_xphi105947_
                                                     (fx+ _iphi105916_
                                                          (##direct-structure-ref
                                                           _in105943_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (fxzero? _xphi105947_))
                                                    (let ((__tmp114819
                                                           (let ((__tmp114820
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##direct-structure-ref
                           _in105943_
                           '1
                           gx#import-set::t
                           '#f)))
                     (declare (not safe))
                     (cons __tmp114820 _r105922_))))
              (declare (not safe))
              (_lp105919_ _rest105942_ __tmp114819))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (fxpositive?
                                                         _xphi105947_)
                                                        (let ((__tmp114817
                                                               (let ((__tmp114818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_import-set-template105817_
                                 _in105943_
                                 _iphi105916_))))
                         (declare (not safe))
                         (foldl1 cons _r105922_ __tmp114818))))
                  (declare (not safe))
                  (_lp105919_ _rest105942_ __tmp114817))
                (let ()
                  (declare (not safe))
                  (_lp105919_ _rest105942_ _r105922_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_lp105919_
                                                 _rest105942_
                                                 _r105922_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest105923105931_))
                              (let ((_hd105928105952_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest105923105931_)))
                                    (_tl105929105954_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest105923105931_))))
                                (let* ((_in105957_ _hd105928105952_)
                                       (_rest105959_ _tl105929105954_))
                                  (declare (not safe))
                                  (_K105927105949_ _rest105959_ _in105957_)))
                              (let ()
                                (declare (not safe))
                                (_else105925105939_)))))))))
          (let* ((_g105819105829_
                  (lambda (_g105820105826_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g105820105826_))))
                 (_g105818105910_
                  (lambda (_g105820105832_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g105820105832_))
                        (let ((_e105824105834_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g105820105832_))))
                          (let ((_hd105823105837_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105824105834_)))
                                (_tl105822105839_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105824105834_))))
                            ((lambda (_L105842_)
                               (let ((_ht105853_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _lp105855_ ((_rest105857_ _L105842_)
                                                  (_loads105858_ '()))
                                   (letrec ((_K105860_
                                             (lambda (_ctx105903_ _rest105904_)
                                               (let ((_id105906_
                                                      (##structure-ref
                                                       _ctx105903_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (hash-get
                                                        _ht105853_
                                                        _id105906_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (_lp105855_
                                                        _rest105904_
                                                        _loads105858_))
                                                     (let ((_rt105908_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _id105906_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _ht105853_
                                                          _id105906_
                                                          _rt105908_))
                                                       (let ((__tmp114824
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _rt105908_ _loads105858_))))
                 (declare (not safe))
                 (_lp105855_ _rest105904_ __tmp114824))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let* ((_rest105861105869_ _rest105857_)
                                            (_else105863105881_
                                             (lambda ()
                                               (let ((__tmp114825
                                                      (map (lambda (_g105876105878_)
                                                             (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g105876105878_))
                   (reverse _loads105858_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'begin __tmp114825))))
                                            (_K105865105891_
                                             (lambda (_rest105884_ _in105885_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _in105885_
                                                      'gx#module-context::t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_K105860_
                                                      _in105885_
                                                      _rest105884_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _in105885_
                                                          'gx#module-import::t))
                                                       (if (let ((__tmp114829
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##direct-structure-ref
                           _in105885_
                           '3
                           gx#module-import::t
                           '#f)))
                     (declare (not safe))
                     (fxzero? __tmp114829))
                   (let ((__tmp114828
                          (##direct-structure-ref
                           (##direct-structure-ref
                            _in105885_
                            '1
                            gx#module-import::t
                            '#f)
                           '1
                           gx#module-export::t
                           '#f)))
                     (declare (not safe))
                     (_K105860_ __tmp114828 _rest105884_))
                   (let ()
                     (declare (not safe))
                     (_lp105855_ _rest105884_ _loads105858_)))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _in105885_
                      'gx#import-set::t))
                   (let ((_phi105887_
                          (##direct-structure-ref
                           _in105885_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (let () (declare (not safe)) (fxzero? _phi105887_))
                         (let ((__tmp114827
                                (##direct-structure-ref
                                 _in105885_
                                 '1
                                 gx#import-set::t
                                 '#f)))
                           (declare (not safe))
                           (_K105860_ __tmp114827 _rest105884_))
                         (if (fxpositive? _phi105887_)
                             (let* ((_deps105889_
                                     (let ()
                                       (declare (not safe))
                                       (_import-set-template105817_
                                        _in105885_
                                        '0)))
                                    (__tmp114826
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _rest105884_
                                               _deps105889_))))
                               (declare (not safe))
                               (_lp105855_ __tmp114826 _loads105858_))
                             (let ()
                               (declare (not safe))
                               (_lp105855_ _rest105884_ _loads105858_)))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _stx105815_
                      _in105885_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _rest105861105869_))
                                           (let ((_hd105866105894_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _rest105861105869_)))
                                                 (_tl105867105896_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _rest105861105869_))))
                                             (let* ((_in105899_
                                                     _hd105866105894_)
                                                    (_rest105901_
                                                     _tl105867105896_))
                                               (declare (not safe))
                                               (_K105865105891_
                                                _rest105901_
                                                _in105899_)))
                                           (let ()
                                             (declare (not safe))
                                             (_else105863105881_))))))))
                             _tl105822105839_)))
                        (let ()
                          (declare (not safe))
                          (_g105819105829_ _g105820105832_))))))
            (declare (not safe))
            (_g105818105910_ _stx105815_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_self105629_ _stx105630_)
        (letrec ((_add-lift!105632_
                  (lambda (_expr105812_)
                    (set-box!
                     (gxc#current-compile-lift)
                     (let ((__tmp114830 (unbox (gxc#current-compile-lift))))
                       (declare (not safe))
                       (cons _expr105812_ __tmp114830)))))
                 (_generate-syntax-quote105633_
                  (lambda (_id105809_ _marks105810_)
                    (let ((__tmp114831
                           (let ((__tmp114832
                                  (let ((__tmp114836
                                         (let ((__tmp114837
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _id105809_ '()))))
                                           (declare (not safe))
                                           (cons 'quote __tmp114837)))
                                        (__tmp114833
                                         (let ((__tmp114834
                                                (let ((__tmp114835
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _marks105810_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '(gx#current-expander-context)
                                                        __tmp114835))))
                                           (declare (not safe))
                                           (cons '#f __tmp114834))))
                                    (declare (not safe))
                                    (cons __tmp114836 __tmp114833))))
                             (declare (not safe))
                             (cons 'gx#syntax-quote::t __tmp114832))))
                      (declare (not safe))
                      (cons '##structure __tmp114831))))
                 (_generate-simple105634_
                  (lambda (_stxq105804_)
                    (let ((_gid105806_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_qid105807_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _stxq105804_))))
                      (let ((__tmp114838
                             (let ((__tmp114839
                                    (let ((__tmp114840
                                           (let ((__tmp114841
                                                  (let ()
                                                    (declare (not safe))
                                                    (_generate-syntax-quote105633_
                                                     _qid105807_
                                                     ''()))))
                                             (declare (not safe))
                                             (cons __tmp114841 '()))))
                                      (declare (not safe))
                                      (cons _gid105806_ __tmp114840))))
                               (declare (not safe))
                               (cons 'define __tmp114839))))
                        (declare (not safe))
                        (_add-lift!105632_ __tmp114838))
                      (let ((__tmp114842 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (hash-put! __tmp114842 _stxq105804_ _gid105806_))
                      _gid105806_)))
                 (_generate-serialized105635_
                  (lambda (_stxq105794_ _marks105795_)
                    (let* ((_mark-refs105797_
                            (map _generate-mark105636_ _marks105795_))
                           (_gid105799_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_qid105801_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _stxq105794_))))
                      (let ((__tmp114843
                             (let ((__tmp114844
                                    (let ((__tmp114845
                                           (let ((__tmp114846
                                                  (let ((__tmp114847
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _mark-refs105797_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-syntax-quote105633_
                                                     _qid105801_
                                                     __tmp114847))))
                                             (declare (not safe))
                                             (cons __tmp114846 '()))))
                                      (declare (not safe))
                                      (cons _gid105799_ __tmp114845))))
                               (declare (not safe))
                               (cons 'define __tmp114844))))
                        (declare (not safe))
                        (_add-lift!105632_ __tmp114843))
                      (let ((__tmp114848 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (hash-put! __tmp114848 _stxq105794_ _gid105799_))
                      _gid105799_)))
                 (_generate-mark105636_
                  (lambda (_mark105780_)
                    (let ((_$e105782_
                           (let ((__tmp114849 (gxc#current-compile-marks)))
                             (declare (not safe))
                             (hash-get __tmp114849 _mark105780_))))
                      (if _$e105782_
                          (values _$e105782_)
                          (let* ((_gid105785_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_repr105787_
                                  (let ()
                                    (declare (not safe))
                                    (_serialize-mark105637_ _mark105780_)))
                                 (_ctx105789_
                                  (let ((__tmp114850
                                         (##structure-ref
                                          _mark105780_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp114850)))
                                 (_ctx-ref105791_
                                  (if (let ((__tmp114855
                                             (gx#current-expander-context)))
                                        (declare (not safe))
                                        (eq? _ctx105789_ __tmp114855))
                                      '(gx#current-expander-context)
                                      (let ((__tmp114851
                                             (let ((__tmp114852
                                                    (let ((__tmp114853
                                                           (let ((__tmp114854
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_context-ref105638_ _ctx105789_))))
                     (declare (not safe))
                     (cons __tmp114854 '()))))
              (declare (not safe))
              (cons 'quote __tmp114853))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114852 '()))))
                                        (declare (not safe))
                                        (cons 'gx#import-module
                                              __tmp114851)))))
                            (let ((__tmp114856 (gxc#current-compile-marks)))
                              (declare (not safe))
                              (hash-put! __tmp114856 _mark105780_ _gid105785_))
                            (let ((__tmp114857
                                   (let ((__tmp114858
                                          (let ((__tmp114859
                                                 (let ((__tmp114860
                                                        (let ((__tmp114861
                                                               (let ((__tmp114863
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp114864
                                     (let ()
                                       (declare (not safe))
                                       (cons _repr105787_ '()))))
                                (declare (not safe))
                                (cons 'quote __tmp114864)))
                             (__tmp114862
                              (let ()
                                (declare (not safe))
                                (cons _ctx-ref105791_ '()))))
                         (declare (not safe))
                         (cons __tmp114863 __tmp114862))))
                  (declare (not safe))
                  (cons 'gx#core-deserialize-mark __tmp114861))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp114860 '()))))
                                            (declare (not safe))
                                            (cons _gid105785_ __tmp114859))))
                                     (declare (not safe))
                                     (cons 'define __tmp114858))))
                              (declare (not safe))
                              (_add-lift!105632_ __tmp114857))
                            _gid105785_)))))
                 (_serialize-mark105637_
                  (lambda (_mark105727_)
                    (letrec ((_quote-e105729_
                              (lambda (_sym105778_)
                                (if (interned-symbol? _sym105778_)
                                    _sym105778_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _sym105778_))))))
                      (let* ((_mark105730105739_ _mark105727_)
                             (_E105732105743_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _mark105730105739_))))
                             (_K105733105755_
                              (lambda (_trace105746_
                                       _phi105747_
                                       _ctx105748_
                                       _subst105749_)
                                (let* ((_subs105751_
                                        (if _subst105749_
                                            (let ()
                                              (declare (not safe))
                                              (hash->list _subst105749_))
                                            '()))
                                       (__tmp114865
                                        (map (lambda (_pair105753_)
                                               (let ((__tmp114868
                                                      (let ((__tmp114869
                                                             (car _pair105753_)))
                                                        (declare (not safe))
                                                        (_quote-e105729_
                                                         __tmp114869)))
                                                     (__tmp114866
                                                      (let ((__tmp114867
                                                             (cdr _pair105753_)))
                                                        (declare (not safe))
                                                        (_quote-e105729_
                                                         __tmp114867))))
                                                 (declare (not safe))
                                                 (cons __tmp114868
                                                       __tmp114866)))
                                             _subs105751_)))
                                  (declare (not safe))
                                  (cons _phi105747_ __tmp114865)))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _mark105730105739_
                               'gx#expander-mark::t))
                            (let* ((_e105734105758_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark105730105739_
                                       '1
                                       gx#expander-mark::t
                                       '#f)))
                                   (_subst105761_ _e105734105758_)
                                   (_e105735105763_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark105730105739_
                                       '2
                                       gx#expander-mark::t
                                       '#f)))
                                   (_ctx105766_ _e105735105763_)
                                   (_e105736105768_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark105730105739_
                                       '3
                                       gx#expander-mark::t
                                       '#f)))
                                   (_phi105771_ _e105736105768_)
                                   (_e105737105773_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark105730105739_
                                       '4
                                       gx#expander-mark::t
                                       '#f)))
                                   (_trace105776_ _e105737105773_))
                              (declare (not safe))
                              (_K105733105755_
                               _trace105776_
                               _phi105771_
                               _ctx105766_
                               _subst105761_))
                            (let ()
                              (declare (not safe))
                              (_E105732105743_)))))))
                 (_context-ref105638_
                  (lambda (_ctx105714_)
                    (if (let ((__tmp114877
                               (##structure-ref
                                _ctx105714_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp114877
                           'gx#module-context::t))
                        (let ((_ctx-ref105716_
                               (let ()
                                 (declare (not safe))
                                 (_context-ref-nested105640_ _ctx105714_)))
                              (_ctx-origin105717_
                               (let ()
                                 (declare (not safe))
                                 (_context-ref-origin105639_ _ctx105714_)))
                              (_origin105718_
                               (let ((__tmp114871
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (_context-ref-origin105639_ __tmp114871))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _origin105718_ _ctx-origin105717_))
                              (let ((_ref105720_
                                     (let ((__tmp114872
                                            (gx#current-expander-context)))
                                       (declare (not safe))
                                       (_context-ref-nested105640_
                                        __tmp114872))))
                                (let _lp105722_ ((_ref105724_
                                                  (cdr _ref105720_))
                                                 (_ctx-ref105725_
                                                  (cdr _ctx-ref105716_)))
                                  (if (and (let ()
                                             (declare (not safe))
                                             (pair? _ref105724_))
                                           (let ((__tmp114876
                                                  (car _ref105724_))
                                                 (__tmp114875
                                                  (car _ctx-ref105725_)))
                                             (declare (not safe))
                                             (eq? __tmp114876 __tmp114875)))
                                      (let ((__tmp114874 (cdr _ref105724_))
                                            (__tmp114873
                                             (cdr _ctx-ref105725_)))
                                        (declare (not safe))
                                        (_lp105722_ __tmp114874 __tmp114873))
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f _ctx-ref105725_)))))
                              _ctx-ref105716_))
                        (let ((__tmp114870
                               (##structure-ref
                                _ctx105714_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp114870)))))
                 (_context-ref-origin105639_
                  (lambda (_ctx105706_)
                    (let _lp105708_ ((_ctx105710_ _ctx105706_))
                      (let ((_super105712_
                             (##structure-ref
                              _ctx105710_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super105712_
                               'gx#module-context::t))
                            (let ()
                              (declare (not safe))
                              (_lp105708_ _super105712_))
                            _ctx105710_)))))
                 (_context-ref-nested105640_
                  (lambda (_ctx105697_)
                    (let _lp105699_ ((_ctx105701_ _ctx105697_) (_r105702_ '()))
                      (let ((_super105704_
                             (##structure-ref
                              _ctx105701_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super105704_
                               'gx#module-context::t))
                            (let ((__tmp114880
                                   (let ((__tmp114881
                                          (car (##structure-ref
                                                _ctx105701_
                                                '7
                                                gx#module-context::t
                                                '#f))))
                                     (declare (not safe))
                                     (cons __tmp114881 _r105702_))))
                              (declare (not safe))
                              (_lp105699_ _super105704_ __tmp114880))
                            (let ((__tmp114878
                                   (let ((__tmp114879
                                          (##structure-ref
                                           _ctx105701_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (make-symbol__1 '":" __tmp114879))))
                              (declare (not safe))
                              (cons __tmp114878 _r105702_))))))))
          (let* ((_g105642105655_
                  (lambda (_g105643105652_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g105643105652_))))
                 (_g105641105694_
                  (lambda (_g105643105658_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g105643105658_))
                        (let ((_e105647105660_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g105643105658_))))
                          (let ((_hd105646105663_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105647105660_)))
                                (_tl105645105665_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105647105660_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl105645105665_))
                                (let ((_e105650105668_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl105645105665_))))
                                  (let ((_hd105649105671_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e105650105668_)))
                                        (_tl105648105673_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e105650105668_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl105648105673_))
                                        ((lambda (_L105676_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _L105676_))
                                               (let ((_$e105689_
                                                      (let ((__tmp114882
                                                             (gxc#current-compile-identifiers)))
                                                        (declare (not safe))
                                                        (hash-get
                                                         __tmp114882
                                                         _L105676_))))
                                                 (if _$e105689_
                                                     (values _$e105689_)
                                                     (let ((_marks105692_
                                                            (##direct-structure-ref
                                                             _L105676_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (null? _marks105692_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-simple105634_
                                                              _L105676_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-serialized105635_
                                                              _L105676_
                                                              _marks105692_))))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _L105676_))))
                                         _hd105649105671_)
                                        (let ()
                                          (declare (not safe))
                                          (_g105642105655_ _g105643105658_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g105642105655_ _g105643105658_)))))
                        (let ()
                          (declare (not safe))
                          (_g105642105655_ _g105643105658_))))))
            (declare (not safe))
            (_g105641105694_ _stx105630_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_self105561_ _stx105562_)
        (let* ((_g105564105581_
                (lambda (_g105565105578_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105565105578_))))
               (_g105563105626_
                (lambda (_g105565105584_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105565105584_))
                      (let ((_e105570105586_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105565105584_))))
                        (let ((_hd105569105589_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105570105586_)))
                              (_tl105568105591_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105570105586_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105568105591_))
                              (let ((_e105573105594_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105568105591_))))
                                (let ((_hd105572105597_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105573105594_)))
                                      (_tl105571105599_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105573105594_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl105571105599_))
                                      (let ((_e105576105602_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl105571105599_))))
                                        (let ((_hd105575105605_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e105576105602_)))
                                              (_tl105574105607_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e105576105602_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl105574105607_))
                                              ((lambda (_L105610_ _L105611_)
                                                 (let ((__tmp114883
                                                        (let ((__tmp114886
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _L105611_)))
                      (__tmp114884
                       (let ((__tmp114885
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1 _self105561_ _L105610_))))
                         (declare (not safe))
                         (cons __tmp114885 '()))))
                  (declare (not safe))
                  (cons __tmp114886 __tmp114884))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'define __tmp114883)))
                                               _hd105575105605_
                                               _hd105572105597_)
                                              (let ()
                                                (declare (not safe))
                                                (_g105564105581_
                                                 _g105565105584_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g105564105581_ _g105565105584_)))))
                              (let ()
                                (declare (not safe))
                                (_g105564105581_ _g105565105584_)))))
                      (let ()
                        (declare (not safe))
                        (_g105564105581_ _g105565105584_))))))
          (declare (not safe))
          (_g105563105626_ _stx105562_))))
    (define gxc#generate-meta-begin%
      (lambda (_self105510_ _stx105511_)
        (let* ((_g105513105523_
                (lambda (_g105514105520_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105514105520_))))
               (_g105512105558_
                (lambda (_g105514105526_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105514105526_))
                      (let ((_e105518105528_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105514105526_))))
                        (let ((_hd105517105531_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105518105528_)))
                              (_tl105516105533_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105518105528_))))
                          ((lambda (_L105536_)
                             (let* ((_c-body105550_
                                     (map (lambda (_g105545105547_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self105510_
                                               _g105545105547_)))
                                          _L105536_))
                                    (_c-body105555_
                                     (filter (lambda (_$obj105552_)
                                               (let ((__tmp114887
                                                      (let ()
                                                        (declare (not safe))
                                                        (eq? _$obj105552_
                                                             '#!void))))
                                                 (declare (not safe))
                                                 (not __tmp114887)))
                                             _c-body105550_)))
                               (let ()
                                 (declare (not safe))
                                 (cons '%#begin _c-body105555_))))
                           _tl105516105533_)))
                      (let ()
                        (declare (not safe))
                        (_g105513105523_ _g105514105526_))))))
          (declare (not safe))
          (_g105512105558_ _stx105511_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_self105418_ _stx105419_)
        (let* ((_g105421105431_
                (lambda (_g105422105428_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105422105428_))))
               (_g105420105507_
                (lambda (_g105422105434_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105422105434_))
                      (let ((_e105426105436_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105422105434_))))
                        (let ((_hd105425105439_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105426105436_)))
                              (_tl105424105441_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105426105436_))))
                          ((lambda (_L105444_)
                             (let* ((_phi105454_
                                     (let ((__tmp114888
                                            (gx#current-expander-phi)))
                                       (declare (not safe))
                                       (fx+ __tmp114888 '1)))
                                    (_block105456_
                                     (let ((__tmp114889
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _self105418_
                                               'state))))
                                       (declare (not safe))
                                       (gxc#meta-state-begin-phi!
                                        __tmp114889
                                        _phi105454_)))
                                    (_compiled105459_
                                     (let ((__tmp114890
                                            (lambda ()
                                              (let ((__tmp114892
                                                     (let ((__tmp114893
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))))
                                                       (declare (not safe))
                                                       (cons __tmp114893
                                                             _L105444_)))
                                                    (__tmp114891
                                                     (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _self105418_
                                                        'state))))
                                                (declare (not safe))
                                                (gxc#apply-generate-meta-phi
                                                 __tmp114892
                                                 'state:
                                                 __tmp114891)))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp114890
                                        gx#current-expander-phi
                                        _phi105454_))))
                               (let* ((_g105462105472_
                                       (lambda (_g105463105469_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g105463105469_))))
                                      (_g105461105504_
                                       (lambda (_g105463105475_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _g105463105475_))
                                             (let ((_e105467105477_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _g105463105475_))))
                                               (let ((_hd105466105480_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e105467105477_)))
                                                     (_tl105465105482_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e105467105477_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _hd105466105480_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#begin
                                                            _hd105466105480_))
                                                         ((lambda (_L105485_)
                                                            (let ((_c-body105502_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (filter (lambda (_$obj105499_)
                                     (let ((__tmp114894
                                            (let ()
                                              (declare (not safe))
                                              (eq? _$obj105499_ '#!void))))
                                       (declare (not safe))
                                       (not __tmp114894)))
                                   _L105485_)))
                      (if _block105456_
                          (let ((__tmp114895
                                 (let ((__tmp114896
                                        (let ((__tmp114897
                                               (let ((__tmp114901
                                                      (let ((__tmp114902
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons 'load-module '()))))
                (declare (not safe))
                (cons '%#ref __tmp114902)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp114898
                                                      (let ((__tmp114899
                                                             (let ((__tmp114900
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _block105456_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp114900))))
                (declare (not safe))
                (cons __tmp114899 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp114901
                                                       __tmp114898))))
                                          (declare (not safe))
                                          (cons '%#call __tmp114897))))
                                   (declare (not safe))
                                   (cons __tmp114896 _c-body105502_))))
                            (declare (not safe))
                            (cons '%#begin-syntax __tmp114895))
                          (if (let ()
                                (declare (not safe))
                                (null? _c-body105502_))
                              '#!void
                              (let ()
                                (declare (not safe))
                                (cons '%#begin-syntax _c-body105502_))))))
                  _tl105465105482_)
                 (let ()
                   (declare (not safe))
                   (_g105462105472_ _g105463105475_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g105462105472_
                                                        _g105463105475_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g105462105472_
                                                _g105463105475_))))))
                                 (declare (not safe))
                                 (_g105461105504_ _compiled105459_))))
                           _tl105424105441_)))
                      (let ()
                        (declare (not safe))
                        (_g105421105431_ _g105422105434_))))))
          (declare (not safe))
          (_g105420105507_ _stx105419_))))
    (define gxc#generate-meta-module%
      (lambda (_self105349_ _stx105350_)
        (let ((__tmp114903
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _self105349_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp114903))
        (let* ((_g105352105366_
                (lambda (_g105353105363_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105353105363_))))
               (_g105351105415_
                (lambda (_g105353105369_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105353105369_))
                      (let ((_e105358105371_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105353105369_))))
                        (let ((_hd105357105374_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105358105371_)))
                              (_tl105356105376_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105358105371_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105356105376_))
                              (let ((_e105361105379_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105356105376_))))
                                (let ((_hd105360105382_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105361105379_)))
                                      (_tl105359105384_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105361105379_))))
                                  ((lambda (_L105387_ _L105388_)
                                     (let ((_key105401_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _L105388_))))
                                       (if (interned-symbol? _key105401_)
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _stx105350_
                                              _L105388_
                                              _key105401_)))
                                       (let* ((_ctx105403_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _L105388_)))
                                              (_code105406_
                                               (let ((__tmp114904
                                                      (lambda ()
                                                        (let ((__tmp114905
                                                               (##structure-ref
                                                                _ctx105403_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self105349_
                                                           __tmp114905)))))
                                                 (declare (not safe))
                                                 (call-with-parameters
                                                  __tmp114904
                                                  gx#current-expander-context
                                                  _ctx105403_)))
                                              (_rt105408_
                                               (let ((__tmp114906
                                                      (gxc#current-compile-runtime-sections)))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp114906
                                                  _ctx105403_)))
                                              (_loader105410_
                                               (if _rt105408_
                                                   (let ((__tmp114907
                                                          (let ((__tmp114908
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp114912
                                (let ((__tmp114913
                                       (let ()
                                         (declare (not safe))
                                         (cons 'load-module '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp114913)))
                               (__tmp114909
                                (let ((__tmp114910
                                       (let ((__tmp114911
                                              (let ()
                                                (declare (not safe))
                                                (cons _rt105408_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp114911))))
                                  (declare (not safe))
                                  (cons __tmp114910 '()))))
                           (declare (not safe))
                           (cons __tmp114912 __tmp114909))))
                    (declare (not safe))
                    (cons '%#call __tmp114908))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114907 '()))
                                                   '()))
                                              (_modid105412_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _L105388_))))
                                         (let ((__tmp114914
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _self105349_
                                                   'state))))
                                           (declare (not safe))
                                           (gxc#meta-state-end-phi!
                                            __tmp114914))
                                         (let ((__tmp114915
                                                (let ((__tmp114916
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _code105406_
                                                               _loader105410_))))
                                                  (declare (not safe))
                                                  (cons _modid105412_
                                                        __tmp114916))))
                                           (declare (not safe))
                                           (cons '%#module __tmp114915)))))
                                   _tl105359105384_
                                   _hd105360105382_)))
                              (let ()
                                (declare (not safe))
                                (_g105352105366_ _g105353105369_)))))
                      (let ()
                        (declare (not safe))
                        (_g105352105366_ _g105353105369_))))))
          (declare (not safe))
          (_g105351105415_ _stx105350_))))
    (define gxc#generate-meta-import-path
      (lambda (_ctx105339_ _context-chain105340_)
        (let _lp105342_ ((_ctx105344_ _ctx105339_) (_path105345_ '()))
          (let ((_super105347_
                 (##structure-ref _ctx105344_ '3 gx#phi-context::t '#f)))
            (if (memq _super105347_ _context-chain105340_)
                (let ((__tmp114921
                       (let ((__tmp114922
                              (car (##structure-ref
                                    _ctx105344_
                                    '7
                                    gx#module-context::t
                                    '#f))))
                         (declare (not safe))
                         (cons __tmp114922 _path105345_))))
                  (declare (not safe))
                  (cons '#f __tmp114921))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _super105347_
                       'gx#module-context::t))
                    (let ((__tmp114919
                           (let ((__tmp114920
                                  (car (##structure-ref
                                        _ctx105344_
                                        '7
                                        gx#module-context::t
                                        '#f))))
                             (declare (not safe))
                             (cons __tmp114920 _path105345_))))
                      (declare (not safe))
                      (_lp105342_ _super105347_ __tmp114919))
                    (let ((__tmp114917
                           (let ((__tmp114918
                                  (##structure-ref
                                   _ctx105344_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                             (declare (not safe))
                             (make-symbol__1 '":" __tmp114918))))
                      (declare (not safe))
                      (cons __tmp114917 _path105345_))))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _lp105334_ ((_ctx105336_ (gx#current-expander-context))
                         (_r105337_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _ctx105336_ 'gx#module-context::t))
              (let ((__tmp114924
                     (##structure-ref _ctx105336_ '3 gx#phi-context::t '#f))
                    (__tmp114923
                     (let ()
                       (declare (not safe))
                       (cons _ctx105336_ _r105337_))))
                (declare (not safe))
                (_lp105334_ __tmp114924 __tmp114923))
              _r105337_))))
    (define gxc#generate-meta-import%
      (lambda (_self105103_ _stx105104_)
        (letrec* ((_context-chain105106_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_make-import-spec105107_
                   (lambda (_in105270_)
                     (let* ((_in105271105283_ _in105270_)
                            (_E105273105287_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _in105271105283_))))
                            (_K105274105297_
                             (lambda (_phi105290_
                                      _name105291_
                                      _src-name105292_
                                      _src-phi105293_
                                      _src-key105294_
                                      _src-ctx105295_)
                               (let ((__tmp114925
                                      (let ((__tmp114929
                                             (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _name105291_)))
                                            (__tmp114926
                                             (let ((__tmp114927
                                                    (let ((__tmp114928
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-identifier-key
                                                              _src-name105292_))))
                                                      (declare (not safe))
                                                      (cons __tmp114928 '()))))
                                               (declare (not safe))
                                               (cons _src-phi105293_
                                                     __tmp114927))))
                                        (declare (not safe))
                                        (cons __tmp114929 __tmp114926))))
                                 (declare (not safe))
                                 (cons _phi105290_ __tmp114925)))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _in105271105283_
                              'gx#module-import::t))
                           (let ((_e105275105300_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _in105271105283_
                                     '1
                                     gx#module-import::t
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _e105275105300_
                                    'gx#module-export::t))
                                 (let* ((_e105278105303_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e105275105300_
                                            '1
                                            gx#module-export::t
                                            '#f)))
                                        (_src-ctx105306_ _e105278105303_)
                                        (_e105279105308_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e105275105300_
                                            '2
                                            gx#module-export::t
                                            '#f)))
                                        (_src-key105311_ _e105279105308_)
                                        (_e105280105313_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e105275105300_
                                            '3
                                            gx#module-export::t
                                            '#f)))
                                        (_src-phi105316_ _e105280105313_)
                                        (_e105281105318_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e105275105300_
                                            '4
                                            gx#module-export::t
                                            '#f)))
                                        (_src-name105321_ _e105281105318_)
                                        (_e105276105323_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _in105271105283_
                                            '2
                                            gx#module-import::t
                                            '#f)))
                                        (_name105326_ _e105276105323_)
                                        (_e105277105328_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _in105271105283_
                                            '3
                                            gx#module-import::t
                                            '#f)))
                                        (_phi105331_ _e105277105328_))
                                   (declare (not safe))
                                   (_K105274105297_
                                    _phi105331_
                                    _name105326_
                                    _src-name105321_
                                    _src-phi105316_
                                    _src-key105311_
                                    _src-ctx105306_))
                                 (let ()
                                   (declare (not safe))
                                   (_E105273105287_))))
                           (let () (declare (not safe)) (_E105273105287_))))))
                  (_make-import-path105108_
                   (lambda (_ctx105268_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _ctx105268_
                        _context-chain105106_))))
                  (_make-import-spec-in105109_
                   (lambda (_ctx105265_ _in105266_)
                     (let ((__tmp114930
                            (let ((__tmp114932
                                   (let ()
                                     (declare (not safe))
                                     (_make-import-path105108_ _ctx105265_)))
                                  (__tmp114931 (reverse _in105266_)))
                              (declare (not safe))
                              (cons __tmp114932 __tmp114931))))
                       (declare (not safe))
                       (cons 'spec: __tmp114930)))))
          (let ((__tmp114933
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _self105103_ 'state))))
            (declare (not safe))
            (gxc#meta-state-end-phi! __tmp114933))
          (let* ((_g105111105121_
                  (lambda (_g105112105118_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g105112105118_))))
                 (_g105110105262_
                  (lambda (_g105112105124_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g105112105124_))
                        (let ((_e105116105126_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g105112105124_))))
                          (let ((_hd105115105129_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105116105126_)))
                                (_tl105114105131_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105116105126_))))
                            ((lambda (_L105134_)
                               (let _lp105145_ ((_rest105147_ _L105134_)
                                                (_current-src105148_ '#f)
                                                (_current-in105149_ '())
                                                (_r105150_ '()))
                                 (let* ((_rest105151105159_ _rest105147_)
                                        (_else105153105169_
                                         (lambda ()
                                           (let* ((_r105167_
                                                   (if _current-src105148_
                                                       (let ((__tmp114934
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_make-import-spec-in105109_
                         _current-src105148_
                         _current-in105149_))))
                 (declare (not safe))
                 (cons __tmp114934 _r105150_))
               _r105150_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp114935
                                                   (reverse _r105167_)))
                                             (declare (not safe))
                                             (cons '%#import __tmp114935))))
                                        (_K105155105250_
                                         (lambda (_rest105172_ _in105173_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in105173_
                                                  'gx#module-import::t))
                                               (let* ((_in105174105181_
                                                       _in105173_)
                                                      (_E105176105185_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in105174105181_))))
              (_K105177105190_
               (lambda (_src-ctx105188_)
                 (if (let ()
                       (declare (not safe))
                       (eq? _current-src105148_ _src-ctx105188_))
                     (let ((__tmp114951
                            (let ((__tmp114952
                                   (let ()
                                     (declare (not safe))
                                     (_make-import-spec105107_ _in105173_))))
                              (declare (not safe))
                              (cons __tmp114952 _current-in105149_))))
                       (declare (not safe))
                       (_lp105145_
                        _rest105172_
                        _current-src105148_
                        __tmp114951
                        _r105150_))
                     (if _current-src105148_
                         (let ((__tmp114949
                                (let ((__tmp114950
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec105107_
                                          _in105173_))))
                                  (declare (not safe))
                                  (cons __tmp114950 '())))
                               (__tmp114947
                                (let ((__tmp114948
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec-in105109_
                                          _current-src105148_
                                          _current-in105149_))))
                                  (declare (not safe))
                                  (cons __tmp114948 _r105150_))))
                           (declare (not safe))
                           (_lp105145_
                            _rest105172_
                            _src-ctx105188_
                            __tmp114949
                            __tmp114947))
                         (let ((__tmp114945
                                (let ((__tmp114946
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec105107_
                                          _in105173_))))
                                  (declare (not safe))
                                  (cons __tmp114946 '()))))
                           (declare (not safe))
                           (_lp105145_
                            _rest105172_
                            _src-ctx105188_
                            __tmp114945
                            _r105150_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _in105174105181_
                                                        'gx#module-import::t))
                                                     (let ((_e105178105193_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _in105174105181_
                                                               '1
                                                               gx#module-import::t
                                                               '#f))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              _e105178105193_
                                                              'gx#module-export::t))
                                                           (let* ((_e105179105196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _e105178105193_
                              '1
                              gx#module-export::t
                              '#f)))
                          (_src-ctx105199_ _e105179105196_))
                     (declare (not safe))
                     (_K105177105190_ _src-ctx105199_))
                   (let () (declare (not safe)) (_E105176105185_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_E105176105185_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _in105173_
                                                      'gx#import-set::t))
                                                   (let* ((_phi105201_
                                                           (##direct-structure-ref
                                                            _in105173_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src105203_
                                                           (##direct-structure-ref
                                                            _in105173_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in105243_
                                                           (let* ((_g105204105213_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (_make-import-path105108_ _src105203_)))
                          (_E105207105217_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _g105204105213_)))))
                     (let ((_K105209105233_
                            (lambda (_path105231_) _path105231_))
                           (_K105208105223_
                            (lambda (_path105221_)
                              (let ()
                                (declare (not safe))
                                (cons 'in: _path105221_)))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _g105204105213_))
                           (let ((_tl105211105238_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _g105204105213_)))
                                 (_hd105210105236_
                                  (let ()
                                    (declare (not safe))
                                    (##car _g105204105213_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl105211105238_))
                                 (let ((_path105241_ _hd105210105236_))
                                   (declare (not safe))
                                   (_K105209105233_ _path105241_))
                                 (let ((_path105226_ _g105204105213_))
                                   (declare (not safe))
                                   (_K105208105223_ _path105226_))))
                           (let ((_path105226_ _g105204105213_))
                             (declare (not safe))
                             (_K105208105223_ _path105226_))))))
                  (_r105245_
                   (if _current-src105148_
                       (let ((__tmp114940
                              (let ()
                                (declare (not safe))
                                (_make-import-spec-in105109_
                                 _current-src105148_
                                 _current-in105149_))))
                         (declare (not safe))
                         (cons __tmp114940 _r105150_))
                       _r105150_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp114941
                                                            (let ((__tmp114942
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _phi105201_))
                               _src-in105243_
                               (let ((__tmp114943
                                      (let ((__tmp114944
                                             (let ()
                                               (declare (not safe))
                                               (cons _src-in105243_ '()))))
                                        (declare (not safe))
                                        (cons _phi105201_ __tmp114944))))
                                 (declare (not safe))
                                 (cons 'phi: __tmp114943)))))
                      (declare (not safe))
                      (cons __tmp114942 _r105245_))))
               (declare (not safe))
               (_lp105145_ _rest105172_ '#f '() __tmp114941)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _in105173_
                                                          'gx#module-context::t))
                                                       (let* ((_r105248_
                                                               (if _current-src105148_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114936
                                  (let ()
                                    (declare (not safe))
                                    (_make-import-spec-in105109_
                                     _current-src105148_
                                     _current-in105149_))))
                             (declare (not safe))
                             (cons __tmp114936 _r105150_))
                           _r105150_))
                      (__tmp114937
                       (let ((__tmp114938
                              (let ((__tmp114939
                                     (let ()
                                       (declare (not safe))
                                       (_make-import-path105108_ _in105173_))))
                                (declare (not safe))
                                (cons 'runtime: __tmp114939))))
                         (declare (not safe))
                         (cons __tmp114938 _r105248_))))
                 (declare (not safe))
                 (_lp105145_ _rest105172_ '#f '() __tmp114937))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest105151105159_))
                                       (let ((_hd105156105253_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest105151105159_)))
                                             (_tl105157105255_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest105151105159_))))
                                         (let* ((_in105258_ _hd105156105253_)
                                                (_rest105260_
                                                 _tl105157105255_))
                                           (declare (not safe))
                                           (_K105155105250_
                                            _rest105260_
                                            _in105258_)))
                                       (let ()
                                         (declare (not safe))
                                         (_else105153105169_))))))
                             _tl105114105131_)))
                        (let ()
                          (declare (not safe))
                          (_g105111105121_ _g105112105124_))))))
            (declare (not safe))
            (_g105110105262_ _stx105104_)))))
    (define gxc#generate-meta-export%
      (lambda (_self104913_ _stx104914_)
        (letrec* ((_context-chain104916_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_make-import-path104917_
                   (lambda (_ctx105101_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _ctx105101_
                        _context-chain104916_)))))
          (let* ((_g104919104929_
                  (lambda (_g104920104926_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104920104926_))))
                 (_g104918105098_
                  (lambda (_g104920104932_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104920104932_))
                        (let ((_e104924104934_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104920104932_))))
                          (let ((_hd104923104937_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104924104934_)))
                                (_tl104922104939_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104924104934_))))
                            ((lambda (_L104942_)
                               (let _lp104953_ ((_rest104955_ _L104942_)
                                                (_r104956_ '()))
                                 (let* ((_rest104957104965_ _rest104955_)
                                        (_else104959104973_
                                         (lambda ()
                                           (let ((__tmp114953
                                                  (reverse _r104956_)))
                                             (declare (not safe))
                                             (cons '%#export __tmp114953))))
                                        (_K104961105086_
                                         (lambda (_rest104976_ _out104977_)
                                           (let* ((_out104978104991_
                                                   _out104977_)
                                                  (_E104981104995_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _out104978104991_)))))
                                             (let ((_K104985105065_
                                                    (lambda (_name105061_
                                                             _phi105062_
                                                             _key105063_)
                                                      (let ((__tmp114954
                                                             (let ((__tmp114955
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114956
                                   (let ((__tmp114957
                                          (let ((__tmp114960
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-identifier-key
                                                    _key105063_)))
                                                (__tmp114958
                                                 (let ((__tmp114959
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#generate-runtime-identifier-key
                                                           _name105061_))))
                                                   (declare (not safe))
                                                   (cons __tmp114959 '()))))
                                            (declare (not safe))
                                            (cons __tmp114960 __tmp114958))))
                                     (declare (not safe))
                                     (cons _phi105062_ __tmp114957))))
                              (declare (not safe))
                              (cons 'spec: __tmp114956))))
                       (declare (not safe))
                       (cons __tmp114955 _r104956_))))
                (declare (not safe))
                (_lp104953_ _rest104976_ __tmp114954))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K104982105045_
                                                    (lambda (_phi104999_
                                                             _src105000_)
                                                      (let* ((_out105040_
                                                              (if _src105000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114961
                                 (let ((__tmp114962
                                        (let* ((_g105001105010_
                                                (let ()
                                                  (declare (not safe))
                                                  (_make-import-path104917_
                                                   _src105000_)))
                                               (_E105004105014_
                                                (lambda ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"No clause matching"
                                                           _g105001105010_)))))
                                          (let ((_K105006105030_
                                                 (lambda (_path105028_)
                                                   _path105028_))
                                                (_K105005105020_
                                                 (lambda (_path105018_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'in:
                                                           _path105018_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _g105001105010_))
                                                (let ((_tl105008105035_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _g105001105010_)))
                                                      (_hd105007105033_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _g105001105010_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##null? _tl105008105035_))
                                                      (let ((_path105038_
                                                             _hd105007105033_))
                                                        (declare (not safe))
                                                        (_K105006105030_
                                                         _path105038_))
                                                      (let ((_path105023_
                                                             _g105001105010_))
                                                        (declare (not safe))
                                                        (_K105005105020_
                                                         _path105023_))))
                                                (let ((_path105023_
                                                       _g105001105010_))
                                                  (declare (not safe))
                                                  (_K105005105020_
                                                   _path105023_)))))))
                                   (declare (not safe))
                                   (cons __tmp114962 '()))))
                            (declare (not safe))
                            (cons 'import: __tmp114961))
                          '#t))
                     (_out105042_
                      (if (let () (declare (not safe)) (fxzero? _phi104999_))
                          _out105040_
                          (let ((__tmp114963
                                 (let ((__tmp114964
                                        (let ()
                                          (declare (not safe))
                                          (cons _out105040_ '()))))
                                   (declare (not safe))
                                   (cons _phi104999_ __tmp114964))))
                            (declare (not safe))
                            (cons 'phi: __tmp114963)))))
                (let ((__tmp114965
                       (let ()
                         (declare (not safe))
                         (cons _out105042_ _r104956_))))
                  (declare (not safe))
                  (_lp104953_ _rest104976_ __tmp114965))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_try-match104980105058_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _out104978104991_
                                                               'gx#export-set::t))
                                                            (let* ((_e104983105048_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _out104978104991_
                               '1
                               gx#export-set::t
                               '#f)))
                           (_e104984105053_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _out104978104991_
                               '2
                               gx#export-set::t
                               '#f))))
                      (let ((_src105051_ _e104983105048_)
                            (_phi105056_ _e104984105053_))
                        (let ()
                          (declare (not safe))
                          (_K104982105045_ _phi105056_ _src105051_))))
                    (let () (declare (not safe)) (_E104981104995_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _out104978104991_
                                                        'gx#module-export::t))
                                                     (let* ((_e104986105068_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _out104978104991_
                        '1
                        gx#module-export::t
                        '#f)))
                    (_e104987105071_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out104978104991_
                        '2
                        gx#module-export::t
                        '#f)))
                    (_e104988105076_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out104978104991_
                        '3
                        gx#module-export::t
                        '#f)))
                    (_e104989105081_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out104978104991_
                        '4
                        gx#module-export::t
                        '#f))))
               (let ((_key105074_ _e104987105071_)
                     (_phi105079_ _e104988105076_)
                     (_name105084_ _e104989105081_))
                 (let ()
                   (declare (not safe))
                   (_K104985105065_ _name105084_ _phi105079_ _key105074_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_try-match104980105058_)))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest104957104965_))
                                       (let ((_hd104962105089_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest104957104965_)))
                                             (_tl104963105091_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest104957104965_))))
                                         (let* ((_out105094_ _hd104962105089_)
                                                (_rest105096_
                                                 _tl104963105091_))
                                           (declare (not safe))
                                           (_K104961105086_
                                            _rest105096_
                                            _out105094_)))
                                       (let ()
                                         (declare (not safe))
                                         (_else104959104973_))))))
                             _tl104922104939_)))
                        (let ()
                          (declare (not safe))
                          (_g104919104929_ _g104920104932_))))))
            (declare (not safe))
            (_g104918105098_ _stx104914_)))))
    (define gxc#generate-meta-provide%
      (lambda (_self104874_ _stx104875_)
        (let ((__tmp114966
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _self104874_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp114966))
        (let* ((_g104877104887_
                (lambda (_g104878104884_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104878104884_))))
               (_g104876104910_
                (lambda (_g104878104890_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104878104890_))
                      (let ((_e104882104892_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104878104890_))))
                        (let ((_hd104881104895_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104882104892_)))
                              (_tl104880104897_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104882104892_))))
                          ((lambda (_L104900_)
                             (let ((__tmp114967
                                    (map gxc#generate-runtime-identifier
                                         _L104900_)))
                               (declare (not safe))
                               (cons '%#provide __tmp114967)))
                           _tl104880104897_)))
                      (let ()
                        (declare (not safe))
                        (_g104877104887_ _g104878104890_))))))
          (declare (not safe))
          (_g104876104910_ _stx104875_))))
    (define gxc#generate-meta-extern%
      (lambda (_self104745_ _stx104746_)
        (letrec ((_generate1104748_
                  (lambda (_id104869_ _eid104870_)
                    (let ((_eid104872_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _eid104870_))))
                      (if (interned-symbol? _eid104872_)
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _stx104746_
                             _eid104872_)))
                      (let ((__tmp114969
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-identifier _id104869_)))
                            (__tmp114968
                             (let ()
                               (declare (not safe))
                               (cons _eid104872_ '()))))
                        (declare (not safe))
                        (cons __tmp114969 __tmp114968))))))
          (let* ((_g104750104778_
                  (lambda (_g104751104775_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104751104775_))))
                 (_g104749104866_
                  (lambda (_g104751104781_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104751104781_))
                        (let ((_e104756104783_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104751104781_))))
                          (let ((_hd104755104786_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104756104783_)))
                                (_tl104754104788_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104756104783_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl104754104788_))
                                (let ((_g114970_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl104754104788_
                                          '0))))
                                  (begin
                                    (let ((_g114971_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g114970_)
                                                 (##vector-length _g114970_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g114971_ 2)))
                                          (error "Context expects 2 values"
                                                 _g114971_)))
                                    (let ((_target104757104791_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g114970_ 0)))
                                          (_tl104759104793_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g114970_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl104759104793_))
                                          (letrec ((_loop104760104796_
                                                    (lambda (_hd104758104799_
                                                             _eid104764104801_
                                                             _id104765104803_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd104758104799_))
                                                          (let ((_e104761104806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd104758104799_))))
                    (let ((_lp-hd104762104809_
                           (let ()
                             (declare (not safe))
                             (##car _e104761104806_)))
                          (_lp-tl104763104811_
                           (let ()
                             (declare (not safe))
                             (##cdr _e104761104806_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _lp-hd104762104809_))
                          (let ((_e104770104814_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _lp-hd104762104809_))))
                            (let ((_hd104769104817_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e104770104814_)))
                                  (_tl104768104819_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e104770104814_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl104768104819_))
                                  (let ((_e104773104822_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl104768104819_))))
                                    (let ((_hd104772104825_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e104773104822_)))
                                          (_tl104771104827_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e104773104822_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl104771104827_))
                                          (let ((__tmp114976
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd104772104825_
                                                         _eid104764104801_)))
                                                (__tmp114975
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd104769104817_
                                                         _id104765104803_))))
                                            (declare (not safe))
                                            (_loop104760104796_
                                             _lp-tl104763104811_
                                             __tmp114976
                                             __tmp114975))
                                          (let ()
                                            (declare (not safe))
                                            (_g104750104778_
                                             _g104751104781_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g104750104778_ _g104751104781_)))))
                          (let ()
                            (declare (not safe))
                            (_g104750104778_ _g104751104781_)))))
                  (let ((_eid104766104830_ (reverse _eid104764104801_))
                        (_id104767104832_ (reverse _id104765104803_)))
                    ((lambda (_L104835_ _L104836_)
                       (let ((__tmp114972
                              (map _generate1104748_
                                   (let ((__tmp114973
                                          (lambda (_g104851104854_
                                                   _g104852104856_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g104851104854_
                                                    _g104852104856_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp114973 '() _L104836_))
                                   (let ((__tmp114974
                                          (lambda (_g104858104861_
                                                   _g104859104863_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g104858104861_
                                                    _g104859104863_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp114974 '() _L104835_)))))
                         (declare (not safe))
                         (cons '%#extern __tmp114972)))
                     _eid104766104830_
                     _id104767104832_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_loop104760104796_
                                               _target104757104791_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_g104750104778_
                                             _g104751104781_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g104750104778_ _g104751104781_)))))
                        (let ()
                          (declare (not safe))
                          (_g104750104778_ _g104751104781_))))))
            (declare (not safe))
            (_g104749104866_ _stx104746_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_self104535_ _stx104536_)
        (letrec ((_generate1104538_
                  (lambda (_id104740_)
                    (let ((_eid104742_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _id104740_)))
                          (_ident104743_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _id104740_))))
                      (let ((__tmp114977
                             (let ((__tmp114978
                                    (let ()
                                      (declare (not safe))
                                      (cons _eid104742_ '()))))
                               (declare (not safe))
                               (cons _ident104743_ __tmp114978))))
                        (declare (not safe))
                        (cons '%#define-runtime __tmp114977)))))
                 (_generate*104539_
                  (lambda (_all104708_)
                    (let* ((_all104709104717_ _all104708_)
                           (_else104711104725_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (cons '%#begin _all104708_))))
                           (_K104713104730_
                            (lambda (_one104728_) _one104728_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all104709104717_))
                          (let ((_hd104714104733_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all104709104717_)))
                                (_tl104715104735_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all104709104717_))))
                            (let ((_one104738_ _hd104714104733_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl104715104735_))
                                  (let ()
                                    (declare (not safe))
                                    (_K104713104730_ _one104738_))
                                  (let ()
                                    (declare (not safe))
                                    (_else104711104725_)))))
                          (let ()
                            (declare (not safe))
                            (_else104711104725_)))))))
          (let* ((_g104541104558_
                  (lambda (_g104542104555_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104542104555_))))
                 (_g104540104705_
                  (lambda (_g104542104561_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104542104561_))
                        (let ((_e104547104563_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104542104561_))))
                          (let ((_hd104546104566_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104547104563_)))
                                (_tl104545104568_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104547104563_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl104545104568_))
                                (let ((_e104550104571_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl104545104568_))))
                                  (let ((_hd104549104574_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e104550104571_)))
                                        (_tl104548104576_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e104550104571_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl104548104576_))
                                        (let ((_e104553104579_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl104548104576_))))
                                          (let ((_hd104552104582_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e104553104579_)))
                                                (_tl104551104584_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e104553104579_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl104551104584_))
                                                ((lambda (_L104587_ _L104588_)
                                                   (let _lp104604_ ((_rest104606_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L104588_)
                            (_r104607_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((___stx114121114122_
                                                             _rest104606_)
                                                            (_g104612104629_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx114121114122_)))))
               (let ((___kont114123114124_
                      (lambda (_L104692_)
                        (let ()
                          (declare (not safe))
                          (_lp104604_ _L104692_ _r104607_))))
                     (___kont114125114126_
                      (lambda (_L104665_ _L104666_)
                        (let ((__tmp114979
                               (let ((__tmp114980
                                      (let ()
                                        (declare (not safe))
                                        (_generate1104538_ _L104666_))))
                                 (declare (not safe))
                                 (cons __tmp114980 _r104607_))))
                          (declare (not safe))
                          (_lp104604_ _L104665_ __tmp114979))))
                     (___kont114127114128_
                      (lambda (_L104641_)
                        (let ((__tmp114981
                               (let ((__tmp114982
                                      (let ((__tmp114983
                                             (let ()
                                               (declare (not safe))
                                               (_generate1104538_ _L104641_))))
                                        (declare (not safe))
                                        (cons __tmp114983 '()))))
                                 (declare (not safe))
                                 (foldl1 cons __tmp114982 _r104607_))))
                          (declare (not safe))
                          (_generate*104539_ __tmp114981))))
                     (___kont114129114130_
                      (lambda ()
                        (let ((__tmp114984 (reverse _r104607_)))
                          (declare (not safe))
                          (_generate*104539_ __tmp114984)))))
                 (let ((_g104610104652_
                        (lambda ()
                          (let ((_L104641_ ___stx114121114122_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _L104641_))
                                (___kont114127114128_ _L104641_)
                                (___kont114129114130_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? ___stx114121114122_))
                       (let ((_e104617104681_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e ___stx114121114122_))))
                         (let ((_tl104615104686_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e104617104681_)))
                               (_hd104616104684_
                                (let ()
                                  (declare (not safe))
                                  (##car _e104617104681_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _hd104616104684_))
                               (let ((_e104618104689_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd104616104684_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e104618104689_ '#f))
                                     (___kont114123114124_ _tl104615104686_)
                                     (___kont114125114126_
                                      _tl104615104686_
                                      _hd104616104684_)))
                               (___kont114125114126_
                                _tl104615104686_
                                _hd104616104684_))))
                       (let () (declare (not safe)) (_g104610104652_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd104552104582_
                                                 _hd104549104574_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g104541104558_
                                                   _g104542104561_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g104541104558_ _g104542104561_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g104541104558_ _g104542104561_)))))
                        (let ()
                          (declare (not safe))
                          (_g104541104558_ _g104542104561_))))))
            (declare (not safe))
            (_g104540104705_ _stx104536_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_self104432_ _stx104433_)
        (let* ((_g104435104452_
                (lambda (_g104436104449_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104436104449_))))
               (_g104434104532_
                (lambda (_g104436104455_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104436104455_))
                      (let ((_e104441104457_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104436104455_))))
                        (let ((_hd104440104460_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104441104457_)))
                              (_tl104439104462_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104441104457_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104439104462_))
                              (let ((_e104444104465_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104439104462_))))
                                (let ((_hd104443104468_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104444104465_)))
                                      (_tl104442104470_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104444104465_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104442104470_))
                                      (let ((_e104447104473_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104442104470_))))
                                        (let ((_hd104446104476_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104447104473_)))
                                              (_tl104445104478_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104447104473_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl104445104478_))
                                              ((lambda (_L104481_ _L104482_)
                                                 (let* ((_eid104497_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _L104482_)))
                                                        (_phi104499_
                                                         (let ((__tmp114985
                                                                (gx#current-expander-phi)))
                                                           (declare (not safe))
                                                           (fx+ __tmp114985
                                                                '1)))
                                                        (_block104501_
                                                         (let ((__tmp114986
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _self104432_ 'state))))
                   (declare (not safe))
                   (gxc#meta-state-begin-phi! __tmp114986 _phi104499_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_g104504104511_
                                                           (lambda (_g104505104508_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _g104505104508_))))
                  (_g104503104529_
                   (lambda (_g104505104514_)
                     ((lambda (_L104516_)
                        (let ()
                          (let ((__tmp114991
                                 (let ()
                                   (declare (not safe))
                                   (slot-ref__0 _self104432_ 'state)))
                                (__tmp114987
                                 (let ((__tmp114990
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0
                                           '#f
                                           '%#define-runtime)))
                                       (__tmp114988
                                        (let ((__tmp114989
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L104481_ '()))))
                                          (declare (not safe))
                                          (cons _L104516_ __tmp114989))))
                                   (declare (not safe))
                                   (cons __tmp114990 __tmp114988))))
                            (declare (not safe))
                            (gxc#meta-state-add-phi!
                             __tmp114991
                             _phi104499_
                             __tmp114987))))
                      _g104505104514_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g104503104529_
                                                      _eid104497_))
                                                   (if _block104501_
                                                       (let ((__tmp114995
                                                              (let ((__tmp115001
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp115002
                                    (let ((__tmp115003
                                           (let ((__tmp115004
                                                  (let ((__tmp115008
                                                         (let ((__tmp115009
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'load-module '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp115009)))
                (__tmp115005
                 (let ((__tmp115006
                        (let ((__tmp115007
                               (let ()
                                 (declare (not safe))
                                 (cons _block104501_ '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp115007))))
                   (declare (not safe))
                   (cons __tmp115006 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp115008
                                                          __tmp115005))))
                                             (declare (not safe))
                                             (cons '%#call __tmp115004))))
                                      (declare (not safe))
                                      (cons __tmp115003 '()))))
                               (declare (not safe))
                               (cons '%#begin-syntax __tmp115002)))
                            (__tmp114996
                             (let ((__tmp114997
                                    (let ((__tmp114998
                                           (let ((__tmp115000
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-identifier
                                                     _L104482_)))
                                                 (__tmp114999
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _eid104497_ '()))))
                                             (declare (not safe))
                                             (cons __tmp115000 __tmp114999))))
                                      (declare (not safe))
                                      (cons '%#define-syntax __tmp114998))))
                               (declare (not safe))
                               (cons __tmp114997 '()))))
                        (declare (not safe))
                        (cons __tmp115001 __tmp114996))))
                 (declare (not safe))
                 (cons '%#begin __tmp114995))
               (let ((__tmp114992
                      (let ((__tmp114994
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-identifier _L104482_)))
                            (__tmp114993
                             (let ()
                               (declare (not safe))
                               (cons _eid104497_ '()))))
                        (declare (not safe))
                        (cons __tmp114994 __tmp114993))))
                 (declare (not safe))
                 (cons '%#define-syntax __tmp114992)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd104446104476_
                                               _hd104443104468_)
                                              (let ()
                                                (declare (not safe))
                                                (_g104435104452_
                                                 _g104436104455_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g104435104452_ _g104436104455_)))))
                              (let ()
                                (declare (not safe))
                                (_g104435104452_ _g104436104455_)))))
                      (let ()
                        (declare (not safe))
                        (_g104435104452_ _g104436104455_))))))
          (declare (not safe))
          (_g104434104532_ _stx104433_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_self104364_ _stx104365_)
        (let* ((_g104367104384_
                (lambda (_g104368104381_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104368104381_))))
               (_g104366104429_
                (lambda (_g104368104387_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104368104387_))
                      (let ((_e104373104389_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104368104387_))))
                        (let ((_hd104372104392_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104373104389_)))
                              (_tl104371104394_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104373104389_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104371104394_))
                              (let ((_e104376104397_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104371104394_))))
                                (let ((_hd104375104400_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104376104397_)))
                                      (_tl104374104402_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104376104397_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104374104402_))
                                      (let ((_e104379104405_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104374104402_))))
                                        (let ((_hd104378104408_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104379104405_)))
                                              (_tl104377104410_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104379104405_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl104377104410_))
                                              ((lambda (_L104413_ _L104414_)
                                                 (let ((__tmp115010
                                                        (let ((__tmp115013
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-identifier _L104414_)))
                      (__tmp115011
                       (let ((__tmp115012
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-identifier _L104413_))))
                         (declare (not safe))
                         (cons __tmp115012 '()))))
                  (declare (not safe))
                  (cons __tmp115013 __tmp115011))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#define-alias
                                                         __tmp115010)))
                                               _hd104378104408_
                                               _hd104375104400_)
                                              (let ()
                                                (declare (not safe))
                                                (_g104367104384_
                                                 _g104368104387_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g104367104384_ _g104368104387_)))))
                              (let ()
                                (declare (not safe))
                                (_g104367104384_ _g104368104387_)))))
                      (let ()
                        (declare (not safe))
                        (_g104367104384_ _g104368104387_))))))
          (declare (not safe))
          (_g104366104429_ _stx104365_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_self104361_ _stx104362_)
        (let ((__tmp115015
               (let () (declare (not safe)) (slot-ref__0 _self104361_ 'state)))
              (__tmp115014 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp115015 __tmp115014 _stx104362_))
        (let ()
          (declare (not safe))
          (gxc#generate-meta-define-values% _self104361_ _stx104362_))))
    (define gxc#generate-meta-phi-expr
      (lambda (_self104358_ _stx104359_)
        (let ((__tmp115017
               (let () (declare (not safe)) (slot-ref__0 _self104358_ 'state)))
              (__tmp115016 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp115017 __tmp115016 _stx104359_))
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp115020 (list))
            (__tmp115018
             (let ((__tmp115019
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115019 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp115020
         '(src n open blocks)
         __tmp115018
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _$args104355_
        (apply make-instance gxc#meta-state::t _$args104355_)))
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
      (lambda (_self104352_ _ctx104353_)
        (if (let ((__tmp115029
                   (let ()
                     (declare (not safe))
                     (##structure-length _self104352_))))
              (declare (not safe))
              (##fx< '4 __tmp115029))
            (begin
              (let ((__tmp115023
                     (let ((__tmp115024
                            (##structure-ref
                             _ctx104353_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp115024)))
                    (__tmp115022
                     (let ()
                       (declare (not safe))
                       (##structure-type _self104352_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self104352_
                 __tmp115023
                 '1
                 __tmp115022
                 '#f))
              (let ((__tmp115025
                     (let ()
                       (declare (not safe))
                       (##structure-type _self104352_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self104352_
                 '1
                 '2
                 __tmp115025
                 '#f))
              (let ((__tmp115027
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp115026
                     (let ()
                       (declare (not safe))
                       (##structure-type _self104352_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self104352_
                 __tmp115027
                 '3
                 __tmp115026
                 '#f))
              (let ((__tmp115028
                     (let ()
                       (declare (not safe))
                       (##structure-type _self104352_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self104352_
                 '()
                 '4
                 __tmp115028
                 '#f)))
            (let ((__tmp115021
                   (let ()
                     (declare (not safe))
                     (##vector-length _self104352_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self104352_
                     '4
                     __tmp115021)))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp115032 (list))
            (__tmp115030
             (let ((__tmp115031
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115031 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp115032
         '(ctx phi n code)
         __tmp115030
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _$args104227_
        (apply make-instance gxc#meta-state-block::t _$args104227_)))
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
      (lambda (_state104186_ _phi104187_)
        (let* ((_state104188104196_ _state104186_)
               (_E104190104200_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _state104188104196_))))
               (_K104191104209_
                (lambda (_open104203_ _n104204_ _src104205_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _open104203_ _phi104187_))
                      '#f
                      (let ((_block-ref104207_
                             (string-append
                              _src104205_
                              '"~"
                              (number->string _n104204_))))
                        (##structure-set!
                         _state104186_
                         (let () (declare (not safe)) (fx+ _n104204_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp115033
                               (let ((__tmp115034
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp115034
                                  _phi104187_
                                  _n104204_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _open104203_ _phi104187_ __tmp115033))
                        _block-ref104207_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _state104188104196_
                 'gxc#meta-state::t))
              (let* ((_e104192104212_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state104188104196_
                         '1
                         gxc#meta-state::t
                         '#f)))
                     (_src104215_ _e104192104212_)
                     (_e104193104217_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state104188104196_
                         '2
                         gxc#meta-state::t
                         '#f)))
                     (_n104220_ _e104193104217_)
                     (_e104194104222_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state104188104196_
                         '3
                         gxc#meta-state::t
                         '#f)))
                     (_open104225_ _e104194104222_))
                (declare (not safe))
                (_K104191104209_ _open104225_ _n104220_ _src104215_))
              (let () (declare (not safe)) (_E104190104200_))))))
    (define gxc#meta-state-add-phi!
      (lambda (_state104180_ _phi104181_ _stx104182_)
        (let ((_block104184_
               (let ((__tmp115035
                      (##structure-ref
                       _state104180_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp115035 _phi104181_))))
          (##structure-set!
           _block104184_
           (let ((__tmp115036
                  (##structure-ref
                   _block104184_
                   '4
                   gxc#meta-state-block::t
                   '#f)))
             (declare (not safe))
             (cons _stx104182_ __tmp115036))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_state104175_)
        (##structure-set!
         _state104175_
         (let ((__tmp115039
                (lambda (_g115040_ _block104177_ _r104178_)
                  (let ()
                    (declare (not safe))
                    (cons _block104177_ _r104178_))))
               (__tmp115038
                (##structure-ref _state104175_ '4 gxc#meta-state::t '#f))
               (__tmp115037
                (##structure-ref _state104175_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp115039 __tmp115038 __tmp115037))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state104175_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_state104127_)
        (let () (declare (not safe)) (gxc#meta-state-end-phi! _state104127_))
        (let ((__tmp115042
               (lambda (_block104129_ _r104130_)
                 (let* ((_block104131104140_ _block104129_)
                        (_E104133104144_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _block104131104140_))))
                        (_K104134104152_
                         (lambda (_code104147_
                                  _n104148_
                                  _phi104149_
                                  _ctx104150_)
                           (if (let ()
                                 (declare (not safe))
                                 (null? _code104147_))
                               _r104130_
                               (let ((__tmp115043
                                      (let ((__tmp115044
                                             (let ((__tmp115045
                                                    (let ((__tmp115046
                                                           (let ((__tmp115047
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp115048 (reverse _code104147_)))
                            (declare (not safe))
                            (cons '%#begin __tmp115048))))
                     (declare (not safe))
                     (cons __tmp115047 '()))))
              (declare (not safe))
              (cons _n104148_ __tmp115046))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _phi104149_
                                                     __tmp115045))))
                                        (declare (not safe))
                                        (cons _ctx104150_ __tmp115044))))
                                 (declare (not safe))
                                 (cons __tmp115043 _r104130_))))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _block104131104140_
                          'gxc#meta-state-block::t))
                       (let* ((_e104135104155_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block104131104140_
                                  '1
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_ctx104158_ _e104135104155_)
                              (_e104136104160_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block104131104140_
                                  '2
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_phi104163_ _e104136104160_)
                              (_e104137104165_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block104131104140_
                                  '3
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_n104168_ _e104137104165_)
                              (_e104138104170_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block104131104140_
                                  '4
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_code104173_ _e104138104170_))
                         (declare (not safe))
                         (_K104134104152_
                          _code104173_
                          _n104168_
                          _phi104163_
                          _ctx104158_))
                       (let () (declare (not safe)) (_E104133104144_))))))
              (__tmp115041
               (##structure-ref _state104127_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl1 __tmp115042 '() __tmp115041))))
    (define gxc#collect-expression-refs
      (lambda (_stx104123_)
        (let ((_ht104125_ (let () (declare (not safe)) (make-hash-table-eq))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-expression-refs _stx104123_ 'table: _ht104125_))
          _ht104125_)))
    (define gxc#collect-refs-ref%
      (lambda (_self104066_ _stx104067_)
        (let* ((_g104069104082_
                (lambda (_g104070104079_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104070104079_))))
               (_g104068104120_
                (lambda (_g104070104085_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104070104085_))
                      (let ((_e104074104087_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104070104085_))))
                        (let ((_hd104073104090_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104074104087_)))
                              (_tl104072104092_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104074104087_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104072104092_))
                              (let ((_e104077104095_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104072104092_))))
                                (let ((_hd104076104098_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104077104095_)))
                                      (_tl104075104100_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104077104095_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl104075104100_))
                                      ((lambda (_L104103_)
                                         (let* ((_bind104115_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _L104103_)))
                                                (_eid104117_
                                                 (if _bind104115_
                                                     (##structure-ref
                                                      _bind104115_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L104103_)))))
                                           (let ((__tmp115049
                                                  (let ()
                                                    (declare (not safe))
                                                    (slot-ref__0
                                                     _self104066_
                                                     'table))))
                                             (declare (not safe))
                                             (hash-put!
                                              __tmp115049
                                              _eid104117_
                                              _eid104117_))))
                                       _hd104076104098_)
                                      (let ()
                                        (declare (not safe))
                                        (_g104069104082_ _g104070104085_)))))
                              (let ()
                                (declare (not safe))
                                (_g104069104082_ _g104070104085_)))))
                      (let ()
                        (declare (not safe))
                        (_g104069104082_ _g104070104085_))))))
          (declare (not safe))
          (_g104068104120_ _stx104067_))))
    (define gxc#collect-refs-setq%
      (lambda (_self103993_ _stx103994_)
        (let* ((_g103996104013_
                (lambda (_g103997104010_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103997104010_))))
               (_g103995104063_
                (lambda (_g103997104016_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103997104016_))
                      (let ((_e104002104018_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103997104016_))))
                        (let ((_hd104001104021_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104002104018_)))
                              (_tl104000104023_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104002104018_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104000104023_))
                              (let ((_e104005104026_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104000104023_))))
                                (let ((_hd104004104029_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104005104026_)))
                                      (_tl104003104031_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104005104026_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104003104031_))
                                      (let ((_e104008104034_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104003104031_))))
                                        (let ((_hd104007104037_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104008104034_)))
                                              (_tl104006104039_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104008104034_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl104006104039_))
                                              ((lambda (_L104042_ _L104043_)
                                                 (let* ((_bind104058_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _L104043_)))
                                                        (_eid104060_
                                                         (if _bind104058_
                                                             (##structure-ref
                                                              _bind104058_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _L104043_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp115050
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self103993_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp115050
                                                      _eid104060_
                                                      _eid104060_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self103993_
                                                      _L104042_))))
                                               _hd104007104037_
                                               _hd104004104029_)
                                              (let ()
                                                (declare (not safe))
                                                (_g103996104013_
                                                 _g103997104016_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103996104013_ _g103997104016_)))))
                              (let ()
                                (declare (not safe))
                                (_g103996104013_ _g103997104016_)))))
                      (let ()
                        (declare (not safe))
                        (_g103996104013_ _g103997104016_))))))
          (declare (not safe))
          (_g103995104063_ _stx103994_))))
    (define gxc#find-runtime-begin%
      (lambda (_self103950_ _stx103951_)
        (let* ((_g103953103963_
                (lambda (_g103954103960_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103954103960_))))
               (_g103952103990_
                (lambda (_g103954103966_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103954103966_))
                      (let ((_e103958103968_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103954103966_))))
                        (let ((_hd103957103971_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103958103968_)))
                              (_tl103956103973_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103958103968_))))
                          ((lambda (_L103976_)
                             (let ((__tmp115051
                                    (lambda (_g103985103987_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self103950_
                                         _g103985103987_)))))
                               (declare (not safe))
                               (ormap1 __tmp115051 _L103976_)))
                           _tl103956103973_)))
                      (let ()
                        (declare (not safe))
                        (_g103953103963_ _g103954103966_))))))
          (declare (not safe))
          (_g103952103990_ _stx103951_))))
    (define gxc#count-values-single% (lambda (_self103947_ _stx103948_) '1))
    (define gxc#count-values-call%
      (lambda (_self103813_ _stx103814_)
        (let* ((___stx114151114152_ _stx103814_)
               (_g103817103846_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx114151114152_)))))
          (let ((___kont114153114154_
                 (lambda (_L103914_ _L103915_)
                   (length (let ((__tmp115052
                                  (lambda (_g103936103939_ _g103937103941_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g103936103939_
                                            _g103937103941_)))))
                             (declare (not safe))
                             (foldr1 __tmp115052 '() _L103914_)))))
                (___kont114157114158_ (lambda () '#f)))
            (let ((___match114196114197_
                   (lambda (_e103823103858_
                            _hd103822103861_
                            _tl103821103863_
                            _e103826103866_
                            _hd103825103869_
                            _tl103824103871_
                            _e103829103874_
                            _hd103828103877_
                            _tl103827103879_
                            _e103832103882_
                            _hd103831103885_
                            _tl103830103887_
                            ___splice114155114156_
                            _target103833103890_
                            _tl103835103892_)
                     (letrec ((_loop103836103895_
                               (lambda (_hd103834103898_ _rand103840103900_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd103834103898_))
                                     (let ((_e103837103903_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd103834103898_))))
                                       (let ((_lp-tl103839103908_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e103837103903_)))
                                             (_lp-hd103838103906_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e103837103903_))))
                                         (let ((__tmp115053
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _lp-hd103838103906_
                                                        _rand103840103900_))))
                                           (declare (not safe))
                                           (_loop103836103895_
                                            _lp-tl103839103908_
                                            __tmp115053))))
                                     (let ((_rand103841103911_
                                            (reverse _rand103840103900_)))
                                       (let ((_L103914_ _rand103841103911_)
                                             (_L103915_ _hd103831103885_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L103915_
                                                'values))
                                             (___kont114153114154_
                                              _L103914_
                                              _L103915_)
                                             (___kont114157114158_))))))))
                       (let ()
                         (declare (not safe))
                         (_loop103836103895_ _target103833103890_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx114151114152_))
                  (let ((_e103823103858_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx114151114152_))))
                    (let ((_tl103821103863_
                           (let ()
                             (declare (not safe))
                             (##cdr _e103823103858_)))
                          (_hd103822103861_
                           (let ()
                             (declare (not safe))
                             (##car _e103823103858_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl103821103863_))
                          (let ((_e103826103866_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl103821103863_))))
                            (let ((_tl103824103871_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e103826103866_)))
                                  (_hd103825103869_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e103826103866_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd103825103869_))
                                  (let ((_e103829103874_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd103825103869_))))
                                    (let ((_tl103827103879_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e103829103874_)))
                                          (_hd103828103877_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e103829103874_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd103828103877_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd103828103877_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl103827103879_))
                                                  (let ((_e103832103882_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl103827103879_))))
                                                    (let ((_tl103830103887_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e103832103882_)))
                                                          (_hd103831103885_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e103832103882_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl103830103887_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl103824103871_))
                      (let ((___splice114155114156_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl103824103871_ '0))))
                        (let ((_tl103835103892_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice114155114156_ '1)))
                              (_target103833103890_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice114155114156_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl103835103892_))
                              (___match114196114197_
                               _e103823103858_
                               _hd103822103861_
                               _tl103821103863_
                               _e103826103866_
                               _hd103825103869_
                               _tl103824103871_
                               _e103829103874_
                               _hd103828103877_
                               _tl103827103879_
                               _e103832103882_
                               _hd103831103885_
                               _tl103830103887_
                               ___splice114155114156_
                               _target103833103890_
                               _tl103835103892_)
                              (___kont114157114158_))))
                      (___kont114157114158_))
                  (___kont114157114158_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont114157114158_))
                                              (___kont114157114158_))
                                          (___kont114157114158_))))
                                  (___kont114157114158_))))
                          (___kont114157114158_))))
                  (___kont114157114158_)))))))
    (define gxc#count-values-if%
      (lambda (_self103716_ _stx103717_)
        (let* ((_g103719103740_
                (lambda (_g103720103737_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103720103737_))))
               (_g103718103810_
                (lambda (_g103720103743_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103720103743_))
                      (let ((_e103726103745_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103720103743_))))
                        (let ((_hd103725103748_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103726103745_)))
                              (_tl103724103750_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103726103745_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103724103750_))
                              (let ((_e103729103753_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103724103750_))))
                                (let ((_hd103728103756_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103729103753_)))
                                      (_tl103727103758_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103729103753_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl103727103758_))
                                      (let ((_e103732103761_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl103727103758_))))
                                        (let ((_hd103731103764_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e103732103761_)))
                                              (_tl103730103766_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e103732103761_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl103730103766_))
                                              (let ((_e103735103769_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl103730103766_))))
                                                (let ((_hd103734103772_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e103735103769_)))
                                                      (_tl103733103774_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e103735103769_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl103733103774_))
                                                      ((lambda (_L103777_
                                                                _L103778_
                                                                _L103779_)
                                                         (let ((_c1103796103798_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _self103716_ _L103778_))))
                   (if _c1103796103798_
                       (let* ((_c1103801_ _c1103796103798_)
                              (_c2103802103804_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self103716_ _L103777_))))
                         (if _c2103802103804_
                             (let ((_c2103807_ _c2103802103804_))
                               (if (fx= _c1103801_ _c2103807_) _c1103801_ '#f))
                             '#f))
                       '#f)))
               _hd103734103772_
               _hd103731103764_
               _hd103728103756_)
              (let ()
                (declare (not safe))
                (_g103719103740_ _g103720103743_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g103719103740_
                                                 _g103720103743_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103719103740_ _g103720103743_)))))
                              (let ()
                                (declare (not safe))
                                (_g103719103740_ _g103720103743_)))))
                      (let ()
                        (declare (not safe))
                        (_g103719103740_ _g103720103743_))))))
          (declare (not safe))
          (_g103718103810_ _stx103717_))))))
