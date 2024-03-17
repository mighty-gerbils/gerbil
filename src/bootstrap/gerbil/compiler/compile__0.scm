(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1710694204)
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
        (letrec ((_hash-e109830_
                  (lambda (_id109832_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _id109832_))))))
          (let ()
            (declare (not safe))
            (make-hash-table
             'test:
             gx#bound-identifier=?
             'hash:
             _hash-e109830_)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp111188 (list gxc#::void::t))
            (__tmp111186
             (let ((__tmp111187
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp111187 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp111188
         '()
         __tmp111186
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _$args109826_
        (apply make-instance gxc#::collect-bindings::t _$args109826_)))
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
      (lambda (_stx109818_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_self109821_
                (let ((__obj111162
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj111162))
               (__tmp111189
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self109821_ _stx109818_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp111189
           gxc#current-compile-method
           _self109821_))))
    (define gxc#::lift-modules::t
      (let ((__tmp111192 (list gxc#::void::t))
            (__tmp111190
             (let ((__tmp111191
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp111191 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp111192
         '(modules)
         __tmp111190
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _$args109815_
        (apply make-instance gxc#::lift-modules::t _$args109815_)))
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
      (lambda (_g111193_ _modules109786109789_ _stx109791_)
        (let ((_modules109794_
               (if (let ()
                     (declare (not safe))
                     (eq? _modules109786109789_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _modules109786109789_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_self109796_
                  (let ((__obj111164
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj111164
                       _modules109794_
                       '1
                       gxc#::lift-modules::t
                       '#f))
                    __obj111164))
                 (__tmp111194
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self109796_ _stx109791_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp111194
             gxc#current-compile-method
             _self109796_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_keys109785109803_ . _args109805_)
        (apply gxc#apply-lift-modules__%
               _keys109785109803_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys109785109803_
                  'modules:
                  absent-value))
               _args109805_)))
    (define gxc#apply-lift-modules
      (lambda _args109787109811_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _args109787109811_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp111197 (list))
            (__tmp111195
             (let ((__tmp111196
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp111196 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp111197
         '()
         __tmp111195
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _$args109781_
        (apply make-instance gxc#::find-runtime-code::t _$args109781_)))
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
      (lambda (_stx109773_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_self109776_
                (let ((__obj111166
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj111166))
               (__tmp111198
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self109776_ _stx109773_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp111198
           gxc#current-compile-method
           _self109776_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp111201 (list gxc#::false::t))
            (__tmp111199
             (let ((__tmp111200
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp111200 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp111201
         '()
         __tmp111199
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _$args109770_
        (apply make-instance gxc#::find-lambda-expression::t _$args109770_)))
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
      (lambda (_stx109762_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_self109765_
                (let ((__obj111168
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj111168))
               (__tmp111202
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self109765_ _stx109762_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp111202
           gxc#current-compile-method
           _self109765_))))
    (define gxc#::count-values::t
      (let ((__tmp111205 (list gxc#::false-expression::t))
            (__tmp111203
             (let ((__tmp111204
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp111204 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp111205
         '()
         __tmp111203
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _$args109759_
        (apply make-instance gxc#::count-values::t _$args109759_)))
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
      (lambda (_stx109751_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_self109754_
                (let ((__obj111170
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj111170))
               (__tmp111206
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self109754_ _stx109751_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp111206
           gxc#current-compile-method
           _self109754_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp111207 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp111207
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _$args109748_
        (apply make-instance gxc#::generate-runtime-empty::t _$args109748_)))
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
      (let ((__tmp111210 (list gxc#::generate-runtime-empty::t))
            (__tmp111208
             (let ((__tmp111209
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp111209 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp111210
         '()
         __tmp111208
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _$args109744_
        (apply make-instance gxc#::generate-loader::t _$args109744_)))
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
      (lambda (_stx109736_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_self109739_
                (let ((__obj111173
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj111173))
               (__tmp111211
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self109739_ _stx109736_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp111211
           gxc#current-compile-method
           _self109739_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp111212 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp111212
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _$args109733_
        (apply make-instance gxc#::generate-runtime::t _$args109733_)))
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
      (lambda (_stx109725_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_self109728_
                (let ((__obj111175
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj111175))
               (__tmp111213
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self109728_ _stx109725_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp111213
           gxc#current-compile-method
           _self109728_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp111216 (list gxc#::generate-runtime::t))
            (__tmp111214
             (let ((__tmp111215
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp111215 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp111216
         '()
         __tmp111214
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _$args109722_
        (apply make-instance gxc#::generate-runtime-phi::t _$args109722_)))
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
      (lambda (_stx109714_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_self109717_
                (let ((__obj111177
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj111177))
               (__tmp111217
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self109717_ _stx109714_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp111217
           gxc#current-compile-method
           _self109717_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp111218 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp111218
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _$args109711_
        (apply make-instance gxc#::collect-expression-refs::t _$args109711_)))
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
      (lambda (_g111219_ _table109682109685_ _stx109687_)
        (let ((_table109690_
               (if (let ()
                     (declare (not safe))
                     (eq? _table109682109685_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _table109682109685_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_self109692_
                  (let ((__obj111179
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj111179
                       _table109690_
                       '1
                       gxc#::collect-expression-refs::t
                       '#f))
                    __obj111179))
                 (__tmp111220
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self109692_ _stx109687_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp111220
             gxc#current-compile-method
             _self109692_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_keys109681109699_ . _args109701_)
        (apply gxc#apply-collect-expression-refs__%
               _keys109681109699_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys109681109699_ 'table: absent-value))
               _args109701_)))
    (define gxc#apply-collect-expression-refs
      (lambda _args109683109707_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _args109683109707_)))
    (define gxc#::generate-meta::t
      (let ((__tmp111223 (list gxc#::void-expression::t))
            (__tmp111221
             (let ((__tmp111222
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp111222 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp111223
         '(state)
         __tmp111221
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _$args109677_
        (apply make-instance gxc#::generate-meta::t _$args109677_)))
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
      (lambda (_g111224_ _state109648109651_ _stx109653_)
        (let ((_state109656_
               (if (let ()
                     (declare (not safe))
                     (eq? _state109648109651_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _state109648109651_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_self109658_
                  (let ((__obj111181
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj111181
                       _state109656_
                       '1
                       gxc#::generate-meta::t
                       '#f))
                    __obj111181))
                 (__tmp111225
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self109658_ _stx109653_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp111225
             gxc#current-compile-method
             _self109658_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_keys109647109665_ . _args109667_)
        (apply gxc#apply-generate-meta__%
               _keys109647109665_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys109647109665_ 'state: absent-value))
               _args109667_)))
    (define gxc#apply-generate-meta
      (lambda _args109649109673_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _args109649109673_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp111228 (list))
            (__tmp111226
             (let ((__tmp111227
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp111227 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp111228
         '(state)
         __tmp111226
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _$args109643_
        (apply make-instance gxc#::generate-meta-phi::t _$args109643_)))
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
      (lambda (_g111229_ _state109614109617_ _stx109619_)
        (let ((_state109622_
               (if (let ()
                     (declare (not safe))
                     (eq? _state109614109617_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _state109614109617_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_self109624_
                  (let ((__obj111183
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj111183
                       _state109622_
                       '1
                       gxc#::generate-meta-phi::t
                       '#f))
                    __obj111183))
                 (__tmp111230
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self109624_ _stx109619_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp111230
             gxc#current-compile-method
             _self109624_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_keys109613109631_ . _args109633_)
        (apply gxc#apply-generate-meta-phi__%
               _keys109613109631_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys109613109631_ 'state: absent-value))
               _args109633_)))
    (define gxc#apply-generate-meta-phi
      (lambda _args109615109639_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _args109615109639_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_self109542_ _stx109543_)
        (let* ((_g109545109562_
                (lambda (_g109546109559_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g109546109559_))))
               (_g109544109609_
                (lambda (_g109546109565_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g109546109565_))
                      (let ((_e109549109567_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g109546109565_))))
                        (let ((_hd109550109570_
                               (let ()
                                 (declare (not safe))
                                 (##car _e109549109567_)))
                              (_tl109551109572_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e109549109567_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl109551109572_))
                              (let ((_e109552109575_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl109551109572_))))
                                (let ((_hd109553109578_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e109552109575_)))
                                      (_tl109554109580_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e109552109575_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl109554109580_))
                                      (let ((_e109555109583_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl109554109580_))))
                                        (let ((_hd109556109586_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e109555109583_)))
                                              (_tl109557109588_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e109555109583_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl109557109588_))
                                              ((lambda (_L109591_ _L109592_)
                                                 (let ((__tmp111231
                                                        (lambda (_bind109607_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _bind109607_))
                      (let ()
                        (declare (not safe))
                        (gxc#add-module-binding! _bind109607_ '#f))
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp111231
                                                    _L109592_)))
                                               _hd109556109586_
                                               _hd109553109578_)
                                              (let ()
                                                (declare (not safe))
                                                (_g109545109562_
                                                 _g109546109565_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g109545109562_ _g109546109565_)))))
                              (let ()
                                (declare (not safe))
                                (_g109545109562_ _g109546109565_)))))
                      (let ()
                        (declare (not safe))
                        (_g109545109562_ _g109546109565_))))))
          (declare (not safe))
          (_g109544109609_ _stx109543_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_self109474_ _stx109475_)
        (let* ((_g109477109494_
                (lambda (_g109478109491_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g109478109491_))))
               (_g109476109539_
                (lambda (_g109478109497_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g109478109497_))
                      (let ((_e109481109499_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g109478109497_))))
                        (let ((_hd109482109502_
                               (let ()
                                 (declare (not safe))
                                 (##car _e109481109499_)))
                              (_tl109483109504_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e109481109499_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl109483109504_))
                              (let ((_e109484109507_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl109483109504_))))
                                (let ((_hd109485109510_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e109484109507_)))
                                      (_tl109486109512_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e109484109507_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl109486109512_))
                                      (let ((_e109487109515_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl109486109512_))))
                                        (let ((_hd109488109518_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e109487109515_)))
                                              (_tl109489109520_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e109487109515_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl109489109520_))
                                              ((lambda (_L109523_ _L109524_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#add-module-binding!
                                                    _L109524_
                                                    '#t)))
                                               _hd109488109518_
                                               _hd109485109510_)
                                              (let ()
                                                (declare (not safe))
                                                (_g109477109494_
                                                 _g109478109497_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g109477109494_ _g109478109497_)))))
                              (let ()
                                (declare (not safe))
                                (_g109477109494_ _g109478109497_)))))
                      (let ()
                        (declare (not safe))
                        (_g109477109494_ _g109478109497_))))))
          (declare (not safe))
          (_g109476109539_ _stx109475_))))
    (define gxc#lift-modules-module%
      (lambda (_self109416_ _stx109417_)
        (let* ((_g109419109433_
                (lambda (_g109420109430_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g109420109430_))))
               (_g109418109471_
                (lambda (_g109420109436_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g109420109436_))
                      (let ((_e109423109438_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g109420109436_))))
                        (let ((_hd109424109441_
                               (let ()
                                 (declare (not safe))
                                 (##car _e109423109438_)))
                              (_tl109425109443_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e109423109438_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl109425109443_))
                              (let ((_e109426109446_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl109425109443_))))
                                (let ((_hd109427109449_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e109426109446_)))
                                      (_tl109428109451_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e109426109446_))))
                                  ((lambda (_L109454_ _L109455_)
                                     (let ((_ctx109468_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _L109455_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0 _self109416_ 'modules))
                                        (let ((__tmp111232
                                               (unbox (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _self109416_
                                                         'modules)))))
                                          (declare (not safe))
                                          (cons _ctx109468_ __tmp111232)))
                                       (let ((__tmp111233
                                              (lambda ()
                                                (let ((__tmp111234
                                                       (##structure-ref
                                                        _ctx109468_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self109416_
                                                   __tmp111234)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp111233
                                          gx#current-expander-context
                                          _ctx109468_))))
                                   _tl109428109451_
                                   _hd109427109449_)))
                              (let ()
                                (declare (not safe))
                                (_g109419109433_ _g109420109436_)))))
                      (let ()
                        (declare (not safe))
                        (_g109419109433_ _g109420109436_))))))
          (declare (not safe))
          (_g109418109471_ _stx109417_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_decls109372109374_ (gxc#current-compile-decls)))
          (if _decls109372109374_
              (let ((_decls109377_ _decls109372109374_))
                (let _lp109379_ ((_rest109381_ _decls109377_))
                  (let* ((_rest109382109390_ _rest109381_)
                         (_else109384109398_ (lambda () '#f))
                         (_K109386109404_
                          (lambda (_decls109401_ _decl109402_)
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _decl109402_ '(not safe)))
                                '#t
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _decl109402_ '(safe)))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_lp109379_ _decls109401_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _rest109382109390_))
                        (let ((_hd109387109407_
                               (let ()
                                 (declare (not safe))
                                 (##car _rest109382109390_)))
                              (_tl109388109409_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _rest109382109390_))))
                          (let* ((_decl109412_ _hd109387109407_)
                                 (_decls109414_ _tl109388109409_))
                            (declare (not safe))
                            (_K109386109404_ _decls109414_ _decl109412_)))
                        (let () (declare (not safe)) (_else109384109398_))))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_id109366_ _syntax?109367_)
        (let ((_eid109369_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _id109366_))
                '1
                gx#binding::t
                '#f))
              (_ht109370_
               (##structure-ref
                (gxc#current-compile-symbol-table)
                '2
                gxc#symbol-table::t
                '#f)))
          (if (interned-symbol? _eid109369_)
              '#!void
              (let ((__tmp111235
                     (let ((__tmp111236
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _eid109369_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp111236 _syntax?109367_))))
                (declare (not safe))
                (hash-put! _ht109370_ _eid109369_ __tmp111235))))))
    (define gxc#runtime-identifier=?
      (lambda (_id1109359_ _id2109360_)
        (letrec ((_symbol-e109362_
                  (lambda (_id109364_)
                    (if (let () (declare (not safe)) (symbol? _id109364_))
                        _id109364_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id _id109364_))))))
          (let ((__tmp111238
                 (let () (declare (not safe)) (_symbol-e109362_ _id1109359_)))
                (__tmp111237
                 (let () (declare (not safe)) (_symbol-e109362_ _id2109360_))))
            (declare (not safe))
            (eq? __tmp111238 __tmp111237)))))
    (define gxc#generate-runtime-binding-id
      (lambda (_id109337_)
        (let ((_$e109339_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _id109337_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _id109337_))
                   '#f)))
          (if _$e109339_
              ((lambda (_bind109342_)
                 (let ((_eid109344_
                        (##structure-ref _bind109342_ '1 gx#binding::t '#f))
                       (_ht109345_
                        (##structure-ref
                         (gxc#current-compile-symbol-table)
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (interned-symbol? _eid109344_)
                       _eid109344_
                       (let ((_$e109347_
                              (let ()
                                (declare (not safe))
                                (hash-get _ht109345_ _eid109344_))))
                         (if _$e109347_
                             (values _$e109347_)
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _bind109342_
                                    'gx#local-binding::t))
                                 (let ((_gid109350_
                                        (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-gensym-reference__0
                                           _eid109344_))))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _ht109345_
                                      _eid109344_
                                      _gid109350_))
                                   _gid109350_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _bind109342_
                                        'gx#module-binding::t))
                                     (let ((_gid109357_
                                            (let ((_$e109352_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _bind109342_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _$e109352_
                                                  ((lambda (_ns109355_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _ns109355_
                                                        '"#"
                                                        _eid109344_)))
                                                   _$e109352_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-gensym-reference__0
                                                     _eid109344_))))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _ht109345_
                                          _eid109344_
                                          _gid109357_))
                                       _gid109357_)
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Cannot compile reference to uninterned binding"
                                        _id109337_
                                        _eid109344_
                                        _bind109342_)))))))))
               _$e109339_)
              (if (interned-symbol?
                   (let () (declare (not safe)) (gx#stx-e _id109337_)))
                  (let () (declare (not safe)) (gx#stx-e _id109337_))
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Cannot compile reference to uninterned identifier"
                     _id109337_)))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_id109335_)
        (if (let () (declare (not safe)) (gx#identifier? _id109335_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _id109335_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-temporary__0)))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_sym109315_ _quote?109316_)
        (let* ((_ht109318_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e109320_
                (let ()
                  (declare (not safe))
                  (hash-get _ht109318_ _sym109315_))))
          (if _$e109320_
              (values _$e109320_)
              (let ((_g109323_
                     (if _quote?109316_
                         (let ((__tmp111239 (gxc#current-compile-timestamp)))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _sym109315_
                            '"__"
                            __tmp111239))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_" _sym109315_ '"_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _ht109318_ _sym109315_ _g109323_))
                _g109323_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_sym109328_)
        (let ((_quote?109330_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-gensym-reference__%
           _sym109328_
           _quote?109330_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g111241_
        (let ((_g111240_ (let () (declare (not safe)) (##length _g111241_))))
          (cond ((let () (declare (not safe)) (##fx= _g111240_ 1))
                 (apply (lambda (_sym109328_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__0
                             _sym109328_)))
                        _g111241_))
                ((let () (declare (not safe)) (##fx= _g111240_ 2))
                 (apply (lambda (_sym109332_ _quote?109333_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__%
                             _sym109332_
                             _quote?109333_)))
                        _g111241_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g111241_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_id109312_)
        (let ((__tmp111242
               (let ()
                 (declare (not safe))
                 (gx#core-identifier-key _id109312_))))
          (declare (not safe))
          (gxc#generate-runtime-identifier-key __tmp111242))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_key109272_)
        (if (interned-symbol? _key109272_)
            _key109272_
            (if (uninterned-symbol? _key109272_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _key109272_))
                (let* ((_key109273109280_ _key109272_)
                       (_E109275109284_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching" _key109273109280_))))
                       (_K109276109300_
                        (lambda (_mark109287_ _eid109288_)
                          (let ((_$e109290_
                                 (##structure-ref
                                  _mark109287_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _$e109290_
                                ((lambda (_ht109293_)
                                   (let ((_$e109295_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _ht109293_
                                             _eid109288_))))
                                     (if _$e109295_
                                         ((lambda (_id109298_)
                                            (if (interned-symbol? _id109298_)
                                                _id109298_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _id109298_))))
                                          _$e109295_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-identifier-key
                                            _eid109288_)))))
                                 _$e109290_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-identifier-key
                                   _eid109288_)))))))
                  (if (let () (declare (not safe)) (##pair? _key109273109280_))
                      (let ((_hd109277109303_
                             (let ()
                               (declare (not safe))
                               (##car _key109273109280_)))
                            (_tl109278109305_
                             (let ()
                               (declare (not safe))
                               (##cdr _key109273109280_))))
                        (let* ((_eid109308_ _hd109277109303_)
                               (_mark109310_ _tl109278109305_))
                          (declare (not safe))
                          (_K109276109300_ _mark109310_ _eid109308_)))
                      (let () (declare (not safe)) (_E109275109284_))))))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_top109259_)
        (if _top109259_
            (let ((_ns109261_
                   (##structure-ref
                    (let ((__tmp111243 (gx#current-expander-context)))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp111243))
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi109262_ (gx#current-expander-phi)))
              (if _ns109261_
                  (if (fxpositive? _phi109262_)
                      (let ((__tmp111245 (number->string _phi109262_))
                            (__tmp111244 (gensym)))
                        (declare (not safe))
                        (make-symbol__1
                         _ns109261_
                         '"["
                         __tmp111245
                         '"]#_"
                         __tmp111244
                         '"_"))
                      (let ((__tmp111246 (gensym)))
                        (declare (not safe))
                        (make-symbol__1 _ns109261_ '"#_" __tmp111246 '"_")))
                  (if (fxpositive? _phi109262_)
                      (let ((__tmp111248 (number->string _phi109262_))
                            (__tmp111247 (gensym)))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp111248
                         '"]#_"
                         __tmp111247
                         '"_"))
                      (let ((__tmp111249 (gensym)))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp111249 '"_")))))
            (let ((__tmp111250 (gensym)))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp111250 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_top109268_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-temporary__% _top109268_))))
    (define gxc#generate-runtime-temporary
      (lambda _g111252_
        (let ((_g111251_ (let () (declare (not safe)) (##length _g111252_))))
          (cond ((let () (declare (not safe)) (##fx= _g111251_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__0)))
                        _g111252_))
                ((let () (declare (not safe)) (##fx= _g111251_ 1))
                 (apply (lambda (_top109270_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__% _top109270_)))
                        _g111252_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g111252_))))))
    (define gxc#generate-runtime-empty
      (lambda (_self109255_ _stx109256_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_self109102_ _stx109103_)
        (letrec ((_simplify109105_
                  (lambda (_body109153_)
                    (let _lp109155_ ((_rest109157_ _body109153_)
                                     (_r109158_ '()))
                      (let* ((_rest109159109167_ _rest109157_)
                             (_else109161109175_
                              (lambda () (reverse _r109158_)))
                             (_K109163109243_
                              (lambda (_rest109178_ _hd109179_)
                                (let* ((_hd109180109196_ _hd109179_)
                                       (_else109184109204_
                                        (lambda ()
                                          (let ((__tmp111253
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd109179_
                                                         _r109158_))))
                                            (declare (not safe))
                                            (_lp109155_
                                             _rest109178_
                                             __tmp111253)))))
                                  (let ((_K109192109233_
                                         (lambda (_exprs109231_)
                                           (let ((__tmp111254
                                                  (let ()
                                                    (declare (not safe))
                                                    (foldr1 cons
                                                            _rest109178_
                                                            _exprs109231_))))
                                             (declare (not safe))
                                             (_lp109155_
                                              __tmp111254
                                              _r109158_))))
                                        (_K109187109217_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest109178_))
                                               (let ((__tmp111255
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _hd109179_
                                                              _r109158_))))
                                                 (declare (not safe))
                                                 (_lp109155_
                                                  _rest109178_
                                                  __tmp111255))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp109155_
                                                  _rest109178_
                                                  _r109158_)))))
                                        (_K109186109209_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest109178_))
                                               (let ((__tmp111256
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _hd109179_
                                                              _r109158_))))
                                                 (declare (not safe))
                                                 (_lp109155_
                                                  _rest109178_
                                                  __tmp111256))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp109155_
                                                  _rest109178_
                                                  _r109158_))))))
                                    (let ((_try-match109183109212_
                                           (lambda ()
                                             (if (let ()
                                                   (declare (not safe))
                                                   (symbol? _hd109180109196_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_K109186109209_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_else109184109204_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd109180109196_))
                                          (let ((_tl109194109238_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd109180109196_)))
                                                (_hd109193109236_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd109180109196_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd109193109236_
                                                         'begin))
                                                (let ((_exprs109241_
                                                       _tl109194109238_))
                                                  (declare (not safe))
                                                  (_K109192109233_
                                                   _exprs109241_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd109193109236_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl109194109238_))
                                                        (let ((_tl109191109225_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl109194109238_))))
                  (if (let () (declare (not safe)) (##null? _tl109191109225_))
                      (let () (declare (not safe)) (_K109187109217_))
                      (let () (declare (not safe)) (_try-match109183109212_))))
                (let () (declare (not safe)) (_try-match109183109212_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_try-match109183109212_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_try-match109183109212_)))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest109159109167_))
                            (let ((_hd109164109246_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest109159109167_)))
                                  (_tl109165109248_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest109159109167_))))
                              (let* ((_hd109251_ _hd109164109246_)
                                     (_rest109253_ _tl109165109248_))
                                (declare (not safe))
                                (_K109163109243_ _rest109253_ _hd109251_)))
                            (let ()
                              (declare (not safe))
                              (_else109161109175_))))))))
          (let* ((_g109107109117_
                  (lambda (_g109108109114_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g109108109114_))))
                 (_g109106109150_
                  (lambda (_g109108109120_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g109108109120_))
                        (let ((_e109110109122_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g109108109120_))))
                          (let ((_hd109111109125_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e109110109122_)))
                                (_tl109112109127_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e109110109122_))))
                            ((lambda (_L109130_)
                               (let* ((_body109145_
                                       (map (lambda (_g109140109142_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self109102_
                                                 _g109140109142_)))
                                            _L109130_))
                                      (_body109147_
                                       (let ()
                                         (declare (not safe))
                                         (_simplify109105_ _body109145_))))
                                 (if (fx= (length _body109147_) '1)
                                     (car _body109147_)
                                     (let ()
                                       (declare (not safe))
                                       (cons 'begin _body109147_)))))
                             _tl109112109127_)))
                        (let ()
                          (declare (not safe))
                          (_g109107109117_ _g109108109120_))))))
            (declare (not safe))
            (_g109106109150_ _stx109103_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_self109063_ _stx109064_)
        (let* ((_g109066109076_
                (lambda (_g109067109073_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g109067109073_))))
               (_g109065109099_
                (lambda (_g109067109079_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g109067109079_))
                      (let ((_e109069109081_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g109067109079_))))
                        (let ((_hd109070109084_
                               (let ()
                                 (declare (not safe))
                                 (##car _e109069109081_)))
                              (_tl109071109086_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e109069109081_))))
                          ((lambda (_L109089_)
                             (let ((__tmp111257
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax->datum _L109089_))))
                               (declare (not safe))
                               (cons 'begin __tmp111257)))
                           _tl109071109086_)))
                      (let ()
                        (declare (not safe))
                        (_g109066109076_ _g109067109079_))))))
          (declare (not safe))
          (_g109065109099_ _stx109064_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_self108827_ _stx108828_)
        (let* ((___stx109855109856_ _stx108828_)
               (_g108832108884_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx109855109856_)))))
          (let ((___kont109857109858_
                 (lambda (_L109045_ _L109046_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self108827_ _L109045_))))
                (___kont109859109860_
                 (lambda (_L108993_ _L108994_ _L108995_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self108827_ _L108993_))))
                (___kont109863109864_
                 (lambda (_L108913_ _L108914_)
                   (let ((_decls108929_ (map gx#syntax->datum _L108914_)))
                     (let ((__tmp111260
                            (lambda ()
                              (let ((__tmp111261
                                     (let ((__tmp111264
                                            (let ()
                                              (declare (not safe))
                                              (cons 'declare _decls108929_)))
                                           (__tmp111262
                                            (let ((__tmp111263
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self108827_
                                                      _L108913_))))
                                              (declare (not safe))
                                              (cons __tmp111263 '()))))
                                       (declare (not safe))
                                       (cons __tmp111264 __tmp111262))))
                                (declare (not safe))
                                (cons 'begin __tmp111261))))
                           (__tmp111258
                            (let ((__tmp111259 (gxc#current-compile-decls)))
                              (declare (not safe))
                              (foldr1 cons __tmp111259 _decls108929_))))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp111260
                        gxc#current-compile-decls
                        __tmp111258))))))
            (let* ((___match109910109911_
                    (lambda (_e108848108937_
                             _hd108849108940_
                             _tl108850108942_
                             _e108851108945_
                             _hd108852108948_
                             _tl108853108950_
                             _e108854108953_
                             _hd108855108956_
                             _tl108856108958_
                             ___splice109861109862_
                             _target108857108961_
                             _tl108859108963_)
                      (letrec ((_loop108860108966_
                                (lambda (_hd108858108969_ _param108864108971_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd108858108969_))
                                      (let ((_e108861108974_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd108858108969_))))
                                        (let ((_lp-tl108863108979_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e108861108974_)))
                                              (_lp-hd108862108977_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e108861108974_))))
                                          (let ((__tmp111265
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd108862108977_
                                                         _param108864108971_))))
                                            (declare (not safe))
                                            (_loop108860108966_
                                             _lp-tl108863108979_
                                             __tmp111265))))
                                      (let ((_param108865108982_
                                             (reverse _param108864108971_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl108853108950_))
                                            (let ((_e108866108985_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl108853108950_))))
                                              (let ((_tl108868108990_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e108866108985_)))
                                                    (_hd108867108988_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e108866108985_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl108868108990_))
                                                    (let ((_L108993_
                                                           _hd108867108988_)
                                                          (_L108994_
                                                           _param108865108982_)
                                                          (_L108995_
                                                           _hd108855108956_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _L108995_))
                       (let ((__tmp111266
                              (memq (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L108995_))
                                    gxc#gambit-annotations)))
                         (declare (not safe))
                         (not __tmp111266)))
                  (___kont109859109860_ _L108993_ _L108994_ _L108995_)
                  (___kont109863109864_ _hd108867108988_ _hd108852108948_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g108832108884_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g108832108884_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop108860108966_ _target108857108961_ '())))))
                   (___match109884109885_
                    (lambda (_e108836109021_
                             _hd108837109024_
                             _tl108838109026_
                             _e108839109029_
                             _hd108840109032_
                             _tl108841109034_
                             _e108842109037_
                             _hd108843109040_
                             _tl108844109042_)
                      (let ((_L109045_ _hd108843109040_)
                            (_L109046_ _hd108840109032_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L109046_))
                            (___kont109857109858_ _L109045_ _L109046_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd108840109032_))
                                (let ((_e108854108953_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd108840109032_))))
                                  (let ((_tl108856108958_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e108854108953_)))
                                        (_hd108855108956_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e108854108953_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl108856108958_))
                                        (let ((___splice109861109862_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl108856108958_
                                                  '0))))
                                          (let ((_tl108859108963_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice109861109862_
                                                    '1)))
                                                (_target108857108961_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice109861109862_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl108859108963_))
                                                (___match109910109911_
                                                 _e108836109021_
                                                 _hd108837109024_
                                                 _tl108838109026_
                                                 _e108839109029_
                                                 _hd108840109032_
                                                 _tl108841109034_
                                                 _e108854108953_
                                                 _hd108855108956_
                                                 _tl108856108958_
                                                 ___splice109861109862_
                                                 _target108857108961_
                                                 _tl108859108963_)
                                                (___kont109863109864_
                                                 _hd108843109040_
                                                 _hd108840109032_))))
                                        (___kont109863109864_
                                         _hd108843109040_
                                         _hd108840109032_))))
                                (___kont109863109864_
                                 _hd108843109040_
                                 _hd108840109032_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx109855109856_))
                  (let ((_e108836109021_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx109855109856_))))
                    (let ((_tl108838109026_
                           (let ()
                             (declare (not safe))
                             (##cdr _e108836109021_)))
                          (_hd108837109024_
                           (let ()
                             (declare (not safe))
                             (##car _e108836109021_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl108838109026_))
                          (let ((_e108839109029_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl108838109026_))))
                            (let ((_tl108841109034_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e108839109029_)))
                                  (_hd108840109032_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e108839109029_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl108841109034_))
                                  (let ((_e108842109037_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl108841109034_))))
                                    (let ((_tl108844109042_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e108842109037_)))
                                          (_hd108843109040_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e108842109037_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl108844109042_))
                                          (___match109884109885_
                                           _e108836109021_
                                           _hd108837109024_
                                           _tl108838109026_
                                           _e108839109029_
                                           _hd108840109032_
                                           _tl108841109034_
                                           _e108842109037_
                                           _hd108843109040_
                                           _tl108844109042_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd108840109032_))
                                              (let ((_e108854108953_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd108840109032_))))
                                                (let ((_tl108856108958_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e108854108953_)))
                                                      (_hd108855108956_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e108854108953_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl108856108958_))
                                                      (let ((___splice109861109862_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl108856108958_ '0))))
                (let ((_tl108859108963_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice109861109862_ '1)))
                      (_target108857108961_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice109861109862_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl108859108963_))
                      (___match109910109911_
                       _e108836109021_
                       _hd108837109024_
                       _tl108838109026_
                       _e108839109029_
                       _hd108840109032_
                       _tl108841109034_
                       _e108854108953_
                       _hd108855108956_
                       _tl108856108958_
                       ___splice109861109862_
                       _target108857108961_
                       _tl108859108963_)
                      (let () (declare (not safe)) (_g108832108884_)))))
              (let () (declare (not safe)) (_g108832108884_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g108832108884_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd108840109032_))
                                      (let ((_e108854108953_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd108840109032_))))
                                        (let ((_tl108856108958_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e108854108953_)))
                                              (_hd108855108956_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e108854108953_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl108856108958_))
                                              (let ((___splice109861109862_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl108856108958_
                                                        '0))))
                                                (let ((_tl108859108963_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice109861109862_
                                                          '1)))
                                                      (_target108857108961_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice109861109862_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl108859108963_))
                                                      (___match109910109911_
                                                       _e108836109021_
                                                       _hd108837109024_
                                                       _tl108838109026_
                                                       _e108839109029_
                                                       _hd108840109032_
                                                       _tl108841109034_
                                                       _e108854108953_
                                                       _hd108855108956_
                                                       _tl108856108958_
                                                       ___splice109861109862_
                                                       _target108857108961_
                                                       _tl108859108963_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g108832108884_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g108832108884_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g108832108884_))))))
                          (let () (declare (not safe)) (_g108832108884_)))))
                  (let () (declare (not safe)) (_g108832108884_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_self108786_ _stx108787_)
        (let* ((_g108789108799_
                (lambda (_g108790108796_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g108790108796_))))
               (_g108788108824_
                (lambda (_g108790108802_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g108790108802_))
                      (let ((_e108792108804_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g108790108802_))))
                        (let ((_hd108793108807_
                               (let ()
                                 (declare (not safe))
                                 (##car _e108792108804_)))
                              (_tl108794108809_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e108792108804_))))
                          ((lambda (_L108812_)
                             (let ((_decls108822_
                                    (map gx#syntax->datum _L108812_)))
                               (gxc#current-compile-decls
                                (let ((__tmp111267
                                       (gxc#current-compile-decls)))
                                  (declare (not safe))
                                  (foldr1 cons __tmp111267 _decls108822_)))
                               (let ()
                                 (declare (not safe))
                                 (cons 'declare _decls108822_))))
                           _tl108794108809_)))
                      (let ()
                        (declare (not safe))
                        (_g108789108799_ _g108790108802_))))))
          (declare (not safe))
          (_g108788108824_ _stx108787_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_self108532_ _stx108533_)
        (let* ((_g108535108552_
                (lambda (_g108536108549_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g108536108549_))))
               (_g108534108783_
                (lambda (_g108536108555_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g108536108555_))
                      (let ((_e108539108557_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g108536108555_))))
                        (let ((_hd108540108560_
                               (let ()
                                 (declare (not safe))
                                 (##car _e108539108557_)))
                              (_tl108541108562_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e108539108557_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl108541108562_))
                              (let ((_e108542108565_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl108541108562_))))
                                (let ((_hd108543108568_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e108542108565_)))
                                      (_tl108544108570_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e108542108565_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl108544108570_))
                                      (let ((_e108545108573_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl108544108570_))))
                                        (let ((_hd108546108576_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e108545108573_)))
                                              (_tl108547108578_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e108545108573_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl108547108578_))
                                              ((lambda (_L108581_ _L108582_)
                                                 (let* ((___stx109963109964_
                                                         _L108582_)
                                                        (_g108599108613_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx109963109964_)))))
                                                   (let ((___kont109965109966_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self108532_
                                                               _L108581_))))
                                                         (___kont109967109968_
                                                          (lambda (_L108745_)
                                                            (let ((_eid108754_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _L108745_))))
                      (let ((_lambda-expr108755108757_
                             (let ()
                               (declare (not safe))
                               (gxc#apply-find-lambda-expression _L108581_))))
                        (if _lambda-expr108755108757_
                            (let* ((_lambda-expr108760_
                                    _lambda-expr108755108757_)
                                   (__tmp111268
                                    (gxc#current-compile-runtime-names)))
                              (declare (not safe))
                              (hash-put!
                               __tmp111268
                               _lambda-expr108760_
                               _eid108754_))
                            '#f))
                      (let ((__tmp111269
                             (let ((__tmp111270
                                    (let ((__tmp111271
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self108532_
                                              _L108581_))))
                                      (declare (not safe))
                                      (cons __tmp111271 '()))))
                               (declare (not safe))
                               (cons _eid108754_ __tmp111270))))
                        (declare (not safe))
                        (cons 'define __tmp111269)))))
                 (___kont109969109970_
                  (lambda ()
                    (let* ((_tmp108620_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_body108729_
                            (let _lp108622_ ((_rest108624_ _L108582_)
                                             (_k108625_ '0)
                                             (_r108626_ '()))
                              (let* ((___stx109933109934_ _rest108624_)
                                     (_g108631108648_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx109933109934_)))))
                                (let ((___kont109935109936_
                                       (lambda (_L108716_)
                                         (let ((__tmp111272
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _k108625_ '1))))
                                           (declare (not safe))
                                           (_lp108622_
                                            _L108716_
                                            __tmp111272
                                            _r108626_))))
                                      (___kont109937109938_
                                       (lambda (_L108689_ _L108690_)
                                         (let ((__tmp111279
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _k108625_ '1)))
                                               (__tmp111273
                                                (let ((__tmp111274
                                                       (let ((__tmp111275
                                                              (let ((__tmp111278
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-binding-id _L108690_)))
                            (__tmp111276
                             (let ((__tmp111277
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-values-ref
                                       _tmp108620_
                                       _k108625_
                                       _L108689_))))
                               (declare (not safe))
                               (cons __tmp111277 '()))))
                        (declare (not safe))
                        (cons __tmp111278 __tmp111276))))
                 (declare (not safe))
                 (cons 'define __tmp111275))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp111274
                                                        _r108626_))))
                                           (declare (not safe))
                                           (_lp108622_
                                            _L108689_
                                            __tmp111279
                                            __tmp111273))))
                                      (___kont109939109940_
                                       (lambda (_L108660_)
                                         (let ((__tmp111280
                                                (let ((__tmp111281
                                                       (let ((__tmp111282
                                                              (let ((__tmp111285
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-binding-id _L108660_)))
                            (__tmp111283
                             (let ((__tmp111284
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-values->list
                                       _tmp108620_
                                       _k108625_))))
                               (declare (not safe))
                               (cons __tmp111284 '()))))
                        (declare (not safe))
                        (cons __tmp111285 __tmp111283))))
                 (declare (not safe))
                 (cons 'define __tmp111282))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp111281 '()))))
                                           (declare (not safe))
                                           (foldl1 cons
                                                   __tmp111280
                                                   _r108626_))))
                                      (___kont109941109942_
                                       (lambda () (reverse _r108626_))))
                                  (let ((_g108629108676_
                                         (lambda ()
                                           (let ((_L108660_
                                                  ___stx109933109934_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier? _L108660_))
                                                 (___kont109939109940_
                                                  _L108660_)
                                                 (___kont109941109942_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx109933109934_))
                                        (let ((_e108634108705_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx109933109934_))))
                                          (let ((_tl108636108710_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108634108705_)))
                                                (_hd108635108708_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108634108705_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd108635108708_))
                                                (let ((_e108637108713_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd108635108708_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e108637108713_
                                                                '#f))
                                                      (___kont109935109936_
                                                       _tl108636108710_)
                                                      (___kont109937109938_
                                                       _tl108636108710_
                                                       _hd108635108708_)))
                                                (___kont109937109938_
                                                 _tl108636108710_
                                                 _hd108635108708_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g108629108676_)))))))))
                      (let ((__tmp111286
                             (let ((__tmp111289
                                    (let ((__tmp111290
                                           (let ((__tmp111291
                                                  (let ((__tmp111292
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self108532_
                                                            _L108581_))))
                                                    (declare (not safe))
                                                    (cons __tmp111292 '()))))
                                             (declare (not safe))
                                             (cons _tmp108620_ __tmp111291))))
                                      (declare (not safe))
                                      (cons 'define __tmp111290)))
                                   (__tmp111287
                                    (let ((__tmp111288
                                           (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-check-values
                                              _tmp108620_
                                              _L108582_
                                              _L108581_))))
                                      (declare (not safe))
                                      (cons __tmp111288 _body108729_))))
                               (declare (not safe))
                               (cons __tmp111289 __tmp111287))))
                        (declare (not safe))
                        (cons 'begin __tmp111286))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx109963109964_))
                                                         (let ((_e108601108767_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx109963109964_))))
                   (let ((_tl108603108772_
                          (let ()
                            (declare (not safe))
                            (##cdr _e108601108767_)))
                         (_hd108602108770_
                          (let ()
                            (declare (not safe))
                            (##car _e108601108767_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _hd108602108770_))
                         (let ((_e108604108775_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd108602108770_))))
                           (if (let ()
                                 (declare (not safe))
                                 (equal? _e108604108775_ '#f))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl108603108772_))
                                   (___kont109965109966_)
                                   (___kont109969109970_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl108603108772_))
                                   (___kont109967109968_ _hd108602108770_)
                                   (___kont109969109970_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl108603108772_))
                             (___kont109967109968_ _hd108602108770_)
                             (___kont109969109970_)))))
                 (___kont109969109970_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd108546108576_
                                               _hd108543108568_)
                                              (let ()
                                                (declare (not safe))
                                                (_g108535108552_
                                                 _g108536108555_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g108535108552_ _g108536108555_)))))
                              (let ()
                                (declare (not safe))
                                (_g108535108552_ _g108536108555_)))))
                      (let ()
                        (declare (not safe))
                        (_g108535108552_ _g108536108555_))))))
          (declare (not safe))
          (_g108534108783_ _stx108533_))))
    (define gxc#generate-runtime-check-values
      (lambda (_vals108508_ _hd108509_ _expr108510_)
        (let ((_$e108512_
               (let ()
                 (declare (not safe))
                 (gxc#apply-count-values _expr108510_))))
          (if _$e108512_
              ((lambda (_count108515_)
                 (let ((_len108517_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _hd108509_)))
                       (_cmp108518_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _hd108509_))
                            fx=
                            fx>=)))
                   (if (or (fx= _len108517_ '0)
                           (_cmp108518_ _count108515_ _len108517_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _expr108510_
                          _hd108509_)))))
               _$e108512_)
              (let* ((_len108523_
                      (let () (declare (not safe)) (gx#stx-length _hd108509_)))
                     (_cmp108525_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _hd108509_))
                          '##fx=
                          '##fx>=))
                     (_errmsg108527_
                      (string-append
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-list? _hd108509_))
                           '"Context expects "
                           '"Context expects at least ")
                       (number->string _len108523_)
                       '" values"))
                     (_count108529_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (and (let ((__tmp111293
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _hd108509_))))
                           (declare (not safe))
                           (not __tmp111293))
                         (fx= _len108523_ '0))
                    '#!void
                    (let ((__tmp111294
                           (let ((__tmp111313
                                  (let ((__tmp111314
                                         (let ((__tmp111315
                                                (let ((__tmp111316
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-values-count
                                                          _vals108508_))))
                                                  (declare (not safe))
                                                  (cons __tmp111316 '()))))
                                           (declare (not safe))
                                           (cons _count108529_ __tmp111315))))
                                    (declare (not safe))
                                    (cons __tmp111314 '())))
                                 (__tmp111295
                                  (let ((__tmp111296
                                         (let ((__tmp111297
                                                (let ((__tmp111302
                                                       (let ((__tmp111303
                                                              (let ((__tmp111304
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-decls-unsafe?))
                                 (let ((__tmp111305
                                        (let ((__tmp111306
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _len108523_ '()))))
                                          (declare (not safe))
                                          (cons _count108529_ __tmp111306))))
                                   (declare (not safe))
                                   (cons _cmp108525_ __tmp111305))
                                 (let ((__tmp111307
                                        (let ((__tmp111308
                                               (let ((__tmp111309
                                                      (let ((__tmp111310
                                                             (let ((__tmp111311
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp111312
                                   (let ()
                                     (declare (not safe))
                                     (cons _len108523_ '()))))
                              (declare (not safe))
                              (cons _count108529_ __tmp111312))))
                       (declare (not safe))
                       (cons _cmp108525_ __tmp111311))))
                (declare (not safe))
                (cons __tmp111310 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '(declare (not safe))
                                                       __tmp111309))))
                                          (declare (not safe))
                                          (cons '() __tmp111308))))
                                   (declare (not safe))
                                   (cons 'let __tmp111307)))))
                        (declare (not safe))
                        (cons __tmp111304 '()))))
                 (declare (not safe))
                 (cons 'not __tmp111303)))
              (__tmp111298
               (let ((__tmp111299
                      (let ((__tmp111300
                             (let ((__tmp111301
                                    (let ()
                                      (declare (not safe))
                                      (cons _count108529_ '()))))
                               (declare (not safe))
                               (cons _errmsg108527_ __tmp111301))))
                        (declare (not safe))
                        (cons 'error __tmp111300))))
                 (declare (not safe))
                 (cons __tmp111299 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp111302
                                                        __tmp111298))))
                                           (declare (not safe))
                                           (cons 'if __tmp111297))))
                                    (declare (not safe))
                                    (cons __tmp111296 '()))))
                             (declare (not safe))
                             (cons __tmp111313 __tmp111295))))
                      (declare (not safe))
                      (cons 'let __tmp111294))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_var108503_)
        (letrec ((_generate-inline108505_
                  (lambda ()
                    (let ((__tmp111317
                           (let ((__tmp111322
                                  (let ((__tmp111323
                                         (let ()
                                           (declare (not safe))
                                           (cons _var108503_ '()))))
                                    (declare (not safe))
                                    (cons '##values? __tmp111323)))
                                 (__tmp111318
                                  (let ((__tmp111320
                                         (let ((__tmp111321
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _var108503_ '()))))
                                           (declare (not safe))
                                           (cons '##vector-length
                                                 __tmp111321)))
                                        (__tmp111319
                                         (let ()
                                           (declare (not safe))
                                           (cons '1 '()))))
                                    (declare (not safe))
                                    (cons __tmp111320 __tmp111319))))
                             (declare (not safe))
                             (cons __tmp111322 __tmp111318))))
                      (declare (not safe))
                      (cons 'if __tmp111317)))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline108505_))
              (let ((__tmp111324
                     (let ((__tmp111325
                            (let ((__tmp111326
                                   (let ((__tmp111327
                                          (let ()
                                            (declare (not safe))
                                            (_generate-inline108505_))))
                                     (declare (not safe))
                                     (cons __tmp111327 '()))))
                              (declare (not safe))
                              (cons '(declare (not safe)) __tmp111326))))
                       (declare (not safe))
                       (cons '() __tmp111325))))
                (declare (not safe))
                (cons 'let __tmp111324))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_var108496_ _i108497_ _rest108498_)
        (letrec ((_generate-inline108500_
                  (lambda ()
                    (if (and (fx= _i108497_ '0)
                             (let ((__tmp111328
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _rest108498_))))
                               (declare (not safe))
                               (not __tmp111328)))
                        (let ((__tmp111329
                               (let ((__tmp111335
                                      (let ((__tmp111336
                                             (let ()
                                               (declare (not safe))
                                               (cons _var108496_ '()))))
                                        (declare (not safe))
                                        (cons '##values? __tmp111336)))
                                     (__tmp111330
                                      (let ((__tmp111332
                                             (let ((__tmp111333
                                                    (let ((__tmp111334
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '0 '()))))
                                                      (declare (not safe))
                                                      (cons _var108496_
                                                            __tmp111334))))
                                               (declare (not safe))
                                               (cons '##vector-ref
                                                     __tmp111333)))
                                            (__tmp111331
                                             (let ()
                                               (declare (not safe))
                                               (cons _var108496_ '()))))
                                        (declare (not safe))
                                        (cons __tmp111332 __tmp111331))))
                                 (declare (not safe))
                                 (cons __tmp111335 __tmp111330))))
                          (declare (not safe))
                          (cons 'if __tmp111329))
                        (let ((__tmp111337
                               (let ((__tmp111338
                                      (let ()
                                        (declare (not safe))
                                        (cons _i108497_ '()))))
                                 (declare (not safe))
                                 (cons _var108496_ __tmp111338))))
                          (declare (not safe))
                          (cons '##vector-ref __tmp111337))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline108500_))
              (let ((__tmp111339
                     (let ((__tmp111340
                            (let ((__tmp111341
                                   (let ((__tmp111342
                                          (let ()
                                            (declare (not safe))
                                            (_generate-inline108500_))))
                                     (declare (not safe))
                                     (cons __tmp111342 '()))))
                              (declare (not safe))
                              (cons '(declare (not safe)) __tmp111341))))
                       (declare (not safe))
                       (cons '() __tmp111340))))
                (declare (not safe))
                (cons 'let __tmp111339))))))
    (define gxc#generate-runtime-values->list
      (lambda (_var108493_ _i108494_)
        (if (fx= _i108494_ '0)
            (if (let ()
                  (declare (not safe))
                  (gxc#current-compile-decls-unsafe?))
                (let ((__tmp111343
                       (let ((__tmp111350
                              (let ((__tmp111351
                                     (let ()
                                       (declare (not safe))
                                       (cons _var108493_ '()))))
                                (declare (not safe))
                                (cons '##values? __tmp111351)))
                             (__tmp111344
                              (let ((__tmp111348
                                     (let ((__tmp111349
                                            (let ()
                                              (declare (not safe))
                                              (cons _var108493_ '()))))
                                       (declare (not safe))
                                       (cons '##vector->list __tmp111349)))
                                    (__tmp111345
                                     (let ((__tmp111346
                                            (let ((__tmp111347
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _var108493_ '()))))
                                              (declare (not safe))
                                              (cons 'list __tmp111347))))
                                       (declare (not safe))
                                       (cons __tmp111346 '()))))
                                (declare (not safe))
                                (cons __tmp111348 __tmp111345))))
                         (declare (not safe))
                         (cons __tmp111350 __tmp111344))))
                  (declare (not safe))
                  (cons 'if __tmp111343))
                (let ((__tmp111352
                       (let ((__tmp111353
                              (let ((__tmp111354
                                     (let ((__tmp111355
                                            (let ((__tmp111356
                                                   (let ((__tmp111363
                                                          (let ((__tmp111364
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _var108493_ '()))))
                    (declare (not safe))
                    (cons '##values? __tmp111364)))
                 (__tmp111357
                  (let ((__tmp111361
                         (let ((__tmp111362
                                (let ()
                                  (declare (not safe))
                                  (cons _var108493_ '()))))
                           (declare (not safe))
                           (cons '##vector->list __tmp111362)))
                        (__tmp111358
                         (let ((__tmp111359
                                (let ((__tmp111360
                                       (let ()
                                         (declare (not safe))
                                         (cons _var108493_ '()))))
                                  (declare (not safe))
                                  (cons 'list __tmp111360))))
                           (declare (not safe))
                           (cons __tmp111359 '()))))
                    (declare (not safe))
                    (cons __tmp111361 __tmp111358))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp111363
                                                           __tmp111357))))
                                              (declare (not safe))
                                              (cons 'if __tmp111356))))
                                       (declare (not safe))
                                       (cons __tmp111355 '()))))
                                (declare (not safe))
                                (cons '(declare (not safe)) __tmp111354))))
                         (declare (not safe))
                         (cons '() __tmp111353))))
                  (declare (not safe))
                  (cons 'let __tmp111352)))
            (if (fx= _i108494_ '1)
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (let ((__tmp111365
                           (let ((__tmp111372
                                  (let ((__tmp111373
                                         (let ()
                                           (declare (not safe))
                                           (cons _var108493_ '()))))
                                    (declare (not safe))
                                    (cons '##values? __tmp111373)))
                                 (__tmp111366
                                  (let ((__tmp111368
                                         (let ((__tmp111369
                                                (let ((__tmp111370
                                                       (let ((__tmp111371
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _var108493_ '()))))
                 (declare (not safe))
                 (cons '##vector->list __tmp111371))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp111370 '()))))
                                           (declare (not safe))
                                           (cons '##cdr __tmp111369)))
                                        (__tmp111367
                                         (let ()
                                           (declare (not safe))
                                           (cons ''() '()))))
                                    (declare (not safe))
                                    (cons __tmp111368 __tmp111367))))
                             (declare (not safe))
                             (cons __tmp111372 __tmp111366))))
                      (declare (not safe))
                      (cons 'if __tmp111365))
                    (let ((__tmp111374
                           (let ((__tmp111375
                                  (let ((__tmp111376
                                         (let ((__tmp111377
                                                (let ((__tmp111378
                                                       (let ((__tmp111385
                                                              (let ((__tmp111386
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _var108493_ '()))))
                        (declare (not safe))
                        (cons '##values? __tmp111386)))
                     (__tmp111379
                      (let ((__tmp111381
                             (let ((__tmp111382
                                    (let ((__tmp111383
                                           (let ((__tmp111384
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _var108493_ '()))))
                                             (declare (not safe))
                                             (cons '##vector->list
                                                   __tmp111384))))
                                      (declare (not safe))
                                      (cons __tmp111383 '()))))
                               (declare (not safe))
                               (cons '##cdr __tmp111382)))
                            (__tmp111380
                             (let () (declare (not safe)) (cons ''() '()))))
                        (declare (not safe))
                        (cons __tmp111381 __tmp111380))))
                 (declare (not safe))
                 (cons __tmp111385 __tmp111379))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'if __tmp111378))))
                                           (declare (not safe))
                                           (cons __tmp111377 '()))))
                                    (declare (not safe))
                                    (cons '(declare (not safe)) __tmp111376))))
                             (declare (not safe))
                             (cons '() __tmp111375))))
                      (declare (not safe))
                      (cons 'let __tmp111374)))
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (let ((__tmp111387
                           (let ((__tmp111389
                                  (let ((__tmp111390
                                         (let ()
                                           (declare (not safe))
                                           (cons _var108493_ '()))))
                                    (declare (not safe))
                                    (cons '##vector->list __tmp111390)))
                                 (__tmp111388
                                  (let ()
                                    (declare (not safe))
                                    (cons _i108494_ '()))))
                             (declare (not safe))
                             (cons __tmp111389 __tmp111388))))
                      (declare (not safe))
                      (cons '##list-tail __tmp111387))
                    (let ((__tmp111391
                           (let ((__tmp111392
                                  (let ((__tmp111393
                                         (let ((__tmp111394
                                                (let ((__tmp111395
                                                       (let ((__tmp111397
                                                              (let ((__tmp111398
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _var108493_ '()))))
                        (declare (not safe))
                        (cons '##vector->list __tmp111398)))
                     (__tmp111396
                      (let () (declare (not safe)) (cons _i108494_ '()))))
                 (declare (not safe))
                 (cons __tmp111397 __tmp111396))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '##list-tail
                                                        __tmp111395))))
                                           (declare (not safe))
                                           (cons __tmp111394 '()))))
                                    (declare (not safe))
                                    (cons '(declare (not safe)) __tmp111393))))
                             (declare (not safe))
                             (cons '() __tmp111392))))
                      (declare (not safe))
                      (cons 'let __tmp111391)))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_self108425_ _stx108426_)
        (let* ((_g108428108445_
                (lambda (_g108429108442_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g108429108442_))))
               (_g108427108490_
                (lambda (_g108429108448_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g108429108448_))
                      (let ((_e108432108450_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g108429108448_))))
                        (let ((_hd108433108453_
                               (let ()
                                 (declare (not safe))
                                 (##car _e108432108450_)))
                              (_tl108434108455_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e108432108450_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl108434108455_))
                              (let ((_e108435108458_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl108434108455_))))
                                (let ((_hd108436108461_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e108435108458_)))
                                      (_tl108437108463_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e108435108458_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl108437108463_))
                                      (let ((_e108438108466_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl108437108463_))))
                                        (let ((_hd108439108469_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e108438108466_)))
                                              (_tl108440108471_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e108438108466_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl108440108471_))
                                              ((lambda (_L108474_ _L108475_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-lambda-form
                                                    _self108425_
                                                    _L108475_
                                                    _L108474_)))
                                               _hd108439108469_
                                               _hd108436108461_)
                                              (let ()
                                                (declare (not safe))
                                                (_g108428108445_
                                                 _g108429108448_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g108428108445_ _g108429108448_)))))
                              (let ()
                                (declare (not safe))
                                (_g108428108445_ _g108429108448_)))))
                      (let ()
                        (declare (not safe))
                        (_g108428108445_ _g108429108448_))))))
          (declare (not safe))
          (_g108427108490_ _stx108426_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_self108384_ _hd108385_ _body108386_)
        (let* ((_hd108388_
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-lambda-head _hd108385_)))
               (_body108390_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _self108384_ _body108386_)))
               (_body108422_
                (let* ((_body108391108399_ _body108390_)
                       (_else108393108407_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (cons _body108390_ '()))))
                       (_K108395108412_
                        (lambda (_exprs108410_) _exprs108410_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _body108391108399_))
                      (let ((_hd108396108415_
                             (let ()
                               (declare (not safe))
                               (##car _body108391108399_)))
                            (_tl108397108417_
                             (let ()
                               (declare (not safe))
                               (##cdr _body108391108399_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _hd108396108415_ 'begin))
                            (let ((_exprs108420_ _tl108397108417_))
                              (declare (not safe))
                              (_K108395108412_ _exprs108420_))
                            (let ()
                              (declare (not safe))
                              (_else108393108407_))))
                      (let () (declare (not safe)) (_else108393108407_))))))
          (let ((__tmp111399
                 (let () (declare (not safe)) (cons _hd108388_ _body108422_))))
            (declare (not safe))
            (cons 'lambda __tmp111399)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_hd108382_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _hd108382_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_self106924_ _stx106925_)
        (letrec ((_dispatch-case?106927_
                  (lambda (_hd107612_ _body107613_)
                    (let* ((_form107615_
                            (let ((__tmp111400
                                   (let ()
                                     (declare (not safe))
                                     (cons _body107613_ '()))))
                              (declare (not safe))
                              (cons _hd107612_ __tmp111400)))
                           (___stx109995109996_ _form107615_)
                           (_g107620107777_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx109995109996_)))))
                      (let ((___kont109997109998_
                             (lambda (_L108302_ _L108303_ _L108304_) '#t))
                            (___kont110003110004_
                             (lambda (_L108090_
                                      _L108091_
                                      _L108092_
                                      _L108093_
                                      _L108094_
                                      _L108095_)
                               '#t))
                            (___kont110009110010_
                             (lambda (_L107885_ _L107886_ _L107887_ _L107888_)
                               '#t))
                            (___kont110011110012_ (lambda () '#f)))
                        (let* ((___match110136110137_
                                (lambda (_e107737107789_
                                         _hd107738107792_
                                         _tl107739107794_
                                         _e107740107797_
                                         _hd107741107800_
                                         _tl107742107802_
                                         _e107743107805_
                                         _hd107744107808_
                                         _tl107745107810_
                                         _e107746107813_
                                         _hd107747107816_
                                         _tl107748107818_
                                         _e107749107821_
                                         _hd107750107824_
                                         _tl107751107826_
                                         _e107752107829_
                                         _hd107753107832_
                                         _tl107754107834_
                                         _e107755107837_
                                         _hd107756107840_
                                         _tl107757107842_
                                         _e107758107845_
                                         _hd107759107848_
                                         _tl107760107850_
                                         _e107761107853_
                                         _hd107762107856_
                                         _tl107763107858_
                                         _e107764107861_
                                         _hd107765107864_
                                         _tl107766107866_
                                         _e107767107869_
                                         _hd107768107872_
                                         _tl107769107874_
                                         _e107770107877_
                                         _hd107771107880_
                                         _tl107772107882_)
                                  (let ((_L107885_ _hd107771107880_)
                                        (_L107886_ _hd107762107856_)
                                        (_L107887_ _hd107753107832_)
                                        (_L107888_ _hd107738107792_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _L107888_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _L107887_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L107888_
                                                _L107885_))
                                             (let ((__tmp111401
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#free-identifier=?
                                                       _L107886_
                                                       _L107888_))))
                                               (declare (not safe))
                                               (not __tmp111401)))
                                        (___kont110009110010_
                                         _L107885_
                                         _L107886_
                                         _L107887_
                                         _L107888_)
                                        (___kont110011110012_)))))
                               (___match110108110109_
                                (lambda (_e107737107789_
                                         _hd107738107792_
                                         _tl107739107794_
                                         _e107740107797_
                                         _hd107741107800_
                                         _tl107742107802_
                                         _e107743107805_
                                         _hd107744107808_
                                         _tl107745107810_
                                         _e107746107813_
                                         _hd107747107816_
                                         _tl107748107818_
                                         _e107749107821_
                                         _hd107750107824_
                                         _tl107751107826_
                                         _e107752107829_
                                         _hd107753107832_
                                         _tl107754107834_
                                         _e107755107837_
                                         _hd107756107840_
                                         _tl107757107842_
                                         _e107758107845_
                                         _hd107759107848_
                                         _tl107760107850_
                                         _e107761107853_
                                         _hd107762107856_
                                         _tl107763107858_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl107757107842_))
                                      (let ((_e107764107861_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl107757107842_))))
                                        (let ((_tl107766107866_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e107764107861_)))
                                              (_hd107765107864_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e107764107861_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd107765107864_))
                                              (let ((_e107767107869_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd107765107864_))))
                                                (let ((_tl107769107874_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e107767107869_)))
                                                      (_hd107768107872_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e107767107869_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd107768107872_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _hd107768107872_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl107769107874_))
                      (let ((_e107770107877_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl107769107874_))))
                        (let ((_tl107772107882_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e107770107877_)))
                              (_hd107771107880_
                               (let ()
                                 (declare (not safe))
                                 (##car _e107770107877_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl107772107882_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl107766107866_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl107742107802_))
                                      (___match110136110137_
                                       _e107737107789_
                                       _hd107738107792_
                                       _tl107739107794_
                                       _e107740107797_
                                       _hd107741107800_
                                       _tl107742107802_
                                       _e107743107805_
                                       _hd107744107808_
                                       _tl107745107810_
                                       _e107746107813_
                                       _hd107747107816_
                                       _tl107748107818_
                                       _e107749107821_
                                       _hd107750107824_
                                       _tl107751107826_
                                       _e107752107829_
                                       _hd107753107832_
                                       _tl107754107834_
                                       _e107755107837_
                                       _hd107756107840_
                                       _tl107757107842_
                                       _e107758107845_
                                       _hd107759107848_
                                       _tl107760107850_
                                       _e107761107853_
                                       _hd107762107856_
                                       _tl107763107858_
                                       _e107764107861_
                                       _hd107765107864_
                                       _tl107766107866_
                                       _e107767107869_
                                       _hd107768107872_
                                       _tl107769107874_
                                       _e107770107877_
                                       _hd107771107880_
                                       _tl107772107882_)
                                      (___kont110011110012_))
                                  (___kont110011110012_))
                              (___kont110011110012_))))
                      (___kont110011110012_))
                  (___kont110011110012_))
              (___kont110011110012_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont110011110012_))))
                                      (___kont110011110012_))))
                               (___match110038110039_
                                (lambda (_e107673107930_
                                         _hd107674107933_
                                         _tl107675107935_
                                         ___splice110005110006_
                                         _target107676107938_
                                         _tl107678107940_)
                                  (letrec ((_loop107679107943_
                                            (lambda (_hd107677107946_
                                                     _arg107683107948_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd107677107946_))
                                                  (let ((_e107680107951_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd107677107946_))))
                                                    (let ((_lp-tl107682107956_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e107680107951_)))
                                                          (_lp-hd107681107954_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e107680107951_))))
                                                      (let ((__tmp111402
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd107681107954_ _arg107683107948_))))
                (declare (not safe))
                (_loop107679107943_ _lp-tl107682107956_ __tmp111402))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg107684107959_
                                                         (reverse _arg107683107948_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl107675107935_))
                                                        (let ((_e107685107962_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl107675107935_))))
                  (let ((_tl107687107967_
                         (let () (declare (not safe)) (##cdr _e107685107962_)))
                        (_hd107686107965_
                         (let ()
                           (declare (not safe))
                           (##car _e107685107962_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd107686107965_))
                        (let ((_e107688107970_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd107686107965_))))
                          (let ((_tl107690107975_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107688107970_)))
                                (_hd107689107973_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107688107970_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd107689107973_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd107689107973_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl107690107975_))
                                        (let ((_e107691107978_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl107690107975_))))
                                          (let ((_tl107693107983_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107691107978_)))
                                                (_hd107692107981_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107691107978_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd107692107981_))
                                                (let ((_e107694107986_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd107692107981_))))
                                                  (let ((_tl107696107991_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e107694107986_)))
                                                        (_hd107695107989_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e107694107986_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd107695107989_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd107695107989_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl107696107991_))
                        (let ((_e107697107994_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl107696107991_))))
                          (let ((_tl107699107999_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107697107994_)))
                                (_hd107698107997_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107697107994_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl107699107999_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl107693107983_))
                                    (let ((_e107700108002_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl107693107983_))))
                                      (let ((_tl107702108007_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e107700108002_)))
                                            (_hd107701108005_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e107700108002_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd107701108005_))
                                            (let ((_e107703108010_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd107701108005_))))
                                              (let ((_tl107705108015_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e107703108010_)))
                                                    (_hd107704108013_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e107703108010_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd107704108013_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd107704108013_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl107705108015_))
                                                            (let ((_e107706108018_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl107705108015_))))
                      (let ((_tl107708108023_
                             (let ()
                               (declare (not safe))
                               (##cdr _e107706108018_)))
                            (_hd107707108021_
                             (let ()
                               (declare (not safe))
                               (##car _e107706108018_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl107708108023_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl107702108007_))
                                (if (fx>= (let ()
                                            (declare (not safe))
                                            (gx#stx-length _tl107702108007_))
                                          '1)
                                    (let ((___splice110007110008_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl107702108007_
                                              '1))))
                                      (let ((_tl107711108028_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice110007110008_
                                                '1)))
                                            (_target107709108026_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice110007110008_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl107711108028_))
                                            (let ((_e107718108031_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl107711108028_))))
                                              (let ((_tl107720108036_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e107718108031_)))
                                                    (_hd107719108034_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e107718108031_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd107719108034_))
                                                    (let ((_e107721108039_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd107719108034_))))
                                                      (let ((_tl107723108044_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e107721108039_)))
                    (_hd107722108042_
                     (let () (declare (not safe)) (##car _e107721108039_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd107722108042_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd107722108042_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl107723108044_))
                            (let ((_e107724108047_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl107723108044_))))
                              (let ((_tl107726108052_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e107724108047_)))
                                    (_hd107725108050_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e107724108047_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl107726108052_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl107720108036_))
                                        (letrec ((_loop107712108055_
                                                  (lambda (_hd107710108058_
                                                           _xarg107716108060_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd107710108058_))
                                                        (let ((_e107713108063_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd107710108058_))))
                  (let ((_lp-tl107715108068_
                         (let () (declare (not safe)) (##cdr _e107713108063_)))
                        (_lp-hd107714108066_
                         (let ()
                           (declare (not safe))
                           (##car _e107713108063_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd107714108066_))
                        (let ((_e107727108071_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd107714108066_))))
                          (let ((_tl107729108076_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107727108071_)))
                                (_hd107728108074_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107727108071_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd107728108074_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd107728108074_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl107729108076_))
                                        (let ((_e107730108079_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl107729108076_))))
                                          (let ((_tl107732108084_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107730108079_)))
                                                (_hd107731108082_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107730108079_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl107732108084_))
                                                (let ((__tmp111403
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd107731108082_
                                                               _xarg107716108060_))))
                                                  (declare (not safe))
                                                  (_loop107712108055_
                                                   _lp-tl107715108068_
                                                   __tmp111403))
                                                (___match110108110109_
                                                 _e107673107930_
                                                 _hd107674107933_
                                                 _tl107675107935_
                                                 _e107685107962_
                                                 _hd107686107965_
                                                 _tl107687107967_
                                                 _e107688107970_
                                                 _hd107689107973_
                                                 _tl107690107975_
                                                 _e107691107978_
                                                 _hd107692107981_
                                                 _tl107693107983_
                                                 _e107694107986_
                                                 _hd107695107989_
                                                 _tl107696107991_
                                                 _e107697107994_
                                                 _hd107698107997_
                                                 _tl107699107999_
                                                 _e107700108002_
                                                 _hd107701108005_
                                                 _tl107702108007_
                                                 _e107703108010_
                                                 _hd107704108013_
                                                 _tl107705108015_
                                                 _e107706108018_
                                                 _hd107707108021_
                                                 _tl107708108023_))))
                                        (___match110108110109_
                                         _e107673107930_
                                         _hd107674107933_
                                         _tl107675107935_
                                         _e107685107962_
                                         _hd107686107965_
                                         _tl107687107967_
                                         _e107688107970_
                                         _hd107689107973_
                                         _tl107690107975_
                                         _e107691107978_
                                         _hd107692107981_
                                         _tl107693107983_
                                         _e107694107986_
                                         _hd107695107989_
                                         _tl107696107991_
                                         _e107697107994_
                                         _hd107698107997_
                                         _tl107699107999_
                                         _e107700108002_
                                         _hd107701108005_
                                         _tl107702108007_
                                         _e107703108010_
                                         _hd107704108013_
                                         _tl107705108015_
                                         _e107706108018_
                                         _hd107707108021_
                                         _tl107708108023_))
                                    (___match110108110109_
                                     _e107673107930_
                                     _hd107674107933_
                                     _tl107675107935_
                                     _e107685107962_
                                     _hd107686107965_
                                     _tl107687107967_
                                     _e107688107970_
                                     _hd107689107973_
                                     _tl107690107975_
                                     _e107691107978_
                                     _hd107692107981_
                                     _tl107693107983_
                                     _e107694107986_
                                     _hd107695107989_
                                     _tl107696107991_
                                     _e107697107994_
                                     _hd107698107997_
                                     _tl107699107999_
                                     _e107700108002_
                                     _hd107701108005_
                                     _tl107702108007_
                                     _e107703108010_
                                     _hd107704108013_
                                     _tl107705108015_
                                     _e107706108018_
                                     _hd107707108021_
                                     _tl107708108023_))
                                (___match110108110109_
                                 _e107673107930_
                                 _hd107674107933_
                                 _tl107675107935_
                                 _e107685107962_
                                 _hd107686107965_
                                 _tl107687107967_
                                 _e107688107970_
                                 _hd107689107973_
                                 _tl107690107975_
                                 _e107691107978_
                                 _hd107692107981_
                                 _tl107693107983_
                                 _e107694107986_
                                 _hd107695107989_
                                 _tl107696107991_
                                 _e107697107994_
                                 _hd107698107997_
                                 _tl107699107999_
                                 _e107700108002_
                                 _hd107701108005_
                                 _tl107702108007_
                                 _e107703108010_
                                 _hd107704108013_
                                 _tl107705108015_
                                 _e107706108018_
                                 _hd107707108021_
                                 _tl107708108023_))))
                        (___match110108110109_
                         _e107673107930_
                         _hd107674107933_
                         _tl107675107935_
                         _e107685107962_
                         _hd107686107965_
                         _tl107687107967_
                         _e107688107970_
                         _hd107689107973_
                         _tl107690107975_
                         _e107691107978_
                         _hd107692107981_
                         _tl107693107983_
                         _e107694107986_
                         _hd107695107989_
                         _tl107696107991_
                         _e107697107994_
                         _hd107698107997_
                         _tl107699107999_
                         _e107700108002_
                         _hd107701108005_
                         _tl107702108007_
                         _e107703108010_
                         _hd107704108013_
                         _tl107705108015_
                         _e107706108018_
                         _hd107707108021_
                         _tl107708108023_))))
                (let ((_xarg107717108087_ (reverse _xarg107716108060_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl107687107967_))
                      (let ((_L108090_ _hd107725108050_)
                            (_L108091_ _xarg107717108087_)
                            (_L108092_ _hd107707108021_)
                            (_L108093_ _hd107698107997_)
                            (_L108094_ _tl107678107940_)
                            (_L108095_ _arg107684107959_))
                        (if (and (let ((__tmp111404
                                        (let ((__tmp111405
                                               (lambda (_g108138108141_
                                                        _g108139108143_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g108138108141_
                                                         _g108139108143_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp111405 '() _L108095_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp111404))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L108094_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L108093_ 'apply))
                                 (fx= (length (let ((__tmp111406
                                                     (lambda (_g108145108148_
                                                              _g108146108150_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g108145108148_
                                                               _g108146108150_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp111406
                                                        '()
                                                        _L108095_)))
                                      (length (let ((__tmp111407
                                                     (lambda (_g108152108155_
                                                              _g108153108157_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g108152108155_
                                                               _g108153108157_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp111407
                                                        '()
                                                        _L108091_))))
                                 (let ((__tmp111410
                                        (let ((__tmp111411
                                               (lambda (_g108159108162_
                                                        _g108160108164_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g108159108162_
                                                         _g108160108164_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp111411 '() _L108095_)))
                                       (__tmp111408
                                        (let ((__tmp111409
                                               (lambda (_g108166108169_
                                                        _g108167108171_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g108166108169_
                                                         _g108167108171_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp111409 '() _L108091_))))
                                   (declare (not safe))
                                   (andmap2 gx#free-identifier=?
                                            __tmp111410
                                            __tmp111408))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L108094_ _L108090_))
                                 (let ((__tmp111412
                                        (let ((__tmp111416
                                               (lambda (_g108173108175_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#free-identifier=?
                                                    _g108173108175_
                                                    _L108092_))))
                                              (__tmp111413
                                               (let ((__tmp111415
                                                      (lambda (_g108177108180_
                                                               _g108178108182_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g108177108180_
                                                                _g108178108182_))))
                                                     (__tmp111414
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L108094_ '()))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp111415
                                                         __tmp111414
                                                         _L108095_))))
                                          (declare (not safe))
                                          (find __tmp111416 __tmp111413))))
                                   (declare (not safe))
                                   (not __tmp111412)))
                            (___kont110003110004_
                             _L108090_
                             _L108091_
                             _L108092_
                             _L108093_
                             _L108094_
                             _L108095_)
                            (___match110108110109_
                             _e107673107930_
                             _hd107674107933_
                             _tl107675107935_
                             _e107685107962_
                             _hd107686107965_
                             _tl107687107967_
                             _e107688107970_
                             _hd107689107973_
                             _tl107690107975_
                             _e107691107978_
                             _hd107692107981_
                             _tl107693107983_
                             _e107694107986_
                             _hd107695107989_
                             _tl107696107991_
                             _e107697107994_
                             _hd107698107997_
                             _tl107699107999_
                             _e107700108002_
                             _hd107701108005_
                             _tl107702108007_
                             _e107703108010_
                             _hd107704108013_
                             _tl107705108015_
                             _e107706108018_
                             _hd107707108021_
                             _tl107708108023_)))
                      (___match110108110109_
                       _e107673107930_
                       _hd107674107933_
                       _tl107675107935_
                       _e107685107962_
                       _hd107686107965_
                       _tl107687107967_
                       _e107688107970_
                       _hd107689107973_
                       _tl107690107975_
                       _e107691107978_
                       _hd107692107981_
                       _tl107693107983_
                       _e107694107986_
                       _hd107695107989_
                       _tl107696107991_
                       _e107697107994_
                       _hd107698107997_
                       _tl107699107999_
                       _e107700108002_
                       _hd107701108005_
                       _tl107702108007_
                       _e107703108010_
                       _hd107704108013_
                       _tl107705108015_
                       _e107706108018_
                       _hd107707108021_
                       _tl107708108023_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop107712108055_
                                             _target107709108026_
                                             '())))
                                        (___match110108110109_
                                         _e107673107930_
                                         _hd107674107933_
                                         _tl107675107935_
                                         _e107685107962_
                                         _hd107686107965_
                                         _tl107687107967_
                                         _e107688107970_
                                         _hd107689107973_
                                         _tl107690107975_
                                         _e107691107978_
                                         _hd107692107981_
                                         _tl107693107983_
                                         _e107694107986_
                                         _hd107695107989_
                                         _tl107696107991_
                                         _e107697107994_
                                         _hd107698107997_
                                         _tl107699107999_
                                         _e107700108002_
                                         _hd107701108005_
                                         _tl107702108007_
                                         _e107703108010_
                                         _hd107704108013_
                                         _tl107705108015_
                                         _e107706108018_
                                         _hd107707108021_
                                         _tl107708108023_))
                                    (___match110108110109_
                                     _e107673107930_
                                     _hd107674107933_
                                     _tl107675107935_
                                     _e107685107962_
                                     _hd107686107965_
                                     _tl107687107967_
                                     _e107688107970_
                                     _hd107689107973_
                                     _tl107690107975_
                                     _e107691107978_
                                     _hd107692107981_
                                     _tl107693107983_
                                     _e107694107986_
                                     _hd107695107989_
                                     _tl107696107991_
                                     _e107697107994_
                                     _hd107698107997_
                                     _tl107699107999_
                                     _e107700108002_
                                     _hd107701108005_
                                     _tl107702108007_
                                     _e107703108010_
                                     _hd107704108013_
                                     _tl107705108015_
                                     _e107706108018_
                                     _hd107707108021_
                                     _tl107708108023_))))
                            (___match110108110109_
                             _e107673107930_
                             _hd107674107933_
                             _tl107675107935_
                             _e107685107962_
                             _hd107686107965_
                             _tl107687107967_
                             _e107688107970_
                             _hd107689107973_
                             _tl107690107975_
                             _e107691107978_
                             _hd107692107981_
                             _tl107693107983_
                             _e107694107986_
                             _hd107695107989_
                             _tl107696107991_
                             _e107697107994_
                             _hd107698107997_
                             _tl107699107999_
                             _e107700108002_
                             _hd107701108005_
                             _tl107702108007_
                             _e107703108010_
                             _hd107704108013_
                             _tl107705108015_
                             _e107706108018_
                             _hd107707108021_
                             _tl107708108023_))
                        (___match110108110109_
                         _e107673107930_
                         _hd107674107933_
                         _tl107675107935_
                         _e107685107962_
                         _hd107686107965_
                         _tl107687107967_
                         _e107688107970_
                         _hd107689107973_
                         _tl107690107975_
                         _e107691107978_
                         _hd107692107981_
                         _tl107693107983_
                         _e107694107986_
                         _hd107695107989_
                         _tl107696107991_
                         _e107697107994_
                         _hd107698107997_
                         _tl107699107999_
                         _e107700108002_
                         _hd107701108005_
                         _tl107702108007_
                         _e107703108010_
                         _hd107704108013_
                         _tl107705108015_
                         _e107706108018_
                         _hd107707108021_
                         _tl107708108023_))
                    (___match110108110109_
                     _e107673107930_
                     _hd107674107933_
                     _tl107675107935_
                     _e107685107962_
                     _hd107686107965_
                     _tl107687107967_
                     _e107688107970_
                     _hd107689107973_
                     _tl107690107975_
                     _e107691107978_
                     _hd107692107981_
                     _tl107693107983_
                     _e107694107986_
                     _hd107695107989_
                     _tl107696107991_
                     _e107697107994_
                     _hd107698107997_
                     _tl107699107999_
                     _e107700108002_
                     _hd107701108005_
                     _tl107702108007_
                     _e107703108010_
                     _hd107704108013_
                     _tl107705108015_
                     _e107706108018_
                     _hd107707108021_
                     _tl107708108023_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match110108110109_
                                                     _e107673107930_
                                                     _hd107674107933_
                                                     _tl107675107935_
                                                     _e107685107962_
                                                     _hd107686107965_
                                                     _tl107687107967_
                                                     _e107688107970_
                                                     _hd107689107973_
                                                     _tl107690107975_
                                                     _e107691107978_
                                                     _hd107692107981_
                                                     _tl107693107983_
                                                     _e107694107986_
                                                     _hd107695107989_
                                                     _tl107696107991_
                                                     _e107697107994_
                                                     _hd107698107997_
                                                     _tl107699107999_
                                                     _e107700108002_
                                                     _hd107701108005_
                                                     _tl107702108007_
                                                     _e107703108010_
                                                     _hd107704108013_
                                                     _tl107705108015_
                                                     _e107706108018_
                                                     _hd107707108021_
                                                     _tl107708108023_))))
                                            (___match110108110109_
                                             _e107673107930_
                                             _hd107674107933_
                                             _tl107675107935_
                                             _e107685107962_
                                             _hd107686107965_
                                             _tl107687107967_
                                             _e107688107970_
                                             _hd107689107973_
                                             _tl107690107975_
                                             _e107691107978_
                                             _hd107692107981_
                                             _tl107693107983_
                                             _e107694107986_
                                             _hd107695107989_
                                             _tl107696107991_
                                             _e107697107994_
                                             _hd107698107997_
                                             _tl107699107999_
                                             _e107700108002_
                                             _hd107701108005_
                                             _tl107702108007_
                                             _e107703108010_
                                             _hd107704108013_
                                             _tl107705108015_
                                             _e107706108018_
                                             _hd107707108021_
                                             _tl107708108023_))))
                                    (___match110108110109_
                                     _e107673107930_
                                     _hd107674107933_
                                     _tl107675107935_
                                     _e107685107962_
                                     _hd107686107965_
                                     _tl107687107967_
                                     _e107688107970_
                                     _hd107689107973_
                                     _tl107690107975_
                                     _e107691107978_
                                     _hd107692107981_
                                     _tl107693107983_
                                     _e107694107986_
                                     _hd107695107989_
                                     _tl107696107991_
                                     _e107697107994_
                                     _hd107698107997_
                                     _tl107699107999_
                                     _e107700108002_
                                     _hd107701108005_
                                     _tl107702108007_
                                     _e107703108010_
                                     _hd107704108013_
                                     _tl107705108015_
                                     _e107706108018_
                                     _hd107707108021_
                                     _tl107708108023_))
                                (___match110108110109_
                                 _e107673107930_
                                 _hd107674107933_
                                 _tl107675107935_
                                 _e107685107962_
                                 _hd107686107965_
                                 _tl107687107967_
                                 _e107688107970_
                                 _hd107689107973_
                                 _tl107690107975_
                                 _e107691107978_
                                 _hd107692107981_
                                 _tl107693107983_
                                 _e107694107986_
                                 _hd107695107989_
                                 _tl107696107991_
                                 _e107697107994_
                                 _hd107698107997_
                                 _tl107699107999_
                                 _e107700108002_
                                 _hd107701108005_
                                 _tl107702108007_
                                 _e107703108010_
                                 _hd107704108013_
                                 _tl107705108015_
                                 _e107706108018_
                                 _hd107707108021_
                                 _tl107708108023_))
                            (___kont110011110012_))))
                    (___kont110011110012_))
                (___kont110011110012_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont110011110012_))))
                                            (___kont110011110012_))))
                                    (___kont110011110012_))
                                (___kont110011110012_))))
                        (___kont110011110012_))
                    (___kont110011110012_))
                (___kont110011110012_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont110011110012_))))
                                        (___kont110011110012_))
                                    (___kont110011110012_))
                                (___kont110011110012_))))
                        (___kont110011110012_))))
                (___kont110011110012_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop107679107943_
                                       _target107676107938_
                                       '())))))
                               (___match110026110027_
                                (lambda (_e107625108190_
                                         _hd107626108193_
                                         _tl107627108195_
                                         ___splice109999110000_
                                         _target107628108198_
                                         _tl107630108200_)
                                  (letrec ((_loop107631108203_
                                            (lambda (_hd107629108206_
                                                     _arg107635108208_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd107629108206_))
                                                  (let ((_e107632108211_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd107629108206_))))
                                                    (let ((_lp-tl107634108216_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e107632108211_)))
                                                          (_lp-hd107633108214_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e107632108211_))))
                                                      (let ((__tmp111417
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd107633108214_ _arg107635108208_))))
                (declare (not safe))
                (_loop107631108203_ _lp-tl107634108216_ __tmp111417))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg107636108219_
                                                         (reverse _arg107635108208_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl107627108195_))
                                                        (let ((_e107637108222_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl107627108195_))))
                  (let ((_tl107639108227_
                         (let () (declare (not safe)) (##cdr _e107637108222_)))
                        (_hd107638108225_
                         (let ()
                           (declare (not safe))
                           (##car _e107637108222_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd107638108225_))
                        (let ((_e107640108230_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd107638108225_))))
                          (let ((_tl107642108235_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107640108230_)))
                                (_hd107641108233_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107640108230_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd107641108233_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd107641108233_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl107642108235_))
                                        (let ((_e107643108238_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl107642108235_))))
                                          (let ((_tl107645108243_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107643108238_)))
                                                (_hd107644108241_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107643108238_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd107644108241_))
                                                (let ((_e107646108246_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd107644108241_))))
                                                  (let ((_tl107648108251_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e107646108246_)))
                                                        (_hd107647108249_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e107646108246_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd107647108249_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd107647108249_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl107648108251_))
                        (let ((_e107649108254_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl107648108251_))))
                          (let ((_tl107651108259_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107649108254_)))
                                (_hd107650108257_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107649108254_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl107651108259_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl107645108243_))
                                    (let ((___splice110001110002_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl107645108243_
                                              '0))))
                                      (let ((_tl107654108264_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice110001110002_
                                                '1)))
                                            (_target107652108262_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice110001110002_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl107654108264_))
                                            (letrec ((_loop107655108267_
                                                      (lambda (_hd107653108270_
                                                               _xarg107659108272_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _hd107653108270_))
                                                            (let ((_e107656108275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd107653108270_))))
                      (let ((_lp-tl107658108280_
                             (let ()
                               (declare (not safe))
                               (##cdr _e107656108275_)))
                            (_lp-hd107657108278_
                             (let ()
                               (declare (not safe))
                               (##car _e107656108275_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _lp-hd107657108278_))
                            (let ((_e107661108283_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _lp-hd107657108278_))))
                              (let ((_tl107663108288_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e107661108283_)))
                                    (_hd107662108286_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e107661108283_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd107662108286_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#ref _hd107662108286_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl107663108288_))
                                            (let ((_e107664108291_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl107663108288_))))
                                              (let ((_tl107666108296_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e107664108291_)))
                                                    (_hd107665108294_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e107664108291_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl107666108296_))
                                                    (let ((__tmp111418
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd107665108294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xarg107659108272_))))
              (declare (not safe))
              (_loop107655108267_ _lp-tl107658108280_ __tmp111418))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match110038110039_
                                                     _e107625108190_
                                                     _hd107626108193_
                                                     _tl107627108195_
                                                     ___splice109999110000_
                                                     _target107628108198_
                                                     _tl107630108200_))))
                                            (___match110038110039_
                                             _e107625108190_
                                             _hd107626108193_
                                             _tl107627108195_
                                             ___splice109999110000_
                                             _target107628108198_
                                             _tl107630108200_))
                                        (___match110038110039_
                                         _e107625108190_
                                         _hd107626108193_
                                         _tl107627108195_
                                         ___splice109999110000_
                                         _target107628108198_
                                         _tl107630108200_))
                                    (___match110038110039_
                                     _e107625108190_
                                     _hd107626108193_
                                     _tl107627108195_
                                     ___splice109999110000_
                                     _target107628108198_
                                     _tl107630108200_))))
                            (___match110038110039_
                             _e107625108190_
                             _hd107626108193_
                             _tl107627108195_
                             ___splice109999110000_
                             _target107628108198_
                             _tl107630108200_))))
                    (let ((_xarg107660108299_ (reverse _xarg107659108272_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl107639108227_))
                          (let ((_L108302_ _xarg107660108299_)
                                (_L108303_ _hd107650108257_)
                                (_L108304_ _arg107636108219_))
                            (if (and (let ((__tmp111419
                                            (let ((__tmp111420
                                                   (lambda (_g108332108335_
                                                            _g108333108337_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g108332108335_
                                                             _g108333108337_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp111420
                                                      '()
                                                      _L108304_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp111419))
                                     (fx= (length (let ((__tmp111421
                                                         (lambda (_g108339108342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g108340108344_)
                   (let ()
                     (declare (not safe))
                     (cons _g108339108342_ _g108340108344_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp111421
                                                            '()
                                                            _L108304_)))
                                          (length (let ((__tmp111422
                                                         (lambda (_g108346108349_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g108347108351_)
                   (let ()
                     (declare (not safe))
                     (cons _g108346108349_ _g108347108351_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp111422
                                                            '()
                                                            _L108302_))))
                                     (let ((__tmp111425
                                            (let ((__tmp111426
                                                   (lambda (_g108353108356_
                                                            _g108354108358_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g108353108356_
                                                             _g108354108358_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp111426
                                                      '()
                                                      _L108304_)))
                                           (__tmp111423
                                            (let ((__tmp111424
                                                   (lambda (_g108360108363_
                                                            _g108361108365_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g108360108363_
                                                             _g108361108365_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp111424
                                                      '()
                                                      _L108302_))))
                                       (declare (not safe))
                                       (andmap2 gx#free-identifier=?
                                                __tmp111425
                                                __tmp111423))
                                     (let ((__tmp111427
                                            (let ((__tmp111430
                                                   (lambda (_g108367108369_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _g108367108369_
                                                        _L108303_))))
                                                  (__tmp111428
                                                   (let ((__tmp111429
                                                          (lambda (_g108371108374_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g108372108376_)
                    (let ()
                      (declare (not safe))
                      (cons _g108371108374_ _g108372108376_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr1 __tmp111429
                                                             '()
                                                             _L108304_))))
                                              (declare (not safe))
                                              (find __tmp111430 __tmp111428))))
                                       (declare (not safe))
                                       (not __tmp111427)))
                                (___kont109997109998_
                                 _L108302_
                                 _L108303_
                                 _L108304_)
                                (___match110038110039_
                                 _e107625108190_
                                 _hd107626108193_
                                 _tl107627108195_
                                 ___splice109999110000_
                                 _target107628108198_
                                 _tl107630108200_)))
                          (___match110038110039_
                           _e107625108190_
                           _hd107626108193_
                           _tl107627108195_
                           ___splice109999110000_
                           _target107628108198_
                           _tl107630108200_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop107655108267_
                                                 _target107652108262_
                                                 '())))
                                            (___match110038110039_
                                             _e107625108190_
                                             _hd107626108193_
                                             _tl107627108195_
                                             ___splice109999110000_
                                             _target107628108198_
                                             _tl107630108200_))))
                                    (___match110038110039_
                                     _e107625108190_
                                     _hd107626108193_
                                     _tl107627108195_
                                     ___splice109999110000_
                                     _target107628108198_
                                     _tl107630108200_))
                                (___match110038110039_
                                 _e107625108190_
                                 _hd107626108193_
                                 _tl107627108195_
                                 ___splice109999110000_
                                 _target107628108198_
                                 _tl107630108200_))))
                        (___match110038110039_
                         _e107625108190_
                         _hd107626108193_
                         _tl107627108195_
                         ___splice109999110000_
                         _target107628108198_
                         _tl107630108200_))
                    (___match110038110039_
                     _e107625108190_
                     _hd107626108193_
                     _tl107627108195_
                     ___splice109999110000_
                     _target107628108198_
                     _tl107630108200_))
                (___match110038110039_
                 _e107625108190_
                 _hd107626108193_
                 _tl107627108195_
                 ___splice109999110000_
                 _target107628108198_
                 _tl107630108200_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match110038110039_
                                                 _e107625108190_
                                                 _hd107626108193_
                                                 _tl107627108195_
                                                 ___splice109999110000_
                                                 _target107628108198_
                                                 _tl107630108200_))))
                                        (___match110038110039_
                                         _e107625108190_
                                         _hd107626108193_
                                         _tl107627108195_
                                         ___splice109999110000_
                                         _target107628108198_
                                         _tl107630108200_))
                                    (___match110038110039_
                                     _e107625108190_
                                     _hd107626108193_
                                     _tl107627108195_
                                     ___splice109999110000_
                                     _target107628108198_
                                     _tl107630108200_))
                                (___match110038110039_
                                 _e107625108190_
                                 _hd107626108193_
                                 _tl107627108195_
                                 ___splice109999110000_
                                 _target107628108198_
                                 _tl107630108200_))))
                        (___match110038110039_
                         _e107625108190_
                         _hd107626108193_
                         _tl107627108195_
                         ___splice109999110000_
                         _target107628108198_
                         _tl107630108200_))))
                (___match110038110039_
                 _e107625108190_
                 _hd107626108193_
                 _tl107627108195_
                 ___splice109999110000_
                 _target107628108198_
                 _tl107630108200_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop107631108203_
                                       _target107628108198_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx109995109996_))
                              (let ((_e107625108190_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx109995109996_))))
                                (let ((_tl107627108195_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e107625108190_)))
                                      (_hd107626108193_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e107625108190_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd107626108193_))
                                      (let ((___splice109999110000_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd107626108193_
                                                '0))))
                                        (let ((_tl107630108200_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice109999110000_
                                                  '1)))
                                              (_target107628108198_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice109999110000_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl107630108200_))
                                              (___match110026110027_
                                               _e107625108190_
                                               _hd107626108193_
                                               _tl107627108195_
                                               ___splice109999110000_
                                               _target107628108198_
                                               _tl107630108200_)
                                              (___match110038110039_
                                               _e107625108190_
                                               _hd107626108193_
                                               _tl107627108195_
                                               ___splice109999110000_
                                               _target107628108198_
                                               _tl107630108200_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl107627108195_))
                                          (let ((_e107740107797_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl107627108195_))))
                                            (let ((_tl107742107802_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e107740107797_)))
                                                  (_hd107741107800_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e107740107797_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd107741107800_))
                                                  (let ((_e107743107805_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd107741107800_))))
                                                    (let ((_tl107745107810_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e107743107805_)))
                                                          (_hd107744107808_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e107743107805_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd107744107808_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _hd107744107808_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl107745107810_))
                          (let ((_e107746107813_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl107745107810_))))
                            (let ((_tl107748107818_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e107746107813_)))
                                  (_hd107747107816_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e107746107813_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd107747107816_))
                                  (let ((_e107749107821_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd107747107816_))))
                                    (let ((_tl107751107826_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e107749107821_)))
                                          (_hd107750107824_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e107749107821_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd107750107824_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd107750107824_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl107751107826_))
                                                  (let ((_e107752107829_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl107751107826_))))
                                                    (let ((_tl107754107834_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e107752107829_)))
                                                          (_hd107753107832_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e107752107829_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl107754107834_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl107748107818_))
                      (let ((_e107755107837_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl107748107818_))))
                        (let ((_tl107757107842_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e107755107837_)))
                              (_hd107756107840_
                               (let ()
                                 (declare (not safe))
                                 (##car _e107755107837_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd107756107840_))
                              (let ((_e107758107845_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd107756107840_))))
                                (let ((_tl107760107850_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e107758107845_)))
                                      (_hd107759107848_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e107758107845_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd107759107848_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd107759107848_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl107760107850_))
                                              (let ((_e107761107853_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl107760107850_))))
                                                (let ((_tl107763107858_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e107761107853_)))
                                                      (_hd107762107856_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e107761107853_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl107763107858_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl107757107842_))
                                                          (let ((_e107764107861_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl107757107842_))))
                    (let ((_tl107766107866_
                           (let ()
                             (declare (not safe))
                             (##cdr _e107764107861_)))
                          (_hd107765107864_
                           (let ()
                             (declare (not safe))
                             (##car _e107764107861_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd107765107864_))
                          (let ((_e107767107869_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd107765107864_))))
                            (let ((_tl107769107874_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e107767107869_)))
                                  (_hd107768107872_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e107767107869_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd107768107872_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd107768107872_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl107769107874_))
                                          (let ((_e107770107877_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl107769107874_))))
                                            (let ((_tl107772107882_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e107770107877_)))
                                                  (_hd107771107880_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e107770107877_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl107772107882_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl107766107866_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl107742107802_))
                                                          (___match110136110137_
                                                           _e107625108190_
                                                           _hd107626108193_
                                                           _tl107627108195_
                                                           _e107740107797_
                                                           _hd107741107800_
                                                           _tl107742107802_
                                                           _e107743107805_
                                                           _hd107744107808_
                                                           _tl107745107810_
                                                           _e107746107813_
                                                           _hd107747107816_
                                                           _tl107748107818_
                                                           _e107749107821_
                                                           _hd107750107824_
                                                           _tl107751107826_
                                                           _e107752107829_
                                                           _hd107753107832_
                                                           _tl107754107834_
                                                           _e107755107837_
                                                           _hd107756107840_
                                                           _tl107757107842_
                                                           _e107758107845_
                                                           _hd107759107848_
                                                           _tl107760107850_
                                                           _e107761107853_
                                                           _hd107762107856_
                                                           _tl107763107858_
                                                           _e107764107861_
                                                           _hd107765107864_
                                                           _tl107766107866_
                                                           _e107767107869_
                                                           _hd107768107872_
                                                           _tl107769107874_
                                                           _e107770107877_
                                                           _hd107771107880_
                                                           _tl107772107882_)
                                                          (___kont110011110012_))
                                                      (___kont110011110012_))
                                                  (___kont110011110012_))))
                                          (___kont110011110012_))
                                      (___kont110011110012_))
                                  (___kont110011110012_))))
                          (___kont110011110012_))))
                  (___kont110011110012_))
              (___kont110011110012_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont110011110012_))
                                          (___kont110011110012_))
                                      (___kont110011110012_))))
                              (___kont110011110012_))))
                      (___kont110011110012_))
                  (___kont110011110012_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont110011110012_))
                                              (___kont110011110012_))
                                          (___kont110011110012_))))
                                  (___kont110011110012_))))
                          (___kont110011110012_))
                      (___kont110011110012_))
                  (___kont110011110012_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont110011110012_))))
                                          (___kont110011110012_)))))
                              (___kont110011110012_)))))))
                 (_dispatch-case-e106928_
                  (lambda (_hd107076_ _body107077_)
                    (let* ((_form107079_
                            (let ((__tmp111431
                                   (let ()
                                     (declare (not safe))
                                     (cons _body107077_ '()))))
                              (declare (not safe))
                              (cons _hd107076_ __tmp111431)))
                           (___stx110139110140_ _form107079_)
                           (_g107083107207_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx110139110140_)))))
                      (let ((___kont110141110142_
                             (lambda (_L107578_ _L107579_ _L107580_)
                               (let ((__tmp111432
                                      (let ((__tmp111434
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp111433
                                             (let ()
                                               (declare (not safe))
                                               (cons _L107579_ '()))))
                                        (declare (not safe))
                                        (cons __tmp111434 __tmp111433))))
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self106924_ __tmp111432))))
                            (___kont110147110148_
                             (lambda (_L107426_ _L107427_ _L107428_ _L107429_)
                               (let ((__tmp111435
                                      (let ((__tmp111437
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp111436
                                             (let ()
                                               (declare (not safe))
                                               (cons _L107426_ '()))))
                                        (declare (not safe))
                                        (cons __tmp111437 __tmp111436))))
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self106924_ __tmp111435))))
                            (___kont110151110152_
                             (lambda (_L107292_ _L107293_ _L107294_)
                               (let ((__tmp111438
                                      (let ((__tmp111440
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp111439
                                             (let ()
                                               (declare (not safe))
                                               (cons _L107292_ '()))))
                                        (declare (not safe))
                                        (cons __tmp111440 __tmp111439))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _self106924_
                                  __tmp111438)))))
                        (let* ((___match110248110249_
                                (lambda (_e107173107212_
                                         _hd107174107215_
                                         _tl107175107217_
                                         _e107176107220_
                                         _hd107177107223_
                                         _tl107178107225_
                                         _e107179107228_
                                         _hd107180107231_
                                         _tl107181107233_
                                         _e107182107236_
                                         _hd107183107239_
                                         _tl107184107241_
                                         _e107185107244_
                                         _hd107186107247_
                                         _tl107187107249_
                                         _e107188107252_
                                         _hd107189107255_
                                         _tl107190107257_
                                         _e107191107260_
                                         _hd107192107263_
                                         _tl107193107265_
                                         _e107194107268_
                                         _hd107195107271_
                                         _tl107196107273_
                                         _e107197107276_
                                         _hd107198107279_
                                         _tl107199107281_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl107193107265_))
                                      (let ((_e107200107284_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl107193107265_))))
                                        (let ((_tl107202107289_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e107200107284_)))
                                              (_hd107201107287_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e107200107284_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl107202107289_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl107178107225_))
                                                  (___kont110151110152_
                                                   _hd107198107279_
                                                   _hd107189107255_
                                                   _hd107174107215_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g107083107207_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g107083107207_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g107083107207_)))))
                               (___match110178110179_
                                (lambda (_e107134107330_
                                         _hd107135107333_
                                         _tl107136107335_
                                         ___splice110149110150_
                                         _target107137107338_
                                         _tl107139107340_)
                                  (letrec ((_loop107140107343_
                                            (lambda (_hd107138107346_
                                                     _arg107144107348_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd107138107346_))
                                                  (let ((_e107141107351_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd107138107346_))))
                                                    (let ((_lp-tl107143107356_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e107141107351_)))
                                                          (_lp-hd107142107354_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e107141107351_))))
                                                      (let ((__tmp111441
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd107142107354_ _arg107144107348_))))
                (declare (not safe))
                (_loop107140107343_ _lp-tl107143107356_ __tmp111441))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg107145107359_
                                                         (reverse _arg107144107348_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl107136107335_))
                                                        (let ((_e107146107362_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl107136107335_))))
                  (let ((_tl107148107367_
                         (let () (declare (not safe)) (##cdr _e107146107362_)))
                        (_hd107147107365_
                         (let ()
                           (declare (not safe))
                           (##car _e107146107362_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd107147107365_))
                        (let ((_e107149107370_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd107147107365_))))
                          (let ((_tl107151107375_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107149107370_)))
                                (_hd107150107373_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107149107370_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd107150107373_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd107150107373_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl107151107375_))
                                        (let ((_e107152107378_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl107151107375_))))
                                          (let ((_tl107154107383_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107152107378_)))
                                                (_hd107153107381_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107152107378_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd107153107381_))
                                                (let ((_e107155107386_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd107153107381_))))
                                                  (let ((_tl107157107391_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e107155107386_)))
                                                        (_hd107156107389_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e107155107386_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd107156107389_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd107156107389_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl107157107391_))
                        (let ((_e107158107394_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl107157107391_))))
                          (let ((_tl107160107399_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107158107394_)))
                                (_hd107159107397_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107158107394_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl107160107399_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl107154107383_))
                                    (let ((_e107161107402_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl107154107383_))))
                                      (let ((_tl107163107407_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e107161107402_)))
                                            (_hd107162107405_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e107161107402_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd107162107405_))
                                            (let ((_e107164107410_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd107162107405_))))
                                              (let ((_tl107166107415_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e107164107410_)))
                                                    (_hd107165107413_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e107164107410_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd107165107413_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd107165107413_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl107166107415_))
                                                            (let ((_e107167107418_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl107166107415_))))
                      (let ((_tl107169107423_
                             (let ()
                               (declare (not safe))
                               (##cdr _e107167107418_)))
                            (_hd107168107421_
                             (let ()
                               (declare (not safe))
                               (##car _e107167107418_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl107169107423_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl107148107367_))
                                (___kont110147110148_
                                 _hd107168107421_
                                 _hd107159107397_
                                 _tl107139107340_
                                 _arg107145107359_)
                                (___match110248110249_
                                 _e107134107330_
                                 _hd107135107333_
                                 _tl107136107335_
                                 _e107146107362_
                                 _hd107147107365_
                                 _tl107148107367_
                                 _e107149107370_
                                 _hd107150107373_
                                 _tl107151107375_
                                 _e107152107378_
                                 _hd107153107381_
                                 _tl107154107383_
                                 _e107155107386_
                                 _hd107156107389_
                                 _tl107157107391_
                                 _e107158107394_
                                 _hd107159107397_
                                 _tl107160107399_
                                 _e107161107402_
                                 _hd107162107405_
                                 _tl107163107407_
                                 _e107164107410_
                                 _hd107165107413_
                                 _tl107166107415_
                                 _e107167107418_
                                 _hd107168107421_
                                 _tl107169107423_))
                            (let () (declare (not safe)) (_g107083107207_)))))
                    (let () (declare (not safe)) (_g107083107207_)))
                (let () (declare (not safe)) (_g107083107207_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g107083107207_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g107083107207_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g107083107207_)))
                                (let ()
                                  (declare (not safe))
                                  (_g107083107207_)))))
                        (let () (declare (not safe)) (_g107083107207_)))
                    (let () (declare (not safe)) (_g107083107207_)))
                (let () (declare (not safe)) (_g107083107207_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g107083107207_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g107083107207_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g107083107207_)))
                                (let ()
                                  (declare (not safe))
                                  (_g107083107207_)))))
                        (let () (declare (not safe)) (_g107083107207_)))))
                (let () (declare (not safe)) (_g107083107207_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop107140107343_
                                       _target107137107338_
                                       '())))))
                               (___match110166110167_
                                (lambda (_e107088107466_
                                         _hd107089107469_
                                         _tl107090107471_
                                         ___splice110143110144_
                                         _target107091107474_
                                         _tl107093107476_)
                                  (letrec ((_loop107094107479_
                                            (lambda (_hd107092107482_
                                                     _arg107098107484_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd107092107482_))
                                                  (let ((_e107095107487_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd107092107482_))))
                                                    (let ((_lp-tl107097107492_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e107095107487_)))
                                                          (_lp-hd107096107490_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e107095107487_))))
                                                      (let ((__tmp111442
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd107096107490_ _arg107098107484_))))
                (declare (not safe))
                (_loop107094107479_ _lp-tl107097107492_ __tmp111442))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg107099107495_
                                                         (reverse _arg107098107484_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl107090107471_))
                                                        (let ((_e107100107498_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl107090107471_))))
                  (let ((_tl107102107503_
                         (let () (declare (not safe)) (##cdr _e107100107498_)))
                        (_hd107101107501_
                         (let ()
                           (declare (not safe))
                           (##car _e107100107498_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd107101107501_))
                        (let ((_e107103107506_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd107101107501_))))
                          (let ((_tl107105107511_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107103107506_)))
                                (_hd107104107509_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107103107506_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd107104107509_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd107104107509_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl107105107511_))
                                        (let ((_e107106107514_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl107105107511_))))
                                          (let ((_tl107108107519_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107106107514_)))
                                                (_hd107107107517_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107106107514_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd107107107517_))
                                                (let ((_e107109107522_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd107107107517_))))
                                                  (let ((_tl107111107527_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e107109107522_)))
                                                        (_hd107110107525_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e107109107522_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd107110107525_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd107110107525_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl107111107527_))
                        (let ((_e107112107530_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl107111107527_))))
                          (let ((_tl107114107535_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107112107530_)))
                                (_hd107113107533_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107112107530_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl107114107535_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl107108107519_))
                                    (let ((___splice110145110146_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl107108107519_
                                              '0))))
                                      (let ((_tl107117107540_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice110145110146_
                                                '1)))
                                            (_target107115107538_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice110145110146_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl107117107540_))
                                            (letrec ((_loop107118107543_
                                                      (lambda (_hd107116107546_
                                                               _xarg107122107548_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _hd107116107546_))
                                                            (let ((_e107119107551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd107116107546_))))
                      (let ((_lp-tl107121107556_
                             (let ()
                               (declare (not safe))
                               (##cdr _e107119107551_)))
                            (_lp-hd107120107554_
                             (let ()
                               (declare (not safe))
                               (##car _e107119107551_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _lp-hd107120107554_))
                            (let ((_e107124107559_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _lp-hd107120107554_))))
                              (let ((_tl107126107564_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e107124107559_)))
                                    (_hd107125107562_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e107124107559_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd107125107562_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#ref _hd107125107562_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl107126107564_))
                                            (let ((_e107127107567_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl107126107564_))))
                                              (let ((_tl107129107572_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e107127107567_)))
                                                    (_hd107128107570_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e107127107567_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl107129107572_))
                                                    (let ((__tmp111443
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd107128107570_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xarg107122107548_))))
              (declare (not safe))
              (_loop107118107543_ _lp-tl107121107556_ __tmp111443))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match110178110179_
                                                     _e107088107466_
                                                     _hd107089107469_
                                                     _tl107090107471_
                                                     ___splice110143110144_
                                                     _target107091107474_
                                                     _tl107093107476_))))
                                            (___match110178110179_
                                             _e107088107466_
                                             _hd107089107469_
                                             _tl107090107471_
                                             ___splice110143110144_
                                             _target107091107474_
                                             _tl107093107476_))
                                        (___match110178110179_
                                         _e107088107466_
                                         _hd107089107469_
                                         _tl107090107471_
                                         ___splice110143110144_
                                         _target107091107474_
                                         _tl107093107476_))
                                    (___match110178110179_
                                     _e107088107466_
                                     _hd107089107469_
                                     _tl107090107471_
                                     ___splice110143110144_
                                     _target107091107474_
                                     _tl107093107476_))))
                            (___match110178110179_
                             _e107088107466_
                             _hd107089107469_
                             _tl107090107471_
                             ___splice110143110144_
                             _target107091107474_
                             _tl107093107476_))))
                    (let ((_xarg107123107575_ (reverse _xarg107122107548_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl107102107503_))
                          (___kont110141110142_
                           _xarg107123107575_
                           _hd107113107533_
                           _arg107099107495_)
                          (___match110178110179_
                           _e107088107466_
                           _hd107089107469_
                           _tl107090107471_
                           ___splice110143110144_
                           _target107091107474_
                           _tl107093107476_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop107118107543_
                                                 _target107115107538_
                                                 '())))
                                            (___match110178110179_
                                             _e107088107466_
                                             _hd107089107469_
                                             _tl107090107471_
                                             ___splice110143110144_
                                             _target107091107474_
                                             _tl107093107476_))))
                                    (___match110178110179_
                                     _e107088107466_
                                     _hd107089107469_
                                     _tl107090107471_
                                     ___splice110143110144_
                                     _target107091107474_
                                     _tl107093107476_))
                                (___match110178110179_
                                 _e107088107466_
                                 _hd107089107469_
                                 _tl107090107471_
                                 ___splice110143110144_
                                 _target107091107474_
                                 _tl107093107476_))))
                        (___match110178110179_
                         _e107088107466_
                         _hd107089107469_
                         _tl107090107471_
                         ___splice110143110144_
                         _target107091107474_
                         _tl107093107476_))
                    (___match110178110179_
                     _e107088107466_
                     _hd107089107469_
                     _tl107090107471_
                     ___splice110143110144_
                     _target107091107474_
                     _tl107093107476_))
                (___match110178110179_
                 _e107088107466_
                 _hd107089107469_
                 _tl107090107471_
                 ___splice110143110144_
                 _target107091107474_
                 _tl107093107476_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match110178110179_
                                                 _e107088107466_
                                                 _hd107089107469_
                                                 _tl107090107471_
                                                 ___splice110143110144_
                                                 _target107091107474_
                                                 _tl107093107476_))))
                                        (___match110178110179_
                                         _e107088107466_
                                         _hd107089107469_
                                         _tl107090107471_
                                         ___splice110143110144_
                                         _target107091107474_
                                         _tl107093107476_))
                                    (___match110178110179_
                                     _e107088107466_
                                     _hd107089107469_
                                     _tl107090107471_
                                     ___splice110143110144_
                                     _target107091107474_
                                     _tl107093107476_))
                                (___match110178110179_
                                 _e107088107466_
                                 _hd107089107469_
                                 _tl107090107471_
                                 ___splice110143110144_
                                 _target107091107474_
                                 _tl107093107476_))))
                        (___match110178110179_
                         _e107088107466_
                         _hd107089107469_
                         _tl107090107471_
                         ___splice110143110144_
                         _target107091107474_
                         _tl107093107476_))))
                (___match110178110179_
                 _e107088107466_
                 _hd107089107469_
                 _tl107090107471_
                 ___splice110143110144_
                 _target107091107474_
                 _tl107093107476_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop107094107479_
                                       _target107091107474_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx110139110140_))
                              (let ((_e107088107466_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx110139110140_))))
                                (let ((_tl107090107471_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e107088107466_)))
                                      (_hd107089107469_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e107088107466_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd107089107469_))
                                      (let ((___splice110143110144_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd107089107469_
                                                '0))))
                                        (let ((_tl107093107476_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice110143110144_
                                                  '1)))
                                              (_target107091107474_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice110143110144_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl107093107476_))
                                              (___match110166110167_
                                               _e107088107466_
                                               _hd107089107469_
                                               _tl107090107471_
                                               ___splice110143110144_
                                               _target107091107474_
                                               _tl107093107476_)
                                              (___match110178110179_
                                               _e107088107466_
                                               _hd107089107469_
                                               _tl107090107471_
                                               ___splice110143110144_
                                               _target107091107474_
                                               _tl107093107476_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl107090107471_))
                                          (let ((_e107176107220_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl107090107471_))))
                                            (let ((_tl107178107225_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e107176107220_)))
                                                  (_hd107177107223_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e107176107220_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd107177107223_))
                                                  (let ((_e107179107228_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd107177107223_))))
                                                    (let ((_tl107181107233_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e107179107228_)))
                                                          (_hd107180107231_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e107179107228_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd107180107231_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _hd107180107231_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl107181107233_))
                          (let ((_e107182107236_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl107181107233_))))
                            (let ((_tl107184107241_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e107182107236_)))
                                  (_hd107183107239_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e107182107236_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd107183107239_))
                                  (let ((_e107185107244_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd107183107239_))))
                                    (let ((_tl107187107249_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e107185107244_)))
                                          (_hd107186107247_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e107185107244_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd107186107247_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd107186107247_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl107187107249_))
                                                  (let ((_e107188107252_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl107187107249_))))
                                                    (let ((_tl107190107257_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e107188107252_)))
                                                          (_hd107189107255_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e107188107252_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl107190107257_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl107184107241_))
                      (let ((_e107191107260_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl107184107241_))))
                        (let ((_tl107193107265_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e107191107260_)))
                              (_hd107192107263_
                               (let ()
                                 (declare (not safe))
                                 (##car _e107191107260_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd107192107263_))
                              (let ((_e107194107268_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd107192107263_))))
                                (let ((_tl107196107273_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e107194107268_)))
                                      (_hd107195107271_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e107194107268_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd107195107271_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd107195107271_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl107196107273_))
                                              (let ((_e107197107276_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl107196107273_))))
                                                (let ((_tl107199107281_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e107197107276_)))
                                                      (_hd107198107279_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e107197107276_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl107199107281_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl107193107265_))
                                                          (let ((_e107200107284_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl107193107265_))))
                    (let ((_tl107202107289_
                           (let ()
                             (declare (not safe))
                             (##cdr _e107200107284_)))
                          (_hd107201107287_
                           (let ()
                             (declare (not safe))
                             (##car _e107200107284_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl107202107289_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl107178107225_))
                              (___kont110151110152_
                               _hd107198107279_
                               _hd107189107255_
                               _hd107089107469_)
                              (let () (declare (not safe)) (_g107083107207_)))
                          (let () (declare (not safe)) (_g107083107207_)))))
                  (let () (declare (not safe)) (_g107083107207_)))
              (let () (declare (not safe)) (_g107083107207_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g107083107207_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g107083107207_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g107083107207_)))))
                              (let ()
                                (declare (not safe))
                                (_g107083107207_)))))
                      (let () (declare (not safe)) (_g107083107207_)))
                  (let () (declare (not safe)) (_g107083107207_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g107083107207_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g107083107207_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g107083107207_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g107083107207_)))))
                          (let () (declare (not safe)) (_g107083107207_)))
                      (let () (declare (not safe)) (_g107083107207_)))
                  (let () (declare (not safe)) (_g107083107207_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g107083107207_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g107083107207_))))))
                              (let ()
                                (declare (not safe))
                                (_g107083107207_))))))))
                 (_generate1106929_
                  (lambda (_args107064_ _arglen107065_ _hd107066_ _body107067_)
                    (let* ((_len107069_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _hd107066_)))
                           (_condition107071_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _hd107066_))
                                (if (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-decls-unsafe?))
                                    (let ((__tmp111444
                                           (let ((__tmp111445
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _len107069_ '()))))
                                             (declare (not safe))
                                             (cons _arglen107065_
                                                   __tmp111445))))
                                      (declare (not safe))
                                      (cons '##fx= __tmp111444))
                                    (let ((__tmp111446
                                           (let ((__tmp111447
                                                  (let ((__tmp111448
                                                         (let ((__tmp111449
                                                                (let ((__tmp111450
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp111451
                                      (let ()
                                        (declare (not safe))
                                        (cons _len107069_ '()))))
                                 (declare (not safe))
                                 (cons _arglen107065_ __tmp111451))))
                          (declare (not safe))
                          (cons '##fx= __tmp111450))))
                   (declare (not safe))
                   (cons __tmp111449 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '(declare (not safe))
                                                          __tmp111448))))
                                             (declare (not safe))
                                             (cons '() __tmp111447))))
                                      (declare (not safe))
                                      (cons 'let __tmp111446)))
                                (if (> _len107069_ '0)
                                    (if (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-decls-unsafe?))
                                        (let ((__tmp111452
                                               (let ((__tmp111453
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _len107069_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _arglen107065_
                                                       __tmp111453))))
                                          (declare (not safe))
                                          (cons '##fx>= __tmp111452))
                                        (let ((__tmp111454
                                               (let ((__tmp111455
                                                      (let ((__tmp111456
                                                             (let ((__tmp111457
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp111458
                                   (let ((__tmp111459
                                          (let ()
                                            (declare (not safe))
                                            (cons _len107069_ '()))))
                                     (declare (not safe))
                                     (cons _arglen107065_ __tmp111459))))
                              (declare (not safe))
                              (cons '##fx>= __tmp111458))))
                       (declare (not safe))
                       (cons __tmp111457 '()))))
                (declare (not safe))
                (cons '(declare (not safe)) __tmp111456))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp111455))))
                                          (declare (not safe))
                                          (cons 'let __tmp111454)))
                                    '#t)))
                           (_dispatch107073_
                            (if (let ()
                                  (declare (not safe))
                                  (_dispatch-case?106927_
                                   _hd107066_
                                   _body107067_))
                                (let ()
                                  (declare (not safe))
                                  (_dispatch-case-e106928_
                                   _hd107066_
                                   _body107067_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-lambda-form
                                   _self106924_
                                   _hd107066_
                                   _body107067_)))))
                      (let ((__tmp111460
                             (let ((__tmp111461
                                    (let ((__tmp111462
                                           (let ((__tmp111463
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _args107064_ '()))))
                                             (declare (not safe))
                                             (cons _dispatch107073_
                                                   __tmp111463))))
                                      (declare (not safe))
                                      (cons 'apply __tmp111462))))
                               (declare (not safe))
                               (cons __tmp111461 '()))))
                        (declare (not safe))
                        (cons _condition107071_ __tmp111460))))))
          (let* ((_g106931106959_
                  (lambda (_g106932106956_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g106932106956_))))
                 (_g106930107061_
                  (lambda (_g106932106962_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g106932106962_))
                        (let ((_e106935106964_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g106932106962_))))
                          (let ((_hd106936106967_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e106935106964_)))
                                (_tl106937106969_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e106935106964_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl106937106969_))
                                (let ((_g111464_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl106937106969_
                                          '0))))
                                  (begin
                                    (let ((_g111465_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g111464_)
                                                 (##vector-length _g111464_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g111465_ 2)))
                                          (error "Context expects 2 values"
                                                 _g111465_)))
                                    (let ((_target106938106972_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g111464_ 0)))
                                          (_tl106940106974_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g111464_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl106940106974_))
                                          (letrec ((_loop106941106977_
                                                    (lambda (_hd106939106980_
                                                             _body106945106982_
                                                             _hd106946106984_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd106939106980_))
                                                          (let ((_e106942106987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd106939106980_))))
                    (let ((_lp-hd106943106990_
                           (let ()
                             (declare (not safe))
                             (##car _e106942106987_)))
                          (_lp-tl106944106992_
                           (let ()
                             (declare (not safe))
                             (##cdr _e106942106987_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _lp-hd106943106990_))
                          (let ((_e106949106995_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _lp-hd106943106990_))))
                            (let ((_hd106950106998_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e106949106995_)))
                                  (_tl106951107000_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e106949106995_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl106951107000_))
                                  (let ((_e106952107003_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl106951107000_))))
                                    (let ((_hd106953107006_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e106952107003_)))
                                          (_tl106954107008_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e106952107003_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl106954107008_))
                                          (let ((__tmp111467
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd106953107006_
                                                         _body106945106982_)))
                                                (__tmp111466
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd106950106998_
                                                         _hd106946106984_))))
                                            (declare (not safe))
                                            (_loop106941106977_
                                             _lp-tl106944106992_
                                             __tmp111467
                                             __tmp111466))
                                          (let ()
                                            (declare (not safe))
                                            (_g106931106959_
                                             _g106932106962_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g106931106959_ _g106932106962_)))))
                          (let ()
                            (declare (not safe))
                            (_g106931106959_ _g106932106962_)))))
                  (let ((_body106947107011_ (reverse _body106945106982_))
                        (_hd106948107013_ (reverse _hd106946106984_)))
                    ((lambda (_L107016_ _L107017_)
                       (let ((_args107036_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_arglen107037_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_name107038_
                              (let ((_$e107033_
                                     (let ((__tmp111468
                                            (gxc#current-compile-runtime-names)))
                                       (declare (not safe))
                                       (hash-get __tmp111468 _stx106925_))))
                                (if _$e107033_
                                    _$e107033_
                                    ''case-lambda-dispatch))))
                         (let ((__tmp111469
                                (let ((__tmp111470
                                       (let ((__tmp111471
                                              (let ((__tmp111472
                                                     (let ((__tmp111485
                                                            (let ((__tmp111486
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp111487
                                  (let ((__tmp111488
                                         (if (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls-unsafe?))
                                             (let ((__tmp111489
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args107036_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '##length __tmp111489))
                                             (let ((__tmp111490
                                                    (let ((__tmp111491
                                                           (let ((__tmp111492
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp111493
                                 (let ((__tmp111494
                                        (let ()
                                          (declare (not safe))
                                          (cons _args107036_ '()))))
                                   (declare (not safe))
                                   (cons '##length __tmp111494))))
                            (declare (not safe))
                            (cons __tmp111493 '()))))
                     (declare (not safe))
                     (cons '(declare (not safe)) __tmp111492))))
              (declare (not safe))
              (cons '() __tmp111491))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'let __tmp111490)))))
                                    (declare (not safe))
                                    (cons __tmp111488 '()))))
                             (declare (not safe))
                             (cons _arglen107037_ __tmp111487))))
                      (declare (not safe))
                      (cons __tmp111486 '())))
                   (__tmp111473
                    (let ((__tmp111474
                           (let ((__tmp111475
                                  (let ((__tmp111479
                                         (let ((__tmp111480
                                                (let ((__tmp111481
                                                       (let ((__tmp111482
                                                              (let ((__tmp111483
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp111484
                                    (let ()
                                      (declare (not safe))
                                      (cons _args107036_ '()))))
                               (declare (not safe))
                               (cons _name107038_ __tmp111484))))
                        (declare (not safe))
                        (cons '##raise-wrong-number-of-arguments-exception
                              __tmp111483))))
                 (declare (not safe))
                 (cons __tmp111482 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'else __tmp111481))))
                                           (declare (not safe))
                                           (cons __tmp111480 '())))
                                        (__tmp111476
                                         (map (lambda (_g107039107042_
                                                       _g107040107044_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate1106929_
                                                   _args107036_
                                                   _arglen107037_
                                                   _g107039107042_
                                                   _g107040107044_)))
                                              (let ((__tmp111477
                                                     (lambda (_g107046107049_
                                                              _g107047107051_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g107046107049_
                                                               _g107047107051_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp111477
                                                        '()
                                                        _L107017_))
                                              (let ((__tmp111478
                                                     (lambda (_g107053107056_
                                                              _g107054107058_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g107053107056_
                                                               _g107054107058_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp111478
                                                        '()
                                                        _L107016_)))))
                                    (declare (not safe))
                                    (foldr1 cons __tmp111479 __tmp111476))))
                             (declare (not safe))
                             (cons 'cond __tmp111475))))
                      (declare (not safe))
                      (cons __tmp111474 '()))))
               (declare (not safe))
               (cons __tmp111485 __tmp111473))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'let __tmp111472))))
                                         (declare (not safe))
                                         (cons __tmp111471 '()))))
                                  (declare (not safe))
                                  (cons _args107036_ __tmp111470))))
                           (declare (not safe))
                           (cons 'lambda __tmp111469))))
                     _body106947107011_
                     _hd106948107013_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_loop106941106977_
                                               _target106938106972_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_g106931106959_
                                             _g106932106962_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g106931106959_ _g106932106962_)))))
                        (let ()
                          (declare (not safe))
                          (_g106931106959_ _g106932106962_))))))
            (declare (not safe))
            (_g106930107061_ _stx106925_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_self106195_ _stx106196_ _compiled-body?106197_)
        (letrec ((_generate-simple106199_
                  (lambda (_hd106909_ _body106910_)
                    (let ((__tmp111495
                           (let ((__tmp111496
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-simple-let
                                     _self106195_
                                     'let
                                     _hd106909_
                                     _body106910_
                                     _compiled-body?106197_))))
                             (declare (not safe))
                             (_coalesce-let*106201_ __tmp111496))))
                      (declare (not safe))
                      (_coalesce-boolean106200_ __tmp111495))))
                 (_coalesce-boolean106200_
                  (lambda (_code106770_)
                    (if (gxc#current-compile-boolean-context)
                        (let* ((_code106771106797_ _code106770_)
                               (_else106773106805_ (lambda () _code106770_))
                               (_K106775106842_
                                (lambda (_expr2106808_
                                         _expr1106809_
                                         _id106810_)
                                  (let* ((_expr2106811106819_ _expr2106808_)
                                         (_else106813106827_
                                          (lambda ()
                                            (let ((__tmp111497
                                                   (let ((__tmp111498
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _expr2106808_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _expr1106809_
                                                           __tmp111498))))
                                              (declare (not safe))
                                              (cons 'or __tmp111497))))
                                         (_K106815106832_
                                          (lambda (_exprs106830_)
                                            (let ((__tmp111499
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _expr1106809_
                                                           _exprs106830_))))
                                              (declare (not safe))
                                              (cons 'or __tmp111499)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _expr2106811106819_))
                                        (let ((_hd106816106835_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _expr2106811106819_)))
                                              (_tl106817106837_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _expr2106811106819_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd106816106835_ 'or))
                                              (let ((_exprs106840_
                                                     _tl106817106837_))
                                                (declare (not safe))
                                                (_K106815106832_
                                                 _exprs106840_))
                                              (let ()
                                                (declare (not safe))
                                                (_else106813106827_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else106813106827_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _code106771106797_))
                              (let ((_hd106776106845_
                                     (let ()
                                       (declare (not safe))
                                       (##car _code106771106797_)))
                                    (_tl106777106847_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _code106771106797_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _hd106776106845_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tl106777106847_))
                                        (let ((_hd106778106850_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tl106777106847_)))
                                              (_tl106779106852_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tl106777106847_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _hd106778106850_))
                                              (let ((_hd106790106855_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _hd106778106850_)))
                                                    (_tl106791106857_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _hd106778106850_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _hd106790106855_))
                                                    (let ((_hd106792106860_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _hd106790106855_)))
                                                          (_tl106793106862_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _hd106790106855_))))
                                                      (let ((_id106865_
                                                             _hd106792106860_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _tl106793106862_))
                                                            (let ((_hd106794106867_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _tl106793106862_)))
                          (_tl106795106869_
                           (let ()
                             (declare (not safe))
                             (##cdr _tl106793106862_))))
                      (let ((_expr1106872_ _hd106794106867_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _tl106795106869_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl106791106857_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl106779106852_))
                                    (let ((_hd106780106874_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl106779106852_)))
                                          (_tl106781106876_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl106779106852_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd106780106874_))
                                          (let ((_hd106782106879_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd106780106874_)))
                                                (_tl106783106881_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd106780106874_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd106782106879_ 'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl106783106881_))
                                                    (let ((_hd106784106884_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl106783106881_)))
                                                          (_tl106785106886_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl106783106881_))))
                                                      (if ((lambda (_g106888106890_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (eq? _g106888106890_ _id106865_)))
                   _hd106784106884_)
                  (if (let () (declare (not safe)) (##pair? _tl106785106886_))
                      (let ((_hd106786106893_
                             (let ()
                               (declare (not safe))
                               (##car _tl106785106886_)))
                            (_tl106787106895_
                             (let ()
                               (declare (not safe))
                               (##cdr _tl106785106886_))))
                        (if ((lambda (_g106897106899_)
                               (let ()
                                 (declare (not safe))
                                 (eq? _g106897106899_ _id106865_)))
                             _hd106786106893_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl106787106895_))
                                (let ((_hd106788106902_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl106787106895_)))
                                      (_tl106789106904_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl106787106895_))))
                                  (let ((_expr2106907_ _hd106788106902_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl106789106904_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _tl106781106876_))
                                            (let ()
                                              (declare (not safe))
                                              (_K106775106842_
                                               _expr2106907_
                                               _expr1106872_
                                               _id106865_))
                                            (let ()
                                              (declare (not safe))
                                              (_else106773106805_)))
                                        (let ()
                                          (declare (not safe))
                                          (_else106773106805_)))))
                                (let ()
                                  (declare (not safe))
                                  (_else106773106805_)))
                            (let ()
                              (declare (not safe))
                              (_else106773106805_))))
                      (let () (declare (not safe)) (_else106773106805_)))
                  (let () (declare (not safe)) (_else106773106805_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else106773106805_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_else106773106805_))))
                                          (let ()
                                            (declare (not safe))
                                            (_else106773106805_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else106773106805_)))
                                (let ()
                                  (declare (not safe))
                                  (_else106773106805_)))
                            (let ()
                              (declare (not safe))
                              (_else106773106805_)))))
                    (let () (declare (not safe)) (_else106773106805_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else106773106805_))))
                                              (let ()
                                                (declare (not safe))
                                                (_else106773106805_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else106773106805_)))
                                    (let ()
                                      (declare (not safe))
                                      (_else106773106805_))))
                              (let ()
                                (declare (not safe))
                                (_else106773106805_))))
                        _code106770_)))
                 (_coalesce-let*106201_
                  (lambda (_code106503_)
                    (let* ((_code106504106568_ _code106503_)
                           (_else106508106576_ (lambda () _code106503_)))
                      (let ((_K106550106721_
                             (lambda (_body106717_ _expr106718_ _id106719_)
                               (let ((__tmp111500
                                      (let ((__tmp111501
                                             (let ((__tmp111502
                                                    (let ((__tmp111503
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr106718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id106719_ __tmp111503))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp111502 '()))))
                                        (declare (not safe))
                                        (cons __tmp111501 _body106717_))))
                                 (declare (not safe))
                                 (cons 'let __tmp111500))))
                            (_K106527106646_
                             (lambda (_body106640_
                                      _expr2106641_
                                      _id2106642_
                                      _expr1106643_
                                      _id1106644_)
                               (let ((__tmp111504
                                      (let ((__tmp111505
                                             (let ((__tmp111509
                                                    (let ((__tmp111510
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr1106643_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id1106644_ __tmp111510)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp111506
                                                    (let ((__tmp111507
                                                           (let ((__tmp111508
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _expr2106641_ '()))))
                     (declare (not safe))
                     (cons _id2106642_ __tmp111508))))
              (declare (not safe))
              (cons __tmp111507 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp111509
                                                     __tmp111506))))
                                        (declare (not safe))
                                        (cons __tmp111505 _body106640_))))
                                 (declare (not safe))
                                 (cons 'let* __tmp111504))))
                            (_K106510106585_
                             (lambda (_body106580_
                                      _bind106581_
                                      _expr1106582_
                                      _id1106583_)
                               (let ((__tmp111511
                                      (let ((__tmp111512
                                             (let ((__tmp111513
                                                    (let ((__tmp111514
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr1106582_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id1106583_ __tmp111514))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp111513
                                                     _bind106581_))))
                                        (declare (not safe))
                                        (cons __tmp111512 _body106580_))))
                                 (declare (not safe))
                                 (cons 'let* __tmp111511)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _code106504106568_))
                            (let ((_tl106552106726_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _code106504106568_)))
                                  (_hd106551106724_
                                   (let ()
                                     (declare (not safe))
                                     (##car _code106504106568_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd106551106724_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl106552106726_))
                                      (let ((_tl106554106731_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl106552106726_)))
                                            (_hd106553106729_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl106552106726_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _hd106553106729_))
                                            (let ((_tl106562106736_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _hd106553106729_)))
                                                  (_hd106561106734_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _hd106553106729_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _hd106561106734_))
                                                  (let ((_tl106564106741_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _hd106561106734_)))
                                                        (_hd106563106739_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _hd106561106734_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl106564106741_))
                                                        (let ((_tl106566106748_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl106564106741_)))
                      (_hd106565106746_
                       (let () (declare (not safe)) (##car _tl106564106741_))))
                  (if (let () (declare (not safe)) (##null? _tl106566106748_))
                      (if (let ()
                            (declare (not safe))
                            (##null? _tl106562106736_))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _tl106554106731_))
                              (let ((_tl106556106755_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _tl106554106731_)))
                                    (_hd106555106753_
                                     (let ()
                                       (declare (not safe))
                                       (##car _tl106554106731_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd106555106753_))
                                    (let ((_tl106558106760_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd106555106753_)))
                                          (_hd106557106758_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd106555106753_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd106557106758_ 'let))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _tl106558106760_))
                                              (let ((_tl106560106765_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _tl106558106760_)))
                                                    (_hd106559106763_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _tl106558106760_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _hd106559106763_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl106556106755_))
                                                        (let ((_id106744_
                                                               _hd106563106739_)
                                                              (_expr106751_
                                                               _hd106565106746_)
                                                              (_body106768_
                                                               _tl106560106765_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K106550106721_
                                                             _body106768_
                                                             _expr106751_
                                                             _id106744_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_else106508106576_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _hd106559106763_))
                                                        (let ((_tl106539106695_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _hd106559106763_)))
                      (_hd106538106693_
                       (let () (declare (not safe)) (##car _hd106559106763_))))
                  (if (let () (declare (not safe)) (##pair? _hd106538106693_))
                      (let ((_tl106541106700_
                             (let ()
                               (declare (not safe))
                               (##cdr _hd106538106693_)))
                            (_hd106540106698_
                             (let ()
                               (declare (not safe))
                               (##car _hd106538106693_))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl106541106700_))
                            (let ((_tl106543106707_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl106541106700_)))
                                  (_hd106542106705_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl106541106700_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl106543106707_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl106539106695_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl106556106755_))
                                          (let ((_id1106669_ _hd106563106739_)
                                                (_expr1106676_
                                                 _hd106565106746_)
                                                (_id2106703_ _hd106540106698_)
                                                (_expr2106710_
                                                 _hd106542106705_)
                                                (_body106712_
                                                 _tl106560106765_))
                                            (let ()
                                              (declare (not safe))
                                              (_K106527106646_
                                               _body106712_
                                               _expr2106710_
                                               _id2106703_
                                               _expr1106676_
                                               _id1106669_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else106508106576_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else106508106576_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else106508106576_))))
                            (let ()
                              (declare (not safe))
                              (_else106508106576_))))
                      (let () (declare (not safe)) (_else106508106576_))))
                (let () (declare (not safe)) (_else106508106576_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_else106508106576_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd106557106758_ 'let*))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl106558106760_))
                                                  (let ((_tl106520106629_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl106558106760_)))
                                                        (_hd106519106627_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl106558106760_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl106556106755_))
                                                        (let ((_id1106608_
                                                               _hd106563106739_)
                                                              (_expr1106615_
                                                               _hd106565106746_)
                                                              (_bind106632_
                                                               _hd106519106627_)
                                                              (_body106634_
                                                               _tl106520106629_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K106510106585_
                                                             _body106634_
                                                             _bind106632_
                                                             _expr1106615_
                                                             _id1106608_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_else106508106576_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else106508106576_)))
                                              (let ()
                                                (declare (not safe))
                                                (_else106508106576_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_else106508106576_))))
                              (let ()
                                (declare (not safe))
                                (_else106508106576_)))
                          (let () (declare (not safe)) (_else106508106576_)))
                      (let () (declare (not safe)) (_else106508106576_))))
                (let () (declare (not safe)) (_else106508106576_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else106508106576_))))
                                            (let ()
                                              (declare (not safe))
                                              (_else106508106576_))))
                                      (let ()
                                        (declare (not safe))
                                        (_else106508106576_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else106508106576_))))
                            (let ()
                              (declare (not safe))
                              (_else106508106576_)))))))
                 (_generate-values106202_
                  (lambda (_hd106316_ _body106317_)
                    (let _lp106319_ ((_rest106321_ _hd106316_)
                                     (_bind106322_ '())
                                     (_check106323_ '())
                                     (_post106324_ '()))
                      (let* ((___stx110450110451_ _rest106321_)
                             (_g106327106338_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx110450110451_)))))
                        (let ((___kont110452110453_
                               (lambda (_L106365_ _L106366_)
                                 (let* ((___stx110406110407_ _L106366_)
                                        (_g106381106406_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx110406110407_)))))
                                   (let ((___kont110408110409_
                                          (lambda (_L106479_ _L106480_)
                                            (let ((_eid106494_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _L106480_)))
                                                  (_expr106495_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self106195_
                                                      _L106479_))))
                                              (let ((__tmp111515
                                                     (let ((__tmp111516
                                                            (let ((__tmp111517
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr106495_ '()))))
                      (declare (not safe))
                      (cons _eid106494_ __tmp111517))))
               (declare (not safe))
               (cons __tmp111516 _bind106322_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp106319_
                                                 _L106365_
                                                 __tmp111515
                                                 _check106323_
                                                 _post106324_)))))
                                         (___kont110410110411_
                                          (lambda (_L106427_ _L106428_)
                                            (let* ((_vals106441_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_check-values106443_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _vals106441_
                                                       _L106428_
                                                       _L106427_)))
                                                   (_refs106445_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _vals106441_
                                                       _L106428_)))
                                                   (_expr106447_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self106195_
                                                       _L106427_))))
                                              (let ((__tmp111520
                                                     (let ((__tmp111521
                                                            (let ((__tmp111522
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr106447_ '()))))
                      (declare (not safe))
                      (cons _vals106441_ __tmp111522))))
               (declare (not safe))
               (cons __tmp111521 _bind106322_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp111519
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _check-values106443_
                                                             _check106323_)))
                                                    (__tmp111518
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _refs106445_
                                                             _post106324_))))
                                                (declare (not safe))
                                                (_lp106319_
                                                 _L106365_
                                                 __tmp111520
                                                 __tmp111519
                                                 __tmp111518))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx110406110407_))
                                         (let ((_e106385106455_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx110406110407_))))
                                           (let ((_tl106387106460_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e106385106455_)))
                                                 (_hd106386106458_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e106385106455_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _hd106386106458_))
                                                 (let ((_e106388106463_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _hd106386106458_))))
                                                   (let ((_tl106390106468_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e106388106463_)))
                                                         (_hd106389106466_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e106388106463_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl106390106468_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl106387106460_))
                     (let ((_e106391106471_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl106387106460_))))
                       (let ((_tl106393106476_
                              (let ()
                                (declare (not safe))
                                (##cdr _e106391106471_)))
                             (_hd106392106474_
                              (let ()
                                (declare (not safe))
                                (##car _e106391106471_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl106393106476_))
                             (___kont110408110409_
                              _hd106392106474_
                              _hd106389106466_)
                             (let () (declare (not safe)) (_g106381106406_)))))
                     (let () (declare (not safe)) (_g106381106406_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl106387106460_))
                     (let ((_e106399106419_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl106387106460_))))
                       (let ((_tl106401106424_
                              (let ()
                                (declare (not safe))
                                (##cdr _e106399106419_)))
                             (_hd106400106422_
                              (let ()
                                (declare (not safe))
                                (##car _e106399106419_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl106401106424_))
                             (___kont110410110411_
                              _hd106400106422_
                              _hd106386106458_)
                             (let () (declare (not safe)) (_g106381106406_)))))
                     (let () (declare (not safe)) (_g106381106406_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl106387106460_))
                                                     (let ((_e106399106419_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl106387106460_))))
                                                       (let ((_tl106401106424_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e106399106419_)))
                     (_hd106400106422_
                      (let () (declare (not safe)) (##car _e106399106419_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl106401106424_))
                     (___kont110410110411_ _hd106400106422_ _hd106386106458_)
                     (let () (declare (not safe)) (_g106381106406_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g106381106406_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g106381106406_)))))))
                              (___kont110454110455_
                               (lambda ()
                                 (let* ((_body106345_
                                         (if _compiled-body?106197_
                                             _body106317_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self106195_
                                                _body106317_))))
                                        (_body106347_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-post106203_
                                            _post106324_
                                            _body106345_)))
                                        (_body106349_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-check106204_
                                            _check106323_
                                            _body106347_))))
                                   (let ((__tmp111523
                                          (let ((__tmp111525
                                                 (reverse _bind106322_))
                                                (__tmp111524
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _body106349_ '()))))
                                            (declare (not safe))
                                            (cons __tmp111525 __tmp111524))))
                                     (declare (not safe))
                                     (cons 'let __tmp111523))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx110450110451_))
                              (let ((_e106331106357_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx110450110451_))))
                                (let ((_tl106333106362_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106331106357_)))
                                      (_hd106332106360_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106331106357_))))
                                  (___kont110452110453_
                                   _tl106333106362_
                                   _hd106332106360_)))
                              (___kont110454110455_)))))))
                 (_generate-values-post106203_
                  (lambda (_post106275_ _body106276_)
                    (let _lp106278_ ((_rest106280_ _post106275_)
                                     (_body106281_ _body106276_))
                      (let* ((_rest106282106290_ _rest106280_)
                             (_else106284106298_ (lambda () _body106281_))
                             (_K106286106304_
                              (lambda (_rest106301_ _bind106302_)
                                (let ((__tmp111526
                                       (let ((__tmp111527
                                              (let ((__tmp111528
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body106281_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _bind106302_
                                                      __tmp111528))))
                                         (declare (not safe))
                                         (cons 'let __tmp111527))))
                                  (declare (not safe))
                                  (_lp106278_ _rest106301_ __tmp111526)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest106282106290_))
                            (let ((_hd106287106307_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest106282106290_)))
                                  (_tl106288106309_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest106282106290_))))
                              (let* ((_bind106312_ _hd106287106307_)
                                     (_rest106314_ _tl106288106309_))
                                (declare (not safe))
                                (_K106286106304_ _rest106314_ _bind106312_)))
                            (let ()
                              (declare (not safe))
                              (_else106284106298_)))))))
                 (_generate-values-check106204_
                  (lambda (_check106272_ _body106273_)
                    (let ((__tmp111529
                           (let ((__tmp111531
                                  (let ()
                                    (declare (not safe))
                                    (cons _body106273_ '())))
                                 (__tmp111530 (reverse _check106272_)))
                             (declare (not safe))
                             (foldr1 cons __tmp111531 __tmp111530))))
                      (declare (not safe))
                      (cons 'begin __tmp111529)))))
          (let* ((_g106206106223_
                  (lambda (_g106207106220_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g106207106220_))))
                 (_g106205106269_
                  (lambda (_g106207106226_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g106207106226_))
                        (let ((_e106210106228_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g106207106226_))))
                          (let ((_hd106211106231_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e106210106228_)))
                                (_tl106212106233_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e106210106228_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl106212106233_))
                                (let ((_e106213106236_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl106212106233_))))
                                  (let ((_hd106214106239_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e106213106236_)))
                                        (_tl106215106241_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e106213106236_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl106215106241_))
                                        (let ((_e106216106244_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl106215106241_))))
                                          (let ((_hd106217106247_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e106216106244_)))
                                                (_tl106218106249_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e106216106244_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl106218106249_))
                                                ((lambda (_L106252_ _L106253_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L106253_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-simple106199_
                                                          _L106253_
                                                          _L106252_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values106202_
                                                          _L106253_
                                                          _L106252_))))
                                                 _hd106217106247_
                                                 _hd106214106239_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g106206106223_
                                                   _g106207106226_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g106206106223_ _g106207106226_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g106206106223_ _g106207106226_)))))
                        (let ()
                          (declare (not safe))
                          (_g106206106223_ _g106207106226_))))))
            (declare (not safe))
            (_g106205106269_ _stx106196_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_self106915_ _stx106916_)
        (let ((_compiled-body?106918_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-let-values%__%
           _self106915_
           _stx106916_
           _compiled-body?106918_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g111533_
        (let ((_g111532_ (let () (declare (not safe)) (##length _g111533_))))
          (cond ((let () (declare (not safe)) (##fx= _g111532_ 2))
                 (apply (lambda (_self106915_ _stx106916_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__0
                             _self106915_
                             _stx106916_)))
                        _g111533_))
                ((let () (declare (not safe)) (##fx= _g111532_ 3))
                 (apply (lambda (_self106920_
                                 _stx106921_
                                 _compiled-body?106922_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__%
                             _self106920_
                             _stx106921_
                             _compiled-body?106922_)))
                        _g111533_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g111533_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_vals106089_ _hd106090_)
        (let _lp106092_ ((_rest106094_ _hd106090_)
                         (_k106095_ '0)
                         (_r106096_ '()))
          (let* ((___stx110464110465_ _rest106094_)
                 (_g106101106118_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx110464110465_)))))
            (let ((___kont110466110467_
                   (lambda (_L106181_)
                     (let ((__tmp111534
                            (let () (declare (not safe)) (fx+ _k106095_ '1))))
                       (declare (not safe))
                       (_lp106092_ _L106181_ __tmp111534 _r106096_))))
                  (___kont110468110469_
                   (lambda (_L106154_ _L106155_)
                     (let ((__tmp111540
                            (let () (declare (not safe)) (fx+ _k106095_ '1)))
                           (__tmp111535
                            (let ((__tmp111536
                                   (let ((__tmp111539
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-binding-id
                                             _L106155_)))
                                         (__tmp111537
                                          (let ((__tmp111538
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-values-ref
                                                    _vals106089_
                                                    _k106095_
                                                    _L106154_))))
                                            (declare (not safe))
                                            (cons __tmp111538 '()))))
                                     (declare (not safe))
                                     (cons __tmp111539 __tmp111537))))
                              (declare (not safe))
                              (cons __tmp111536 _r106096_))))
                       (declare (not safe))
                       (_lp106092_ _L106154_ __tmp111540 __tmp111535))))
                  (___kont110470110471_
                   (lambda (_L106130_)
                     (let ((__tmp111541
                            (let ((__tmp111542
                                   (let ((__tmp111545
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-binding-id
                                             _L106130_)))
                                         (__tmp111543
                                          (let ((__tmp111544
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-values->list
                                                    _vals106089_
                                                    _k106095_))))
                                            (declare (not safe))
                                            (cons __tmp111544 '()))))
                                     (declare (not safe))
                                     (cons __tmp111545 __tmp111543))))
                              (declare (not safe))
                              (cons __tmp111542 '()))))
                       (declare (not safe))
                       (foldl1 cons __tmp111541 _r106096_))))
                  (___kont110472110473_ (lambda () (reverse _r106096_))))
              (let ((_g106099106141_
                     (lambda ()
                       (let ((_L106130_ ___stx110464110465_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _L106130_))
                             (___kont110470110471_ _L106130_)
                             (___kont110472110473_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx110464110465_))
                    (let ((_e106104106170_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx110464110465_))))
                      (let ((_tl106106106175_
                             (let ()
                               (declare (not safe))
                               (##cdr _e106104106170_)))
                            (_hd106105106173_
                             (let ()
                               (declare (not safe))
                               (##car _e106104106170_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _hd106105106173_))
                            (let ((_e106107106178_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd106105106173_))))
                              (if (let ()
                                    (declare (not safe))
                                    (equal? _e106107106178_ '#f))
                                  (___kont110466110467_ _tl106106106175_)
                                  (___kont110468110469_
                                   _tl106106106175_
                                   _hd106105106173_)))
                            (___kont110468110469_
                             _tl106106106175_
                             _hd106105106173_))))
                    (let () (declare (not safe)) (_g106099106141_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_self105768_ _stx105769_ _compiled-body?105770_)
        (letrec ((_generate-simple105772_
                  (lambda (_hd106074_ _body106075_)
                    (let ()
                      (declare (not safe))
                      (gxc#generate-runtime-simple-let
                       _self105768_
                       'letrec
                       _hd106074_
                       _body106075_
                       _compiled-body?105770_))))
                 (_generate-values105773_
                  (lambda (_hd105853_ _body105854_)
                    (let _lp105856_ ((_rest105858_ _hd105853_)
                                     (_bind105859_ '())
                                     (_check105860_ '())
                                     (_post105861_ '()))
                      (let* ((___stx110538110539_ _rest105858_)
                             (_g105864105875_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx110538110539_)))))
                        (let ((___kont110540110541_
                               (lambda (_L105902_ _L105903_)
                                 (let* ((___stx110494110495_ _L105903_)
                                        (_g105918105943_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx110494110495_)))))
                                   (let ((___kont110496110497_
                                          (lambda (_L106050_ _L106051_)
                                            (let ((_eid106065_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _L106051_)))
                                                  (_expr106066_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self105768_
                                                      _L106050_))))
                                              (let ((__tmp111546
                                                     (let ((__tmp111547
                                                            (let ((__tmp111548
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr106066_ '()))))
                      (declare (not safe))
                      (cons _eid106065_ __tmp111548))))
               (declare (not safe))
               (cons __tmp111547 _bind105859_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp105856_
                                                 _L105902_
                                                 __tmp111546
                                                 _check105860_
                                                 _post105861_)))))
                                         (___kont110498110499_
                                          (lambda (_L105964_ _L105965_)
                                            (let* ((_vals105978_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_check-values105980_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _vals105978_
                                                       _L105965_
                                                       _L105964_)))
                                                   (_refs105982_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _vals105978_
                                                       _L105965_)))
                                                   (_expr105984_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self105768_
                                                       _L105964_))))
                                              (let ((__tmp111551
                                                     (let ((__tmp111554
                                                            (let ((__tmp111555
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp111556
                                  (let ()
                                    (declare (not safe))
                                    (cons _expr105984_ '()))))
                             (declare (not safe))
                             (cons _vals105978_ __tmp111556))))
                      (declare (not safe))
                      (cons __tmp111555 _bind105859_)))
                   (__tmp111552
                    (map (lambda (_e105986105988_)
                           (let* ((_g105990105999_ _e105986105988_)
                                  (_E105992106003_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _g105990105999_))))
                                  (_K105993106008_
                                   (lambda (_eid106006_)
                                     (let ((__tmp111553
                                            (let ()
                                              (declare (not safe))
                                              (cons '#!void '()))))
                                       (declare (not safe))
                                       (cons _eid106006_ __tmp111553)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _g105990105999_))
                                 (let ((_hd105994106011_
                                        (let ()
                                          (declare (not safe))
                                          (##car _g105990105999_)))
                                       (_tl105995106013_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _g105990105999_))))
                                   (let ((_eid106016_ _hd105994106011_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##pair? _tl105995106013_))
                                         (let ((_tl105997106018_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _tl105995106013_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##null? _tl105997106018_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_K105993106008_ _eid106016_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_E105992106003_))))
                                         (let ()
                                           (declare (not safe))
                                           (_E105992106003_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_E105992106003_)))))
                         _refs105982_)))
               (declare (not safe))
               (foldl1 cons __tmp111554 __tmp111552)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp111550
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _check-values105980_
                                                             _check105860_)))
                                                    (__tmp111549
                                                     (let ()
                                                       (declare (not safe))
                                                       (foldl1 cons
                                                               _refs105982_
                                                               _post105861_))))
                                                (declare (not safe))
                                                (_lp105856_
                                                 _L105902_
                                                 __tmp111551
                                                 __tmp111550
                                                 __tmp111549))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx110494110495_))
                                         (let ((_e105922106026_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx110494110495_))))
                                           (let ((_tl105924106031_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e105922106026_)))
                                                 (_hd105923106029_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e105922106026_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _hd105923106029_))
                                                 (let ((_e105925106034_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _hd105923106029_))))
                                                   (let ((_tl105927106039_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e105925106034_)))
                                                         (_hd105926106037_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e105925106034_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl105927106039_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl105924106031_))
                     (let ((_e105928106042_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl105924106031_))))
                       (let ((_tl105930106047_
                              (let ()
                                (declare (not safe))
                                (##cdr _e105928106042_)))
                             (_hd105929106045_
                              (let ()
                                (declare (not safe))
                                (##car _e105928106042_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl105930106047_))
                             (___kont110496110497_
                              _hd105929106045_
                              _hd105926106037_)
                             (let () (declare (not safe)) (_g105918105943_)))))
                     (let () (declare (not safe)) (_g105918105943_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl105924106031_))
                     (let ((_e105936105956_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl105924106031_))))
                       (let ((_tl105938105961_
                              (let ()
                                (declare (not safe))
                                (##cdr _e105936105956_)))
                             (_hd105937105959_
                              (let ()
                                (declare (not safe))
                                (##car _e105936105956_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl105938105961_))
                             (___kont110498110499_
                              _hd105937105959_
                              _hd105923106029_)
                             (let () (declare (not safe)) (_g105918105943_)))))
                     (let () (declare (not safe)) (_g105918105943_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl105924106031_))
                                                     (let ((_e105936105956_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl105924106031_))))
                                                       (let ((_tl105938105961_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e105936105956_)))
                     (_hd105937105959_
                      (let () (declare (not safe)) (##car _e105936105956_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl105938105961_))
                     (___kont110498110499_ _hd105937105959_ _hd105923106029_)
                     (let () (declare (not safe)) (_g105918105943_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g105918105943_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g105918105943_)))))))
                              (___kont110542110543_
                               (lambda ()
                                 (let* ((_body105882_
                                         (if _compiled-body?105770_
                                             _body105854_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self105768_
                                                _body105854_))))
                                        (_body105884_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-post105775_
                                            _post105861_
                                            _body105882_)))
                                        (_body105886_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-check105774_
                                            _check105860_
                                            _body105884_))))
                                   (let ((__tmp111557
                                          (let ((__tmp111559
                                                 (reverse _bind105859_))
                                                (__tmp111558
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _body105886_ '()))))
                                            (declare (not safe))
                                            (cons __tmp111559 __tmp111558))))
                                     (declare (not safe))
                                     (cons 'letrec __tmp111557))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx110538110539_))
                              (let ((_e105868105894_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx110538110539_))))
                                (let ((_tl105870105899_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105868105894_)))
                                      (_hd105869105897_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105868105894_))))
                                  (___kont110540110541_
                                   _tl105870105899_
                                   _hd105869105897_)))
                              (___kont110542110543_)))))))
                 (_generate-values-check105774_
                  (lambda (_check105850_ _body105851_)
                    (let ((__tmp111560
                           (let ((__tmp111562
                                  (let ()
                                    (declare (not safe))
                                    (cons _body105851_ '())))
                                 (__tmp111561 (reverse _check105850_)))
                             (declare (not safe))
                             (foldr1 cons __tmp111562 __tmp111561))))
                      (declare (not safe))
                      (cons 'begin __tmp111560))))
                 (_generate-values-post105775_
                  (lambda (_post105843_ _body105844_)
                    (let ((__tmp111563
                           (let ((__tmp111565
                                  (let ()
                                    (declare (not safe))
                                    (cons _body105844_ '())))
                                 (__tmp111564
                                  (map (lambda (_g105845105847_)
                                         (let ()
                                           (declare (not safe))
                                           (cons 'set! _g105845105847_)))
                                       (reverse _post105843_))))
                             (declare (not safe))
                             (foldr1 cons __tmp111565 __tmp111564))))
                      (declare (not safe))
                      (cons 'begin __tmp111563)))))
          (let* ((_g105777105794_
                  (lambda (_g105778105791_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g105778105791_))))
                 (_g105776105840_
                  (lambda (_g105778105797_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g105778105797_))
                        (let ((_e105781105799_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g105778105797_))))
                          (let ((_hd105782105802_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105781105799_)))
                                (_tl105783105804_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105781105799_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl105783105804_))
                                (let ((_e105784105807_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl105783105804_))))
                                  (let ((_hd105785105810_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e105784105807_)))
                                        (_tl105786105812_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e105784105807_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl105786105812_))
                                        (let ((_e105787105815_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl105786105812_))))
                                          (let ((_hd105788105818_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e105787105815_)))
                                                (_tl105789105820_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e105787105815_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl105789105820_))
                                                ((lambda (_L105823_ _L105824_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L105824_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-simple105772_
                                                          _L105824_
                                                          _L105823_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values105773_
                                                          _L105824_
                                                          _L105823_))))
                                                 _hd105788105818_
                                                 _hd105785105810_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g105777105794_
                                                   _g105778105797_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g105777105794_ _g105778105797_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g105777105794_ _g105778105797_)))))
                        (let ()
                          (declare (not safe))
                          (_g105777105794_ _g105778105797_))))))
            (declare (not safe))
            (_g105776105840_ _stx105769_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_self106080_ _stx106081_)
        (let ((_compiled-body?106083_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-letrec-values%__%
           _self106080_
           _stx106081_
           _compiled-body?106083_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g111567_
        (let ((_g111566_ (let () (declare (not safe)) (##length _g111567_))))
          (cond ((let () (declare (not safe)) (##fx= _g111566_ 2))
                 (apply (lambda (_self106080_ _stx106081_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__0
                             _self106080_
                             _stx106081_)))
                        _g111567_))
                ((let () (declare (not safe)) (##fx= _g111566_ 3))
                 (apply (lambda (_self106085_
                                 _stx106086_
                                 _compiled-body?106087_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__%
                             _self106085_
                             _stx106086_
                             _compiled-body?106087_)))
                        _g111567_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g111567_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_self105349_ _stx105350_)
        (letrec ((_generate-values105352_
                  (lambda (_hd105595_ _body105596_)
                    (let _lp105598_ ((_rest105600_ _hd105595_)
                                     (_bind105601_ '()))
                      (let* ((_rest105602105610_ _rest105600_)
                             (_else105604105621_
                              (lambda ()
                                (let ((_bind105618_ (reverse _bind105601_))
                                      (_body105619_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self105349_
                                          _body105596_))))
                                  (let ((__tmp111568
                                         (let ((__tmp111569
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _body105619_ '()))))
                                           (declare (not safe))
                                           (cons _bind105618_ __tmp111569))))
                                    (declare (not safe))
                                    (cons 'letrec* __tmp111568)))))
                             (_K105606105755_
                              (lambda (_rest105624_ _hd-bind105625_)
                                (let* ((___stx110552110553_ _hd-bind105625_)
                                       (_g105628105653_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx110552110553_)))))
                                  (let ((___kont110554110555_
                                         (lambda (_L105734_ _L105735_)
                                           (let ((_eid105749_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _L105735_)))
                                                 (_expr105750_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _self105349_
                                                     _L105734_))))
                                             (let ((__tmp111570
                                                    (let ((__tmp111571
                                                           (let ((__tmp111572
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _expr105750_ '()))))
                     (declare (not safe))
                     (cons _eid105749_ __tmp111572))))
              (declare (not safe))
              (cons __tmp111571 _bind105601_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp105598_
                                                _rest105624_
                                                __tmp111570)))))
                                        (___kont110556110557_
                                         (lambda (_L105674_ _L105675_)
                                           (let* ((_vals105694_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_tmp105696_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_check-values105698_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-check-values
                                                      _tmp105696_
                                                      _L105675_
                                                      _L105674_)))
                                                  (_refs105700_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-let-values-bind
                                                      _vals105694_
                                                      _L105675_)))
                                                  (_expr105702_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self105349_
                                                      _L105674_))))
                                             (let ((__tmp111573
                                                    (let ((__tmp111574
                                                           (let ((__tmp111575
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp111576
                                 (let ((__tmp111577
                                        (let ((__tmp111578
                                               (let ((__tmp111581
                                                      (let ((__tmp111582
                                                             (let ((__tmp111583
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _expr105702_ '()))))
                       (declare (not safe))
                       (cons _tmp105696_ __tmp111583))))
                (declare (not safe))
                (cons __tmp111582 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp111579
                                                      (let ((__tmp111580
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _tmp105696_ '()))))
                (declare (not safe))
                (cons _check-values105698_ __tmp111580))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp111581
                                                       __tmp111579))))
                                          (declare (not safe))
                                          (cons 'let __tmp111578))))
                                   (declare (not safe))
                                   (cons __tmp111577 '()))))
                            (declare (not safe))
                            (cons _vals105694_ __tmp111576))))
                     (declare (not safe))
                     (cons __tmp111575 _bind105601_))))
              (declare (not safe))
              (foldl1 cons __tmp111574 _refs105700_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp105598_
                                                _rest105624_
                                                __tmp111573))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx110552110553_))
                                        (let ((_e105632105710_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx110552110553_))))
                                          (let ((_tl105634105715_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e105632105710_)))
                                                (_hd105633105713_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e105632105710_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd105633105713_))
                                                (let ((_e105635105718_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd105633105713_))))
                                                  (let ((_tl105637105723_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e105635105718_)))
                                                        (_hd105636105721_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e105635105718_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl105637105723_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl105634105715_))
                                                            (let ((_e105638105726_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl105634105715_))))
                      (let ((_tl105640105731_
                             (let ()
                               (declare (not safe))
                               (##cdr _e105638105726_)))
                            (_hd105639105729_
                             (let ()
                               (declare (not safe))
                               (##car _e105638105726_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl105640105731_))
                            (___kont110554110555_
                             _hd105639105729_
                             _hd105636105721_)
                            (let () (declare (not safe)) (_g105628105653_)))))
                    (let () (declare (not safe)) (_g105628105653_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl105634105715_))
                    (let ((_e105646105666_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl105634105715_))))
                      (let ((_tl105648105671_
                             (let ()
                               (declare (not safe))
                               (##cdr _e105646105666_)))
                            (_hd105647105669_
                             (let ()
                               (declare (not safe))
                               (##car _e105646105666_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl105648105671_))
                            (___kont110556110557_
                             _hd105647105669_
                             _hd105633105713_)
                            (let () (declare (not safe)) (_g105628105653_)))))
                    (let () (declare (not safe)) (_g105628105653_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl105634105715_))
                                                    (let ((_e105646105666_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl105634105715_))))
                                                      (let ((_tl105648105671_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e105646105666_)))
                    (_hd105647105669_
                     (let () (declare (not safe)) (##car _e105646105666_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl105648105671_))
                    (___kont110556110557_ _hd105647105669_ _hd105633105713_)
                    (let () (declare (not safe)) (_g105628105653_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g105628105653_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g105628105653_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest105602105610_))
                            (let ((_hd105607105758_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest105602105610_)))
                                  (_tl105608105760_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest105602105610_))))
                              (let* ((_hd-bind105763_ _hd105607105758_)
                                     (_rest105765_ _tl105608105760_))
                                (declare (not safe))
                                (_K105606105755_
                                 _rest105765_
                                 _hd-bind105763_)))
                            (let ()
                              (declare (not safe))
                              (_else105604105621_)))))))
                 (_generate-letrec?105353_
                  (lambda (_hd105485_)
                    (let _lp105487_ ((_rest105489_ _hd105485_))
                      (let* ((_rest105490105498_ _rest105489_)
                             (_else105492105506_ (lambda () '#t))
                             (_K105494105583_
                              (lambda (_rest105509_ _hd-bind105510_)
                                (let* ((_g105512105529_
                                        (lambda (_g105513105526_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g105513105526_))))
                                       (_g105511105580_
                                        (lambda (_g105513105532_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _g105513105532_))
                                              (let ((_e105516105534_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _g105513105532_))))
                                                (let ((_hd105517105537_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e105516105534_)))
                                                      (_tl105518105539_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e105516105534_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd105517105537_))
                                                      (let ((_e105519105542_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd105517105537_))))
                (let ((_hd105520105545_
                       (let () (declare (not safe)) (##car _e105519105542_)))
                      (_tl105521105547_
                       (let () (declare (not safe)) (##cdr _e105519105542_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl105521105547_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl105518105539_))
                          (let ((_e105522105550_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl105518105539_))))
                            (let ((_hd105523105553_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e105522105550_)))
                                  (_tl105524105555_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e105522105550_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl105524105555_))
                                  ((lambda (_L105558_ _L105559_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_is-lambda-expr?105354_ _L105558_))
                                         (let ()
                                           (declare (not safe))
                                           (_lp105487_ _rest105509_))
                                         '#f))
                                   _hd105523105553_
                                   _hd105520105545_)
                                  (let ()
                                    (declare (not safe))
                                    (_g105512105529_ _g105513105532_)))))
                          (let ()
                            (declare (not safe))
                            (_g105512105529_ _g105513105532_)))
                      (let ()
                        (declare (not safe))
                        (_g105512105529_ _g105513105532_)))))
              (let ()
                (declare (not safe))
                (_g105512105529_ _g105513105532_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g105512105529_
                                                 _g105513105532_))))))
                                  (declare (not safe))
                                  (_g105511105580_ _hd-bind105510_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest105490105498_))
                            (let ((_hd105495105586_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest105490105498_)))
                                  (_tl105496105588_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest105490105498_))))
                              (let* ((_hd-bind105591_ _hd105495105586_)
                                     (_rest105593_ _tl105496105588_))
                                (declare (not safe))
                                (_K105494105583_
                                 _rest105593_
                                 _hd-bind105591_)))
                            (let ()
                              (declare (not safe))
                              (_else105492105506_)))))))
                 (_is-lambda-expr?105354_
                  (lambda (_expr105422_)
                    (let* ((___stx110596110597_ _expr105422_)
                           (_g105425105439_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx110596110597_)))))
                      (let ((___kont110598110599_
                             (lambda (_L105467_ _L105468_) '#t))
                            (___kont110600110601_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? ___stx110596110597_))
                            (let ((_e105429105451_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e ___stx110596110597_))))
                              (let ((_tl105431105456_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e105429105451_)))
                                    (_hd105430105454_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e105429105451_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd105430105454_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd105430105454_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl105431105456_))
                                            (let ((_e105432105459_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl105431105456_))))
                                              (let ((_tl105434105464_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e105432105459_)))
                                                    (_hd105433105462_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e105432105459_))))
                                                (___kont110598110599_
                                                 _tl105434105464_
                                                 _hd105433105462_)))
                                            (___kont110600110601_))
                                        (___kont110600110601_))
                                    (___kont110600110601_))))
                            (___kont110600110601_)))))))
          (let* ((_g105356105373_
                  (lambda (_g105357105370_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g105357105370_))))
                 (_g105355105419_
                  (lambda (_g105357105376_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g105357105376_))
                        (let ((_e105360105378_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g105357105376_))))
                          (let ((_hd105361105381_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105360105378_)))
                                (_tl105362105383_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105360105378_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl105362105383_))
                                (let ((_e105363105386_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl105362105383_))))
                                  (let ((_hd105364105389_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e105363105386_)))
                                        (_tl105365105391_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e105363105386_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl105365105391_))
                                        (let ((_e105366105394_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl105365105391_))))
                                          (let ((_hd105367105397_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e105366105394_)))
                                                (_tl105368105399_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e105366105394_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl105368105399_))
                                                ((lambda (_L105402_ _L105403_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L105403_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-letrec?105353_
                                                              _L105403_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _self105349_
                                                              'letrec
                                                              _L105403_
                                                              _L105402_
                                                              '#f))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _self105349_
                                                              'letrec*
                                                              _L105403_
                                                              _L105402_
                                                              '#f)))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values105352_
                                                          _L105403_
                                                          _L105402_))))
                                                 _hd105367105397_
                                                 _hd105364105389_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g105356105373_
                                                   _g105357105376_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g105356105373_ _g105357105376_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g105356105373_ _g105357105376_)))))
                        (let ()
                          (declare (not safe))
                          (_g105356105373_ _g105357105376_))))))
            (declare (not safe))
            (_g105355105419_ _stx105350_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_hd105286_)
        (let _lp105288_ ((_rest105290_ _hd105286_))
          (let* ((_rest105291105307_ _rest105290_)
                 (_else105294105315_ (lambda () '#f)))
            (let ((_K105297105328_
                   (lambda (_rest105326_)
                     (let () (declare (not safe)) (_lp105288_ _rest105326_))))
                  (_K105296105320_ (lambda () '#t)))
              (let ((_try-match105293105323_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest105291105307_))
                           (let () (declare (not safe)) (_K105296105320_))
                           (let ()
                             (declare (not safe))
                             (_else105294105315_))))))
                (if (let () (declare (not safe)) (##pair? _rest105291105307_))
                    (let ((_tl105299105333_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest105291105307_)))
                          (_hd105298105331_
                           (let ()
                             (declare (not safe))
                             (##car _rest105291105307_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _hd105298105331_))
                          (let ((_tl105301105338_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _hd105298105331_)))
                                (_hd105300105336_
                                 (let ()
                                   (declare (not safe))
                                   (##car _hd105298105331_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd105300105336_))
                                (let ((_tl105305105341_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd105300105336_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl105305105341_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl105301105338_))
                                          (let ((_tl105303105344_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl105301105338_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _tl105303105344_))
                                                (let ((_rest105347_
                                                       _tl105299105333_))
                                                  (declare (not safe))
                                                  (_lp105288_ _rest105347_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_else105294105315_))))
                                          (let ()
                                            (declare (not safe))
                                            (_else105294105315_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else105294105315_))))
                                (let ()
                                  (declare (not safe))
                                  (_else105294105315_))))
                          (let () (declare (not safe)) (_else105294105315_))))
                    (let ()
                      (declare (not safe))
                      (_try-match105293105323_)))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_self105197_
               _form105198_
               _hd105199_
               _body105200_
               _compiled-body?105201_)
        (letrec ((_generate1105203_
                  (lambda (_bind105242_)
                    (let* ((_bind105243105254_ _bind105242_)
                           (_E105245105258_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _bind105243105254_))))
                           (_K105246105264_
                            (lambda (_expr105261_ _id105262_)
                              (let ((__tmp111586
                                     (let ()
                                       (declare (not safe))
                                       (gxc#generate-runtime-binding-id*
                                        _id105262_)))
                                    (__tmp111584
                                     (let ((__tmp111585
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self105197_
                                               _expr105261_))))
                                       (declare (not safe))
                                       (cons __tmp111585 '()))))
                                (declare (not safe))
                                (cons __tmp111586 __tmp111584)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _bind105243105254_))
                          (let ((_hd105247105267_
                                 (let ()
                                   (declare (not safe))
                                   (##car _bind105243105254_)))
                                (_tl105248105269_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _bind105243105254_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd105247105267_))
                                (let ((_hd105251105272_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd105247105267_)))
                                      (_tl105252105274_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd105247105267_))))
                                  (let ((_id105277_ _hd105251105272_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl105252105274_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl105248105269_))
                                            (let ((_hd105249105279_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl105248105269_)))
                                                  (_tl105250105281_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl105248105269_))))
                                              (let ((_expr105284_
                                                     _hd105249105279_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _tl105250105281_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K105246105264_
                                                       _expr105284_
                                                       _id105277_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E105245105258_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_E105245105258_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E105245105258_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E105245105258_))))
                          (let () (declare (not safe)) (_E105245105258_)))))))
          (let* ((_bind105205_ (map _generate1105203_ _hd105199_))
                 (_body105207_
                  (if _compiled-body?105201_
                      _body105200_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self105197_ _body105200_))))
                 (_body105239_
                  (let* ((_body105208105216_ _body105207_)
                         (_else105210105224_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (cons _body105207_ '()))))
                         (_K105212105229_
                          (lambda (_exprs105227_) _exprs105227_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _body105208105216_))
                        (let ((_hd105213105232_
                               (let ()
                                 (declare (not safe))
                                 (##car _body105208105216_)))
                              (_tl105214105234_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _body105208105216_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _hd105213105232_ 'begin))
                              (let ((_exprs105237_ _tl105214105234_))
                                (declare (not safe))
                                (_K105212105229_ _exprs105237_))
                              (let ()
                                (declare (not safe))
                                (_else105210105224_))))
                        (let () (declare (not safe)) (_else105210105224_))))))
            (let ((__tmp111587
                   (let ()
                     (declare (not safe))
                     (cons _bind105205_ _body105239_))))
              (declare (not safe))
              (cons _form105198_ __tmp111587))))))
    (define gxc#generate-runtime-quote%
      (lambda (_self105104_ _stx105105_)
        (letrec ((_generate1105107_
                  (lambda (_datum105159_)
                    (if (or (let () (declare (not safe)) (null? _datum105159_))
                            (interned-symbol? _datum105159_)
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _datum105159_))
                            (let ()
                              (declare (not safe))
                              (eof-object? _datum105159_)))
                        _datum105159_
                        (if (uninterned-symbol? _datum105159_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _datum105159_
                               '#t))
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _datum105159_))
                                (let ((__tmp111590
                                       (let ((__tmp111591 (car _datum105159_)))
                                         (declare (not safe))
                                         (_generate1105107_ __tmp111591)))
                                      (__tmp111588
                                       (let ((__tmp111589 (cdr _datum105159_)))
                                         (declare (not safe))
                                         (_generate1105107_ __tmp111589))))
                                  (declare (not safe))
                                  (cons __tmp111590 __tmp111588))
                                (if (let ()
                                      (declare (not safe))
                                      (box? _datum105159_))
                                    (let ((__tmp111592
                                           (let ((__tmp111593
                                                  (unbox _datum105159_)))
                                             (declare (not safe))
                                             (_generate1105107_ __tmp111593))))
                                      (declare (not safe))
                                      (box __tmp111592))
                                    (if (let ()
                                          (declare (not safe))
                                          (vector? _datum105159_))
                                        (vector-map
                                         _generate1105107_
                                         _datum105159_)
                                        (if (or (s8vector? _datum105159_)
                                                (let ()
                                                  (declare (not safe))
                                                  (u8vector? _datum105159_))
                                                (s16vector? _datum105159_)
                                                (u16vector? _datum105159_)
                                                (s32vector? _datum105159_)
                                                (u32vector? _datum105159_)
                                                (s64vector? _datum105159_)
                                                (u64vector? _datum105159_)
                                                (f32vector? _datum105159_)
                                                (f64vector? _datum105159_))
                                            _datum105159_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _stx105105_)))))))))))
          (let* ((_g105109105122_
                  (lambda (_g105110105119_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g105110105119_))))
                 (_g105108105156_
                  (lambda (_g105110105125_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g105110105125_))
                        (let ((_e105112105127_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g105110105125_))))
                          (let ((_hd105113105130_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105112105127_)))
                                (_tl105114105132_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105112105127_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl105114105132_))
                                (let ((_e105115105135_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl105114105132_))))
                                  (let ((_hd105116105138_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e105115105135_)))
                                        (_tl105117105140_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e105115105135_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl105117105140_))
                                        ((lambda (_L105143_)
                                           (let ((__tmp111594
                                                  (let ((__tmp111595
                                                         (let ((__tmp111596
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L105143_))))
                   (declare (not safe))
                   (_generate1105107_ __tmp111596))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp111595 '()))))
                                             (declare (not safe))
                                             (cons 'quote __tmp111594)))
                                         _hd105116105138_)
                                        (let ()
                                          (declare (not safe))
                                          (_g105109105122_ _g105110105125_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g105109105122_ _g105110105125_)))))
                        (let ()
                          (declare (not safe))
                          (_g105109105122_ _g105110105125_))))))
            (declare (not safe))
            (_g105108105156_ _stx105105_)))))
    (define gxc#generate-runtime-call%
      (lambda (_self104617_ _stx104618_)
        (letrec ((_compile-call104620_
                  (lambda (_rator104844_ _rands104845_)
                    (let ((_rator104851_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self104617_ _rator104844_)))
                          (_rands104852_
                           (map (lambda (_g104846104848_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self104617_
                                     _g104846104848_)))
                                _rands104845_)))
                      (let* ((___stx110643110644_ _rator104851_)
                             (_g104855104907_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx110643110644_)))))
                        (let ((___kont110645110646_
                               (lambda (_L105031_
                                        _L105032_
                                        _L105033_
                                        _L105034_)
                                 (if (fx= (length _rands104852_)
                                          (length (let ((__tmp111597
                                                         (lambda (_g105070105073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g105071105075_)
                   (let ()
                     (declare (not safe))
                     (cons _g105070105073_ _g105071105075_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp111597
                                                            '()
                                                            _L105033_))))
                                     (let* ((_id105078_ _L105034_)
                                            (_args105087_
                                             (let ((__tmp111598
                                                    (lambda (_g105079105082_
                                                             _g105080105084_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g105079105082_
                                                              _g105080105084_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp111598
                                                       '()
                                                       _L105033_)))
                                            (_body105096_
                                             (let ((__tmp111599
                                                    (lambda (_g105088105091_
                                                             _g105089105093_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g105088105091_
                                                              _g105089105093_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp111599
                                                       '()
                                                       _L105032_)))
                                            (_init105098_
                                             (map list
                                                  _args105087_
                                                  _rands104852_)))
                                       (let ((__tmp111600
                                              (let ((__tmp111601
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _init105098_
                                                             _body105096_))))
                                                (declare (not safe))
                                                (cons _id105078_
                                                      __tmp111601))))
                                         (declare (not safe))
                                         (cons 'let __tmp111600)))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _stx104618_)))))
                              (___kont110651110652_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (cons _rator104851_ _rands104852_)))))
                          (let ((___match110710110711_
                                 (lambda (_e104861104919_
                                          _hd104862104922_
                                          _tl104863104924_
                                          _e104864104927_
                                          _hd104865104930_
                                          _tl104866104932_
                                          _e104867104935_
                                          _hd104868104938_
                                          _tl104869104940_
                                          _e104870104943_
                                          _hd104871104946_
                                          _tl104872104948_
                                          _e104873104951_
                                          _hd104874104954_
                                          _tl104875104956_
                                          _e104876104959_
                                          _hd104877104962_
                                          _tl104878104964_
                                          _e104879104967_
                                          _hd104880104970_
                                          _tl104881104972_
                                          ___splice110647110648_
                                          _target104882104975_
                                          _tl104884104977_)
                                   (letrec ((_loop104885104980_
                                             (lambda (_hd104883104983_
                                                      _arg104889104985_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd104883104983_))
                                                   (let ((_e104886104988_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd104883104983_))))
                                                     (let ((_lp-tl104888104993_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e104886104988_)))
                                                           (_lp-hd104887104991_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e104886104988_))))
                                                       (let ((__tmp111602
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _lp-hd104887104991_ _arg104889104985_))))
                 (declare (not safe))
                 (_loop104885104980_ _lp-tl104888104993_ __tmp111602))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_arg104890104996_
                                                          (reverse _arg104889104985_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _tl104881104972_))
                                                         (let ((___splice110649110650_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _tl104881104972_ '0))))
                   (let ((_tl104893105001_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice110649110650_ '1)))
                         (_target104891104999_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice110649110650_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl104893105001_))
                         (letrec ((_loop104894105004_
                                   (lambda (_hd104892105007_
                                            _body104898105009_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd104892105007_))
                                         (let ((_e104895105012_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd104892105007_))))
                                           (let ((_lp-tl104897105017_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e104895105012_)))
                                                 (_lp-hd104896105015_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e104895105012_))))
                                             (let ((__tmp111603
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd104896105015_
                                                            _body104898105009_))))
                                               (declare (not safe))
                                               (_loop104894105004_
                                                _lp-tl104897105017_
                                                __tmp111603))))
                                         (let ((_body104899105020_
                                                (reverse _body104898105009_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl104875104956_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl104869104940_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl104866104932_))
                                                       (let ((_e104900105023_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl104866104932_))))
                 (let ((_tl104902105028_
                        (let () (declare (not safe)) (##cdr _e104900105023_)))
                       (_hd104901105026_
                        (let () (declare (not safe)) (##car _e104900105023_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl104902105028_))
                       (let ((_L105031_ _hd104901105026_)
                             (_L105032_ _body104899105020_)
                             (_L105033_ _arg104890104996_)
                             (_L105034_ _hd104871104946_))
                         (if (let ()
                               (declare (not safe))
                               (eq? _L105034_ _L105031_))
                             (___kont110645110646_
                              _L105031_
                              _L105032_
                              _L105033_
                              _L105034_)
                             (___kont110651110652_)))
                       (___kont110651110652_))))
               (___kont110651110652_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont110651110652_))
                                               (___kont110651110652_)))))))
                           (let ()
                             (declare (not safe))
                             (_loop104894105004_ _target104891104999_ '())))
                         (___kont110651110652_))))
                 (___kont110651110652_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ()
                                       (declare (not safe))
                                       (_loop104885104980_
                                        _target104882104975_
                                        '()))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? ___stx110643110644_))
                                (let ((_e104861104919_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e ___stx110643110644_))))
                                  (let ((_tl104863104924_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e104861104919_)))
                                        (_hd104862104922_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e104861104919_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd104862104922_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _hd104862104922_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl104863104924_))
                                                (let ((_e104864104927_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl104863104924_))))
                                                  (let ((_tl104866104932_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e104864104927_)))
                                                        (_hd104865104930_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e104864104927_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd104865104930_))
                                                        (let ((_e104867104935_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd104865104930_))))
                  (let ((_tl104869104940_
                         (let () (declare (not safe)) (##cdr _e104867104935_)))
                        (_hd104868104938_
                         (let ()
                           (declare (not safe))
                           (##car _e104867104935_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd104868104938_))
                        (let ((_e104870104943_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd104868104938_))))
                          (let ((_tl104872104948_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104870104943_)))
                                (_hd104871104946_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104870104943_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl104872104948_))
                                (let ((_e104873104951_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl104872104948_))))
                                  (let ((_tl104875104956_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e104873104951_)))
                                        (_hd104874104954_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e104873104951_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd104874104954_))
                                        (let ((_e104876104959_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd104874104954_))))
                                          (let ((_tl104878104964_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e104876104959_)))
                                                (_hd104877104962_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e104876104959_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd104877104962_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _hd104877104962_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl104878104964_))
                                                        (let ((_e104879104967_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl104878104964_))))
                  (let ((_tl104881104972_
                         (let () (declare (not safe)) (##cdr _e104879104967_)))
                        (_hd104880104970_
                         (let ()
                           (declare (not safe))
                           (##car _e104879104967_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _hd104880104970_))
                        (let ((___splice110647110648_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _hd104880104970_
                                  '0))))
                          (let ((_tl104884104977_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice110647110648_ '1)))
                                (_target104882104975_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice110647110648_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl104884104977_))
                                (___match110710110711_
                                 _e104861104919_
                                 _hd104862104922_
                                 _tl104863104924_
                                 _e104864104927_
                                 _hd104865104930_
                                 _tl104866104932_
                                 _e104867104935_
                                 _hd104868104938_
                                 _tl104869104940_
                                 _e104870104943_
                                 _hd104871104946_
                                 _tl104872104948_
                                 _e104873104951_
                                 _hd104874104954_
                                 _tl104875104956_
                                 _e104876104959_
                                 _hd104877104962_
                                 _tl104878104964_
                                 _e104879104967_
                                 _hd104880104970_
                                 _tl104881104972_
                                 ___splice110647110648_
                                 _target104882104975_
                                 _tl104884104977_)
                                (___kont110651110652_))))
                        (___kont110651110652_))))
                (___kont110651110652_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont110651110652_))
                                                (___kont110651110652_))))
                                        (___kont110651110652_))))
                                (___kont110651110652_))))
                        (___kont110651110652_))))
                (___kont110651110652_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont110651110652_))
                                            (___kont110651110652_))
                                        (___kont110651110652_))))
                                (___kont110651110652_)))))))))
          (let* ((_g104622104636_
                  (lambda (_g104623104633_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104623104633_))))
                 (_g104621104841_
                  (lambda (_g104623104639_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104623104639_))
                        (let ((_e104626104641_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104623104639_))))
                          (let ((_hd104627104644_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104626104641_)))
                                (_tl104628104646_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104626104641_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl104628104646_))
                                (let ((_e104629104649_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl104628104646_))))
                                  (let ((_hd104630104652_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e104629104649_)))
                                        (_tl104631104654_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e104629104649_))))
                                    ((lambda (_L104657_ _L104658_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gxc#current-compile-decls-unsafe?))
                                           (let ()
                                             (declare (not safe))
                                             (_compile-call104620_
                                              _L104658_
                                              _L104657_))
                                           (let* ((___stx110759110760_
                                                   _L104658_)
                                                  (_g104673104685_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx110759110760_)))))
                                             (let ((___kont110761110762_
                                                    (lambda ()
                                                      (let ((_f104715_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _self104617_ _L104658_))))
                (if (let ((__tmp111604 (symbol->string _f104715_)))
                      (declare (not safe))
                      (string-prefix? '"##" __tmp111604))
                    (let _lp104717_ ((_rest104720_ (reverse _L104657_))
                                     (_bind104722_ '())
                                     (_args104723_ '()))
                      (let* ((_rest104724104732_ _rest104720_)
                             (_else104726104740_
                              (lambda ()
                                (let ((__tmp111605
                                       (let ((__tmp111606
                                              (let ((__tmp111607
                                                     (let ((__tmp111608
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _f104715_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _args104723_))))
               (declare (not safe))
               (cons __tmp111608 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(declare (not safe))
                                                      __tmp111607))))
                                         (declare (not safe))
                                         (cons _bind104722_ __tmp111606))))
                                  (declare (not safe))
                                  (cons 'let __tmp111605))))
                             (_K104728104826_
                              (lambda (_rest104743_ _e104744_)
                                (let* ((___stx110713110714_ _e104744_)
                                       (_g104749104767_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx110713110714_)))))
                                  (let ((___kont110715110716_
                                         (lambda ()
                                           (let ((__tmp111609
                                                  (let ((__tmp111610
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _e104744_))))
                                                    (declare (not safe))
                                                    (cons __tmp111610
                                                          _args104723_))))
                                             (declare (not safe))
                                             (_lp104717_
                                              _rest104743_
                                              _bind104722_
                                              __tmp111609))))
                                        (___kont110717110718_
                                         (lambda ()
                                           (let ((__tmp111611
                                                  (let ((__tmp111612
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _e104744_))))
                                                    (declare (not safe))
                                                    (cons __tmp111612
                                                          _args104723_))))
                                             (declare (not safe))
                                             (_lp104717_
                                              _rest104743_
                                              _bind104722_
                                              __tmp111611))))
                                        (___kont110719110720_
                                         (lambda ()
                                           (let ((_tmp104774_
                                                  (let ((__tmp111613
                                                         (gensym '__tmp)))
                                                    (declare (not safe))
                                                    (make-symbol__0
                                                     __tmp111613))))
                                             (let ((__tmp111615
                                                    (let ((__tmp111616
                                                           (let ((__tmp111617
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp111618
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _e104744_))))
                            (declare (not safe))
                            (cons __tmp111618 '()))))
                     (declare (not safe))
                     (cons _tmp104774_ __tmp111617))))
              (declare (not safe))
              (cons __tmp111616 _bind104722_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp111614
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _tmp104774_
                                                            _args104723_))))
                                               (declare (not safe))
                                               (_lp104717_
                                                _rest104743_
                                                __tmp111615
                                                __tmp111614))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx110713110714_))
                                        (let ((_e104751104805_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx110713110714_))))
                                          (let ((_tl104753104810_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e104751104805_)))
                                                (_hd104752104808_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e104751104805_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd104752104808_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd104752104808_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl104753104810_))
                                                        (let ((_e104754104813_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl104753104810_))))
                  (let ((_tl104756104818_
                         (let () (declare (not safe)) (##cdr _e104754104813_)))
                        (_hd104755104816_
                         (let ()
                           (declare (not safe))
                           (##car _e104754104813_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl104756104818_))
                        (___kont110715110716_)
                        (___kont110719110720_))))
                (___kont110719110720_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#quote
                                                           _hd104752104808_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl104753104810_))
                                                            (let ((_e104760104790_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl104753104810_))))
                      (let ((_tl104762104795_
                             (let ()
                               (declare (not safe))
                               (##cdr _e104760104790_)))
                            (_hd104761104793_
                             (let ()
                               (declare (not safe))
                               (##car _e104760104790_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl104762104795_))
                            (___kont110717110718_)
                            (___kont110719110720_))))
                    (___kont110719110720_))
                (___kont110719110720_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont110719110720_))))
                                        (___kont110719110720_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest104724104732_))
                            (let ((_hd104729104829_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest104724104732_)))
                                  (_tl104730104831_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest104724104732_))))
                              (let* ((_e104834_ _hd104729104829_)
                                     (_rest104836_ _tl104730104831_))
                                (declare (not safe))
                                (_K104728104826_ _rest104836_ _e104834_)))
                            (let ()
                              (declare (not safe))
                              (_else104726104740_)))))
                    (let ()
                      (declare (not safe))
                      (_compile-call104620_ _L104658_ _L104657_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont110763110764_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (_compile-call104620_
                                                         _L104658_
                                                         _L104657_)))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      ___stx110759110760_))
                                                   (let ((_e104675104697_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             ___stx110759110760_))))
                                                     (let ((_tl104677104702_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e104675104697_)))
                                                           (_hd104676104700_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e104675104697_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#identifier?
                                                              _hd104676104700_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-eq? '%#ref _hd104676104700_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl104677104702_))
                           (let ((_e104678104705_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl104677104702_))))
                             (let ((_tl104680104710_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e104678104705_)))
                                   (_hd104679104708_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e104678104705_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl104680104710_))
                                   (___kont110761110762_)
                                   (___kont110763110764_))))
                           (___kont110763110764_))
                       (___kont110763110764_))
                   (___kont110763110764_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont110763110764_))))))
                                     _tl104631104654_
                                     _hd104630104652_)))
                                (let ()
                                  (declare (not safe))
                                  (_g104622104636_ _g104623104639_)))))
                        (let ()
                          (declare (not safe))
                          (_g104622104636_ _g104623104639_))))))
            (declare (not safe))
            (_g104621104841_ _stx104618_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_self104404_ _stx104405_)
        (let* ((___stx110831110832_ _stx104405_)
               (_g104408104428_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx110831110832_)))))
          (let ((___kont110833110834_
                 (lambda (_L104472_ _L104473_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-decls-unsafe?))
                       (let ()
                         (declare (not safe))
                         (gxc#generate-runtime-call% _self104404_ _stx104405_))
                       (let ((_f104491_
                              (let ((__tmp111619
                                     (let ((__tmp111621
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               '%#ref)))
                                           (__tmp111620
                                            (let ()
                                              (declare (not safe))
                                              (cons _L104473_ '()))))
                                       (declare (not safe))
                                       (cons __tmp111621 __tmp111620))))
                                (declare (not safe))
                                (gxc#compile-e__1 _self104404_ __tmp111619))))
                         (let _lp104493_ ((_rest104496_ (reverse _L104472_))
                                          (_bind104498_ '())
                                          (_args104499_ '()))
                           (let* ((_rest104500104508_ _rest104496_)
                                  (_else104502104516_
                                   (lambda ()
                                     (let ((__tmp111622
                                            (let ((__tmp111623
                                                   (let ((__tmp111624
                                                          (let ((__tmp111625
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _f104491_ _args104499_))))
                    (declare (not safe))
                    (cons __tmp111625 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '(declare
                                                              (not safe))
                                                           __tmp111624))))
                                              (declare (not safe))
                                              (cons _bind104498_
                                                    __tmp111623))))
                                       (declare (not safe))
                                       (cons 'let __tmp111622))))
                                  (_K104504104602_
                                   (lambda (_rest104519_ _e104520_)
                                     (let* ((___stx110785110786_ _e104520_)
                                            (_g104525104543_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  ___stx110785110786_)))))
                                       (let ((___kont110787110788_
                                              (lambda ()
                                                (let ((__tmp111626
                                                       (let ((__tmp111627
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _e104520_))))
                 (declare (not safe))
                 (cons __tmp111627 _args104499_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp104493_
                                                   _rest104519_
                                                   _bind104498_
                                                   __tmp111626))))
                                             (___kont110789110790_
                                              (lambda ()
                                                (let ((__tmp111628
                                                       (let ((__tmp111629
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _e104520_))))
                 (declare (not safe))
                 (cons __tmp111629 _args104499_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp104493_
                                                   _rest104519_
                                                   _bind104498_
                                                   __tmp111628))))
                                             (___kont110791110792_
                                              (lambda ()
                                                (let ((_tmp104550_
                                                       (let ((__tmp111630
                                                              (gensym '__tmp)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp111630))))
                                                  (let ((__tmp111632
                                                         (let ((__tmp111633
                                                                (let ((__tmp111634
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp111635
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__0 _e104520_))))
                                 (declare (not safe))
                                 (cons __tmp111635 '()))))
                          (declare (not safe))
                          (cons _tmp104550_ __tmp111634))))
                   (declare (not safe))
                   (cons __tmp111633 _bind104498_)))
                (__tmp111631
                 (let ()
                   (declare (not safe))
                   (cons _tmp104550_ _args104499_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_lp104493_
                                                     _rest104519_
                                                     __tmp111632
                                                     __tmp111631))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                ___stx110785110786_))
                                             (let ((_e104527104581_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       ___stx110785110786_))))
                                               (let ((_tl104529104586_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e104527104581_)))
                                                     (_hd104528104584_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e104527104581_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _hd104528104584_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _hd104528104584_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl104529104586_))
                     (let ((_e104530104589_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl104529104586_))))
                       (let ((_tl104532104594_
                              (let ()
                                (declare (not safe))
                                (##cdr _e104530104589_)))
                             (_hd104531104592_
                              (let ()
                                (declare (not safe))
                                (##car _e104530104589_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl104532104594_))
                             (___kont110787110788_)
                             (___kont110791110792_))))
                     (___kont110791110792_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _hd104528104584_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _tl104529104586_))
                         (let ((_e104536104566_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _tl104529104586_))))
                           (let ((_tl104538104571_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e104536104566_)))
                                 (_hd104537104569_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e104536104566_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _tl104538104571_))
                                 (___kont110789110790_)
                                 (___kont110791110792_))))
                         (___kont110791110792_))
                     (___kont110791110792_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont110791110792_))))
                                             (___kont110791110792_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _rest104500104508_))
                                 (let ((_hd104505104605_
                                        (let ()
                                          (declare (not safe))
                                          (##car _rest104500104508_)))
                                       (_tl104506104607_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _rest104500104508_))))
                                   (let* ((_e104610_ _hd104505104605_)
                                          (_rest104612_ _tl104506104607_))
                                     (declare (not safe))
                                     (_K104504104602_ _rest104612_ _e104610_)))
                                 (let ()
                                   (declare (not safe))
                                   (_else104502104516_)))))))))
                (___kont110835110836_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#generate-runtime-call% _self104404_ _stx104405_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx110831110832_))
                (let ((_e104412104440_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx110831110832_))))
                  (let ((_tl104414104445_
                         (let () (declare (not safe)) (##cdr _e104412104440_)))
                        (_hd104413104443_
                         (let ()
                           (declare (not safe))
                           (##car _e104412104440_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl104414104445_))
                        (let ((_e104415104448_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl104414104445_))))
                          (let ((_tl104417104453_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104415104448_)))
                                (_hd104416104451_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104415104448_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd104416104451_))
                                (let ((_e104418104456_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd104416104451_))))
                                  (let ((_tl104420104461_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e104418104456_)))
                                        (_hd104419104459_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e104418104456_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd104419104459_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd104419104459_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl104420104461_))
                                                (let ((_e104421104464_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl104420104461_))))
                                                  (let ((_tl104423104469_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e104421104464_)))
                                                        (_hd104422104467_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e104421104464_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl104423104469_))
                                                        (___kont110833110834_
                                                         _tl104417104453_
                                                         _hd104422104467_)
                                                        (___kont110835110836_))))
                                                (___kont110835110836_))
                                            (___kont110835110836_))
                                        (___kont110835110836_))))
                                (___kont110835110836_))))
                        (___kont110835110836_))))
                (___kont110835110836_))))))
    (define gxc#generate-runtime-if%
      (lambda (_self104216_ _stx104217_)
        (letrec ((_simplify104219_
                  (lambda (_code104304_)
                    (let* ((_code104305104323_ _code104304_)
                           (_else104307104331_ (lambda () _code104304_))
                           (_K104309104367_
                            (lambda (_expr104334_ _test104335_)
                              (let* ((_expr104336104344_ _expr104334_)
                                     (_else104338104352_
                                      (lambda ()
                                        (let ((__tmp111636
                                               (let ((__tmp111637
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _expr104334_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _test104335_
                                                       __tmp111637))))
                                          (declare (not safe))
                                          (cons 'and __tmp111636))))
                                     (_K104340104357_
                                      (lambda (_exprs104355_)
                                        (let ((__tmp111638
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _test104335_
                                                       _exprs104355_))))
                                          (declare (not safe))
                                          (cons 'and __tmp111638)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _expr104336104344_))
                                    (let ((_hd104341104360_
                                           (let ()
                                             (declare (not safe))
                                             (##car _expr104336104344_)))
                                          (_tl104342104362_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _expr104336104344_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd104341104360_ 'and))
                                          (let ((_exprs104365_
                                                 _tl104342104362_))
                                            (declare (not safe))
                                            (_K104340104357_ _exprs104365_))
                                          (let ()
                                            (declare (not safe))
                                            (_else104338104352_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else104338104352_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _code104305104323_))
                          (let ((_hd104310104370_
                                 (let ()
                                   (declare (not safe))
                                   (##car _code104305104323_)))
                                (_tl104311104372_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _code104305104323_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _hd104310104370_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl104311104372_))
                                    (let ((_hd104312104375_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl104311104372_)))
                                          (_tl104313104377_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl104311104372_))))
                                      (let ((_test104380_ _hd104312104375_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl104313104377_))
                                            (let ((_hd104314104382_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl104313104377_)))
                                                  (_tl104315104384_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl104313104377_))))
                                              (let ((_expr104387_
                                                     _hd104314104382_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl104315104384_))
                                                    (let ((_hd104316104389_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl104315104384_)))
                                                          (_tl104317104391_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl104315104384_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _hd104316104389_))
                                                          (let ((_hd104318104394_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _hd104316104389_)))
                        (_tl104319104396_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd104316104389_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd104318104394_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl104319104396_))
                            (let ((_hd104320104399_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl104319104396_)))
                                  (_tl104321104401_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl104319104396_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd104320104399_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl104321104401_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl104317104391_))
                                          (let ()
                                            (declare (not safe))
                                            (_K104309104367_
                                             _expr104387_
                                             _test104380_))
                                          (let ()
                                            (declare (not safe))
                                            (_else104307104331_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else104307104331_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else104307104331_))))
                            (let () (declare (not safe)) (_else104307104331_)))
                        (let () (declare (not safe)) (_else104307104331_))))
                  (let () (declare (not safe)) (_else104307104331_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else104307104331_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_else104307104331_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_else104307104331_)))
                                (let ()
                                  (declare (not safe))
                                  (_else104307104331_))))
                          (let ()
                            (declare (not safe))
                            (_else104307104331_)))))))
          (let* ((_g104221104242_
                  (lambda (_g104222104239_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104222104239_))))
                 (_g104220104301_
                  (lambda (_g104222104245_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104222104245_))
                        (let ((_e104226104247_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104222104245_))))
                          (let ((_hd104227104250_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104226104247_)))
                                (_tl104228104252_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104226104247_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl104228104252_))
                                (let ((_e104229104255_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl104228104252_))))
                                  (let ((_hd104230104258_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e104229104255_)))
                                        (_tl104231104260_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e104229104255_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl104231104260_))
                                        (let ((_e104232104263_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl104231104260_))))
                                          (let ((_hd104233104266_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e104232104263_)))
                                                (_tl104234104268_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e104232104263_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl104234104268_))
                                                (let ((_e104235104271_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl104234104268_))))
                                                  (let ((_hd104236104274_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e104235104271_)))
                                                        (_tl104237104276_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e104235104271_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl104237104276_))
                                                        ((lambda (_L104279_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L104280_
                          _L104281_)
                   (if (gxc#current-compile-boolean-context)
                       (let ((__tmp111639
                              (let ((__tmp111640
                                     (let ((__tmp111645
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self104216_
                                               _L104281_)))
                                           (__tmp111641
                                            (let ((__tmp111644
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self104216_
                                                      _L104280_)))
                                                  (__tmp111642
                                                   (let ((__tmp111643
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self104216_
                                                             _L104279_))))
                                                     (declare (not safe))
                                                     (cons __tmp111643 '()))))
                                              (declare (not safe))
                                              (cons __tmp111644 __tmp111642))))
                                       (declare (not safe))
                                       (cons __tmp111645 __tmp111641))))
                                (declare (not safe))
                                (cons 'if __tmp111640))))
                         (declare (not safe))
                         (_simplify104219_ __tmp111639))
                       (let ((__tmp111646
                              (let ((__tmp111651
                                     (let ((__tmp111652
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self104216_
                                                 _L104281_)))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp111652
                                        gxc#current-compile-boolean-context
                                        '#t)))
                                    (__tmp111647
                                     (let ((__tmp111650
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self104216_
                                               _L104280_)))
                                           (__tmp111648
                                            (let ((__tmp111649
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self104216_
                                                      _L104279_))))
                                              (declare (not safe))
                                              (cons __tmp111649 '()))))
                                       (declare (not safe))
                                       (cons __tmp111650 __tmp111648))))
                                (declare (not safe))
                                (cons __tmp111651 __tmp111647))))
                         (declare (not safe))
                         (cons 'if __tmp111646))))
                 _hd104236104274_
                 _hd104233104266_
                 _hd104230104258_)
                (let ()
                  (declare (not safe))
                  (_g104221104242_ _g104222104245_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g104221104242_
                                                   _g104222104245_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g104221104242_ _g104222104245_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g104221104242_ _g104222104245_)))))
                        (let ()
                          (declare (not safe))
                          (_g104221104242_ _g104222104245_))))))
            (declare (not safe))
            (_g104220104301_ _stx104217_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_self104164_ _stx104165_)
        (let* ((_g104167104180_
                (lambda (_g104168104177_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104168104177_))))
               (_g104166104213_
                (lambda (_g104168104183_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104168104183_))
                      (let ((_e104170104185_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104168104183_))))
                        (let ((_hd104171104188_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104170104185_)))
                              (_tl104172104190_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104170104185_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104172104190_))
                              (let ((_e104173104193_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104172104190_))))
                                (let ((_hd104174104196_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104173104193_)))
                                      (_tl104175104198_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104173104193_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl104175104198_))
                                      ((lambda (_L104201_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _L104201_)))
                                       _hd104174104196_)
                                      (let ()
                                        (declare (not safe))
                                        (_g104167104180_ _g104168104183_)))))
                              (let ()
                                (declare (not safe))
                                (_g104167104180_ _g104168104183_)))))
                      (let ()
                        (declare (not safe))
                        (_g104167104180_ _g104168104183_))))))
          (declare (not safe))
          (_g104166104213_ _stx104165_))))
    (define gxc#generate-runtime-setq%
      (lambda (_self104096_ _stx104097_)
        (let* ((_g104099104116_
                (lambda (_g104100104113_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104100104113_))))
               (_g104098104161_
                (lambda (_g104100104119_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104100104119_))
                      (let ((_e104103104121_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104100104119_))))
                        (let ((_hd104104104124_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104103104121_)))
                              (_tl104105104126_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104103104121_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104105104126_))
                              (let ((_e104106104129_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104105104126_))))
                                (let ((_hd104107104132_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104106104129_)))
                                      (_tl104108104134_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104106104129_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104108104134_))
                                      (let ((_e104109104137_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104108104134_))))
                                        (let ((_hd104110104140_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104109104137_)))
                                              (_tl104111104142_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104109104137_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl104111104142_))
                                              ((lambda (_L104145_ _L104146_)
                                                 (let ((__tmp111653
                                                        (let ((__tmp111656
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-binding-id _L104146_)))
                      (__tmp111654
                       (let ((__tmp111655
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1 _self104096_ _L104145_))))
                         (declare (not safe))
                         (cons __tmp111655 '()))))
                  (declare (not safe))
                  (cons __tmp111656 __tmp111654))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'set! __tmp111653)))
                                               _hd104110104140_
                                               _hd104107104132_)
                                              (let ()
                                                (declare (not safe))
                                                (_g104099104116_
                                                 _g104100104119_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g104099104116_ _g104100104119_)))))
                              (let ()
                                (declare (not safe))
                                (_g104099104116_ _g104100104119_)))))
                      (let ()
                        (declare (not safe))
                        (_g104099104116_ _g104100104119_))))))
          (declare (not safe))
          (_g104098104161_ _stx104097_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_self103907_ _stx103908_)
        (let* ((_g103910103927_
                (lambda (_g103911103924_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103911103924_))))
               (_g103909104093_
                (lambda (_g103911103930_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103911103930_))
                      (let ((_e103914103932_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103911103930_))))
                        (let ((_hd103915103935_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103914103932_)))
                              (_tl103916103937_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103914103932_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103916103937_))
                              (let ((_e103917103940_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103916103937_))))
                                (let ((_hd103918103943_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103917103940_)))
                                      (_tl103919103945_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103917103940_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl103919103945_))
                                      (let ((_e103920103948_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl103919103945_))))
                                        (let ((_hd103921103951_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e103920103948_)))
                                              (_tl103922103953_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e103920103948_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl103922103953_))
                                              ((lambda (_L103956_ _L103957_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (let ((__tmp111657
                                                            (let ((__tmp111660
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self103907_ _L103956_)))
                          (__tmp111658
                           (let ((__tmp111659
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self103907_
                                     _L103957_))))
                             (declare (not safe))
                             (cons __tmp111659 '()))))
                      (declare (not safe))
                      (cons __tmp111660 __tmp111658))))
               (declare (not safe))
               (cons '##structure-instance-of? __tmp111657))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp103972_ ((_rest103975_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp111675
                                      (let ()
                                        (declare (not safe))
                                        (cons _L103956_ '()))))
                                 (declare (not safe))
                                 (cons _L103957_ __tmp111675)))
                              (_bind103977_ '())
                              (_args103978_ '()))
               (let* ((_rest103979103987_ _rest103975_)
                      (_else103981103995_
                       (lambda ()
                         (let ((__tmp111661
                                (let ((__tmp111662
                                       (let ((__tmp111663
                                              (let ((__tmp111664
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '##structure-instance-of?
                                                             _args103978_))))
                                                (declare (not safe))
                                                (cons __tmp111664 '()))))
                                         (declare (not safe))
                                         (cons '(declare (not safe))
                                               __tmp111663))))
                                  (declare (not safe))
                                  (cons _bind103977_ __tmp111662))))
                           (declare (not safe))
                           (cons 'let __tmp111661))))
                      (_K103983104081_
                       (lambda (_rest103998_ _e103999_)
                         (let* ((___stx110869110870_ _e103999_)
                                (_g104004104022_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx110869110870_)))))
                           (let ((___kont110871110872_
                                  (lambda ()
                                    (let ((__tmp111665
                                           (let ((__tmp111666
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e103999_))))
                                             (declare (not safe))
                                             (cons __tmp111666 _args103978_))))
                                      (declare (not safe))
                                      (_lp103972_
                                       _rest103998_
                                       _bind103977_
                                       __tmp111665))))
                                 (___kont110873110874_
                                  (lambda ()
                                    (let ((__tmp111667
                                           (let ((__tmp111668
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e103999_))))
                                             (declare (not safe))
                                             (cons __tmp111668 _args103978_))))
                                      (declare (not safe))
                                      (_lp103972_
                                       _rest103998_
                                       _bind103977_
                                       __tmp111667))))
                                 (___kont110875110876_
                                  (lambda ()
                                    (let ((_tmp104029_
                                           (let ((__tmp111669 (gensym '__tmp)))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp111669))))
                                      (let ((__tmp111671
                                             (let ((__tmp111672
                                                    (let ((__tmp111673
                                                           (let ((__tmp111674
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e103999_))))
                     (declare (not safe))
                     (cons __tmp111674 '()))))
              (declare (not safe))
              (cons _tmp104029_ __tmp111673))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp111672
                                                     _bind103977_)))
                                            (__tmp111670
                                             (let ()
                                               (declare (not safe))
                                               (cons _tmp104029_
                                                     _args103978_))))
                                        (declare (not safe))
                                        (_lp103972_
                                         _rest103998_
                                         __tmp111671
                                         __tmp111670))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx110869110870_))
                                 (let ((_e104006104060_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx110869110870_))))
                                   (let ((_tl104008104065_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e104006104060_)))
                                         (_hd104007104063_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e104006104060_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _hd104007104063_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _hd104007104063_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl104008104065_))
                                                 (let ((_e104009104068_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl104008104065_))))
                                                   (let ((_tl104011104073_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e104009104068_)))
                                                         (_hd104010104071_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e104009104068_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl104011104073_))
                                                         (___kont110871110872_)
                                                         (___kont110875110876_))))
                                                 (___kont110875110876_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _hd104007104063_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl104008104065_))
                                                     (let ((_e104015104045_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl104008104065_))))
                                                       (let ((_tl104017104050_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e104015104045_)))
                     (_hd104016104048_
                      (let () (declare (not safe)) (##car _e104015104045_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl104017104050_))
                     (___kont110873110874_)
                     (___kont110875110876_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont110875110876_))
                                                 (___kont110875110876_)))
                                         (___kont110875110876_))))
                                 (___kont110875110876_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest103979103987_))
                     (let ((_hd103984104084_
                            (let ()
                              (declare (not safe))
                              (##car _rest103979103987_)))
                           (_tl103985104086_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest103979103987_))))
                       (let* ((_e104089_ _hd103984104084_)
                              (_rest104091_ _tl103985104086_))
                         (declare (not safe))
                         (_K103983104081_ _rest104091_ _e104089_)))
                     (let () (declare (not safe)) (_else103981103995_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd103921103951_
                                               _hd103918103943_)
                                              (let ()
                                                (declare (not safe))
                                                (_g103910103927_
                                                 _g103911103930_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103910103927_ _g103911103930_)))))
                              (let ()
                                (declare (not safe))
                                (_g103910103927_ _g103911103930_)))))
                      (let ()
                        (declare (not safe))
                        (_g103910103927_ _g103911103930_))))))
          (declare (not safe))
          (_g103909104093_ _stx103908_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_self103718_ _stx103719_)
        (let* ((_g103721103738_
                (lambda (_g103722103735_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103722103735_))))
               (_g103720103904_
                (lambda (_g103722103741_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103722103741_))
                      (let ((_e103725103743_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103722103741_))))
                        (let ((_hd103726103746_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103725103743_)))
                              (_tl103727103748_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103725103743_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103727103748_))
                              (let ((_e103728103751_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103727103748_))))
                                (let ((_hd103729103754_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103728103751_)))
                                      (_tl103730103756_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103728103751_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl103730103756_))
                                      (let ((_e103731103759_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl103730103756_))))
                                        (let ((_hd103732103762_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e103731103759_)))
                                              (_tl103733103764_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e103731103759_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl103733103764_))
                                              ((lambda (_L103767_ _L103768_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (let ((__tmp111676
                                                            (let ((__tmp111679
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self103718_ _L103767_)))
                          (__tmp111677
                           (let ((__tmp111678
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self103718_
                                     _L103768_))))
                             (declare (not safe))
                             (cons __tmp111678 '()))))
                      (declare (not safe))
                      (cons __tmp111679 __tmp111677))))
               (declare (not safe))
               (cons '##structure-direct-instance-of? __tmp111676))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp103783_ ((_rest103786_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp111694
                                      (let ()
                                        (declare (not safe))
                                        (cons _L103767_ '()))))
                                 (declare (not safe))
                                 (cons _L103768_ __tmp111694)))
                              (_bind103788_ '())
                              (_args103789_ '()))
               (let* ((_rest103790103798_ _rest103786_)
                      (_else103792103806_
                       (lambda ()
                         (let ((__tmp111680
                                (let ((__tmp111681
                                       (let ((__tmp111682
                                              (let ((__tmp111683
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '##structure-direct-instance-of?
                                                             _args103789_))))
                                                (declare (not safe))
                                                (cons __tmp111683 '()))))
                                         (declare (not safe))
                                         (cons '(declare (not safe))
                                               __tmp111682))))
                                  (declare (not safe))
                                  (cons _bind103788_ __tmp111681))))
                           (declare (not safe))
                           (cons 'let __tmp111680))))
                      (_K103794103892_
                       (lambda (_rest103809_ _e103810_)
                         (let* ((___stx110915110916_ _e103810_)
                                (_g103815103833_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx110915110916_)))))
                           (let ((___kont110917110918_
                                  (lambda ()
                                    (let ((__tmp111684
                                           (let ((__tmp111685
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e103810_))))
                                             (declare (not safe))
                                             (cons __tmp111685 _args103789_))))
                                      (declare (not safe))
                                      (_lp103783_
                                       _rest103809_
                                       _bind103788_
                                       __tmp111684))))
                                 (___kont110919110920_
                                  (lambda ()
                                    (let ((__tmp111686
                                           (let ((__tmp111687
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e103810_))))
                                             (declare (not safe))
                                             (cons __tmp111687 _args103789_))))
                                      (declare (not safe))
                                      (_lp103783_
                                       _rest103809_
                                       _bind103788_
                                       __tmp111686))))
                                 (___kont110921110922_
                                  (lambda ()
                                    (let ((_tmp103840_
                                           (let ((__tmp111688 (gensym '__tmp)))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp111688))))
                                      (let ((__tmp111690
                                             (let ((__tmp111691
                                                    (let ((__tmp111692
                                                           (let ((__tmp111693
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e103810_))))
                     (declare (not safe))
                     (cons __tmp111693 '()))))
              (declare (not safe))
              (cons _tmp103840_ __tmp111692))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp111691
                                                     _bind103788_)))
                                            (__tmp111689
                                             (let ()
                                               (declare (not safe))
                                               (cons _tmp103840_
                                                     _args103789_))))
                                        (declare (not safe))
                                        (_lp103783_
                                         _rest103809_
                                         __tmp111690
                                         __tmp111689))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx110915110916_))
                                 (let ((_e103817103871_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx110915110916_))))
                                   (let ((_tl103819103876_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e103817103871_)))
                                         (_hd103818103874_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e103817103871_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _hd103818103874_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _hd103818103874_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl103819103876_))
                                                 (let ((_e103820103879_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl103819103876_))))
                                                   (let ((_tl103822103884_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e103820103879_)))
                                                         (_hd103821103882_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e103820103879_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl103822103884_))
                                                         (___kont110917110918_)
                                                         (___kont110921110922_))))
                                                 (___kont110921110922_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _hd103818103874_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl103819103876_))
                                                     (let ((_e103826103856_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl103819103876_))))
                                                       (let ((_tl103828103861_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e103826103856_)))
                     (_hd103827103859_
                      (let () (declare (not safe)) (##car _e103826103856_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl103828103861_))
                     (___kont110919110920_)
                     (___kont110921110922_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont110921110922_))
                                                 (___kont110921110922_)))
                                         (___kont110921110922_))))
                                 (___kont110921110922_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest103790103798_))
                     (let ((_hd103795103895_
                            (let ()
                              (declare (not safe))
                              (##car _rest103790103798_)))
                           (_tl103796103897_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest103790103798_))))
                       (let* ((_e103900_ _hd103795103895_)
                              (_rest103902_ _tl103796103897_))
                         (declare (not safe))
                         (_K103794103892_ _rest103902_ _e103900_)))
                     (let () (declare (not safe)) (_else103792103806_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd103732103762_
                                               _hd103729103754_)
                                              (let ()
                                                (declare (not safe))
                                                (_g103721103738_
                                                 _g103722103741_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103721103738_ _g103722103741_)))))
                              (let ()
                                (declare (not safe))
                                (_g103721103738_ _g103722103741_)))))
                      (let ()
                        (declare (not safe))
                        (_g103721103738_ _g103722103741_))))))
          (declare (not safe))
          (_g103720103904_ _stx103719_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_self103634_ _stx103635_)
        (let* ((_g103637103658_
                (lambda (_g103638103655_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103638103655_))))
               (_g103636103715_
                (lambda (_g103638103661_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103638103661_))
                      (let ((_e103642103663_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103638103661_))))
                        (let ((_hd103643103666_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103642103663_)))
                              (_tl103644103668_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103642103663_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103644103668_))
                              (let ((_e103645103671_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103644103668_))))
                                (let ((_hd103646103674_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103645103671_)))
                                      (_tl103647103676_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103645103671_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl103647103676_))
                                      (let ((_e103648103679_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl103647103676_))))
                                        (let ((_hd103649103682_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e103648103679_)))
                                              (_tl103650103684_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e103648103679_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl103650103684_))
                                              (let ((_e103651103687_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl103650103684_))))
                                                (let ((_hd103652103690_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e103651103687_)))
                                                      (_tl103653103692_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e103651103687_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl103653103692_))
                                                      ((lambda (_L103695_
                                                                _L103696_
                                                                _L103697_)
                                                         (let ((__tmp111695
                                                                (let ((__tmp111701
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self103634_ _L103695_)))
                              (__tmp111696
                               (let ((__tmp111700
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self103634_
                                         _L103696_)))
                                     (__tmp111697
                                      (let ((__tmp111699
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self103634_
                                                _L103697_)))
                                            (__tmp111698
                                             (let ()
                                               (declare (not safe))
                                               (cons ''#f '()))))
                                        (declare (not safe))
                                        (cons __tmp111699 __tmp111698))))
                                 (declare (not safe))
                                 (cons __tmp111700 __tmp111697))))
                          (declare (not safe))
                          (cons __tmp111701 __tmp111696))))
                   (declare (not safe))
                   (cons '##structure-ref __tmp111695)))
               _hd103652103690_
               _hd103649103682_
               _hd103646103674_)
              (let ()
                (declare (not safe))
                (_g103637103658_ _g103638103661_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g103637103658_
                                                 _g103638103661_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103637103658_ _g103638103661_)))))
                              (let ()
                                (declare (not safe))
                                (_g103637103658_ _g103638103661_)))))
                      (let ()
                        (declare (not safe))
                        (_g103637103658_ _g103638103661_))))))
          (declare (not safe))
          (_g103636103715_ _stx103635_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_self103534_ _stx103535_)
        (let* ((_g103537103562_
                (lambda (_g103538103559_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103538103559_))))
               (_g103536103631_
                (lambda (_g103538103565_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103538103565_))
                      (let ((_e103543103567_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103538103565_))))
                        (let ((_hd103544103570_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103543103567_)))
                              (_tl103545103572_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103543103567_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103545103572_))
                              (let ((_e103546103575_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103545103572_))))
                                (let ((_hd103547103578_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103546103575_)))
                                      (_tl103548103580_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103546103575_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl103548103580_))
                                      (let ((_e103549103583_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl103548103580_))))
                                        (let ((_hd103550103586_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e103549103583_)))
                                              (_tl103551103588_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e103549103583_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl103551103588_))
                                              (let ((_e103552103591_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl103551103588_))))
                                                (let ((_hd103553103594_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e103552103591_)))
                                                      (_tl103554103596_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e103552103591_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl103554103596_))
                                                      (let ((_e103555103599_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl103554103596_))))
                (let ((_hd103556103602_
                       (let () (declare (not safe)) (##car _e103555103599_)))
                      (_tl103557103604_
                       (let () (declare (not safe)) (##cdr _e103555103599_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl103557103604_))
                      ((lambda (_L103607_ _L103608_ _L103609_ _L103610_)
                         (let ((__tmp111702
                                (let ((__tmp111710
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self103534_
                                          _L103608_)))
                                      (__tmp111703
                                       (let ((__tmp111709
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self103534_
                                                 _L103607_)))
                                             (__tmp111704
                                              (let ((__tmp111708
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self103534_
                                                        _L103609_)))
                                                    (__tmp111705
                                                     (let ((__tmp111707
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self103534_
                                                               _L103610_)))
                                                           (__tmp111706
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons ''#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp111707 __tmp111706))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp111708
                                                      __tmp111705))))
                                         (declare (not safe))
                                         (cons __tmp111709 __tmp111704))))
                                  (declare (not safe))
                                  (cons __tmp111710 __tmp111703))))
                           (declare (not safe))
                           (cons '##structure-set! __tmp111702)))
                       _hd103556103602_
                       _hd103553103594_
                       _hd103550103586_
                       _hd103547103578_)
                      (let ()
                        (declare (not safe))
                        (_g103537103562_ _g103538103565_)))))
              (let ()
                (declare (not safe))
                (_g103537103562_ _g103538103565_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g103537103562_
                                                 _g103538103565_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103537103562_ _g103538103565_)))))
                              (let ()
                                (declare (not safe))
                                (_g103537103562_ _g103538103565_)))))
                      (let ()
                        (declare (not safe))
                        (_g103537103562_ _g103538103565_))))))
          (declare (not safe))
          (_g103536103631_ _stx103535_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_self103450_ _stx103451_)
        (let* ((_g103453103474_
                (lambda (_g103454103471_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103454103471_))))
               (_g103452103531_
                (lambda (_g103454103477_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103454103477_))
                      (let ((_e103458103479_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103454103477_))))
                        (let ((_hd103459103482_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103458103479_)))
                              (_tl103460103484_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103458103479_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103460103484_))
                              (let ((_e103461103487_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103460103484_))))
                                (let ((_hd103462103490_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103461103487_)))
                                      (_tl103463103492_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103461103487_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl103463103492_))
                                      (let ((_e103464103495_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl103463103492_))))
                                        (let ((_hd103465103498_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e103464103495_)))
                                              (_tl103466103500_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e103464103495_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl103466103500_))
                                              (let ((_e103467103503_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl103466103500_))))
                                                (let ((_hd103468103506_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e103467103503_)))
                                                      (_tl103469103508_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e103467103503_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl103469103508_))
                                                      ((lambda (_L103511_
                                                                _L103512_
                                                                _L103513_)
                                                         (let ((__tmp111711
                                                                (let ((__tmp111717
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self103450_ _L103511_)))
                              (__tmp111712
                               (let ((__tmp111716
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self103450_
                                         _L103512_)))
                                     (__tmp111713
                                      (let ((__tmp111715
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self103450_
                                                _L103513_)))
                                            (__tmp111714
                                             (let ()
                                               (declare (not safe))
                                               (cons ''#f '()))))
                                        (declare (not safe))
                                        (cons __tmp111715 __tmp111714))))
                                 (declare (not safe))
                                 (cons __tmp111716 __tmp111713))))
                          (declare (not safe))
                          (cons __tmp111717 __tmp111712))))
                   (declare (not safe))
                   (cons '##direct-structure-ref __tmp111711)))
               _hd103468103506_
               _hd103465103498_
               _hd103462103490_)
              (let ()
                (declare (not safe))
                (_g103453103474_ _g103454103477_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g103453103474_
                                                 _g103454103477_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103453103474_ _g103454103477_)))))
                              (let ()
                                (declare (not safe))
                                (_g103453103474_ _g103454103477_)))))
                      (let ()
                        (declare (not safe))
                        (_g103453103474_ _g103454103477_))))))
          (declare (not safe))
          (_g103452103531_ _stx103451_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_self103350_ _stx103351_)
        (let* ((_g103353103378_
                (lambda (_g103354103375_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103354103375_))))
               (_g103352103447_
                (lambda (_g103354103381_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103354103381_))
                      (let ((_e103359103383_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103354103381_))))
                        (let ((_hd103360103386_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103359103383_)))
                              (_tl103361103388_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103359103383_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103361103388_))
                              (let ((_e103362103391_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103361103388_))))
                                (let ((_hd103363103394_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103362103391_)))
                                      (_tl103364103396_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103362103391_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl103364103396_))
                                      (let ((_e103365103399_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl103364103396_))))
                                        (let ((_hd103366103402_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e103365103399_)))
                                              (_tl103367103404_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e103365103399_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl103367103404_))
                                              (let ((_e103368103407_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl103367103404_))))
                                                (let ((_hd103369103410_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e103368103407_)))
                                                      (_tl103370103412_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e103368103407_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl103370103412_))
                                                      (let ((_e103371103415_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl103370103412_))))
                (let ((_hd103372103418_
                       (let () (declare (not safe)) (##car _e103371103415_)))
                      (_tl103373103420_
                       (let () (declare (not safe)) (##cdr _e103371103415_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl103373103420_))
                      ((lambda (_L103423_ _L103424_ _L103425_ _L103426_)
                         (let ((__tmp111718
                                (let ((__tmp111726
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self103350_
                                          _L103424_)))
                                      (__tmp111719
                                       (let ((__tmp111725
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self103350_
                                                 _L103423_)))
                                             (__tmp111720
                                              (let ((__tmp111724
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self103350_
                                                        _L103425_)))
                                                    (__tmp111721
                                                     (let ((__tmp111723
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self103350_
                                                               _L103426_)))
                                                           (__tmp111722
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons ''#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp111723 __tmp111722))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp111724
                                                      __tmp111721))))
                                         (declare (not safe))
                                         (cons __tmp111725 __tmp111720))))
                                  (declare (not safe))
                                  (cons __tmp111726 __tmp111719))))
                           (declare (not safe))
                           (cons '##direct-structure-set! __tmp111718)))
                       _hd103372103418_
                       _hd103369103410_
                       _hd103366103402_
                       _hd103363103394_)
                      (let ()
                        (declare (not safe))
                        (_g103353103378_ _g103354103381_)))))
              (let ()
                (declare (not safe))
                (_g103353103378_ _g103354103381_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g103353103378_
                                                 _g103354103381_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103353103378_ _g103354103381_)))))
                              (let ()
                                (declare (not safe))
                                (_g103353103378_ _g103354103381_)))))
                      (let ()
                        (declare (not safe))
                        (_g103353103378_ _g103354103381_))))))
          (declare (not safe))
          (_g103352103447_ _stx103351_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_self103145_ _stx103146_)
        (let* ((_g103148103169_
                (lambda (_g103149103166_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103149103166_))))
               (_g103147103347_
                (lambda (_g103149103172_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103149103172_))
                      (let ((_e103153103174_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103149103172_))))
                        (let ((_hd103154103177_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103153103174_)))
                              (_tl103155103179_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103153103174_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103155103179_))
                              (let ((_e103156103182_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103155103179_))))
                                (let ((_hd103157103185_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103156103182_)))
                                      (_tl103158103187_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103156103182_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl103158103187_))
                                      (let ((_e103159103190_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl103158103187_))))
                                        (let ((_hd103160103193_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e103159103190_)))
                                              (_tl103161103195_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e103159103190_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl103161103195_))
                                              (let ((_e103162103198_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl103161103195_))))
                                                (let ((_hd103163103201_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e103162103198_)))
                                                      (_tl103164103203_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e103162103198_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl103164103203_))
                                                      ((lambda (_L103206_
                                                                _L103207_
                                                                _L103208_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-decls-unsafe?))
                     (let ((__tmp111727
                            (let ((__tmp111733
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self103145_
                                      _L103206_)))
                                  (__tmp111728
                                   (let ((__tmp111732
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _self103145_
                                             _L103207_)))
                                         (__tmp111729
                                          (let ((__tmp111731
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self103145_
                                                    _L103208_)))
                                                (__tmp111730
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons ''#f '()))))
                                            (declare (not safe))
                                            (cons __tmp111731 __tmp111730))))
                                     (declare (not safe))
                                     (cons __tmp111732 __tmp111729))))
                              (declare (not safe))
                              (cons __tmp111733 __tmp111728))))
                       (declare (not safe))
                       (cons '##unchecked-structure-ref __tmp111727))
                     (let _lp103226_ ((_rest103229_
                                       (let ((__tmp111750
                                              (let ((__tmp111751
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L103206_ '()))))
                                                (declare (not safe))
                                                (cons _L103207_ __tmp111751))))
                                         (declare (not safe))
                                         (cons _L103208_ __tmp111750)))
                                      (_bind103231_ '())
                                      (_args103232_ '()))
                       (let* ((_rest103233103241_ _rest103229_)
                              (_else103235103249_
                               (lambda ()
                                 (let ((__tmp111734
                                        (let ((__tmp111735
                                               (let ((__tmp111736
                                                      (let ((__tmp111737
                                                             (let ((__tmp111738
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp111739
                                   (let ()
                                     (declare (not safe))
                                     (cons ''#f '()))))
                              (declare (not safe))
                              (foldr1 cons __tmp111739 _args103232_))))
                       (declare (not safe))
                       (cons '##unchecked-structure-ref __tmp111738))))
                (declare (not safe))
                (cons __tmp111737 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '(declare (not safe))
                                                       __tmp111736))))
                                          (declare (not safe))
                                          (cons _bind103231_ __tmp111735))))
                                   (declare (not safe))
                                   (cons 'let __tmp111734))))
                              (_K103237103335_
                               (lambda (_rest103252_ _e103253_)
                                 (let* ((___stx110961110962_ _e103253_)
                                        (_g103258103276_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx110961110962_)))))
                                   (let ((___kont110963110964_
                                          (lambda ()
                                            (let ((__tmp111740
                                                   (let ((__tmp111741
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _e103253_))))
                                                     (declare (not safe))
                                                     (cons __tmp111741
                                                           _args103232_))))
                                              (declare (not safe))
                                              (_lp103226_
                                               _rest103252_
                                               _bind103231_
                                               __tmp111740))))
                                         (___kont110965110966_
                                          (lambda ()
                                            (let ((__tmp111742
                                                   (let ((__tmp111743
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _e103253_))))
                                                     (declare (not safe))
                                                     (cons __tmp111743
                                                           _args103232_))))
                                              (declare (not safe))
                                              (_lp103226_
                                               _rest103252_
                                               _bind103231_
                                               __tmp111742))))
                                         (___kont110967110968_
                                          (lambda ()
                                            (let ((_tmp103283_
                                                   (let ((__tmp111744
                                                          (gensym '__tmp)))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp111744))))
                                              (let ((__tmp111746
                                                     (let ((__tmp111747
                                                            (let ((__tmp111748
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp111749
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__0 _e103253_))))
                             (declare (not safe))
                             (cons __tmp111749 '()))))
                      (declare (not safe))
                      (cons _tmp103283_ __tmp111748))))
               (declare (not safe))
               (cons __tmp111747 _bind103231_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp111745
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _tmp103283_
                                                             _args103232_))))
                                                (declare (not safe))
                                                (_lp103226_
                                                 _rest103252_
                                                 __tmp111746
                                                 __tmp111745))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx110961110962_))
                                         (let ((_e103260103314_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx110961110962_))))
                                           (let ((_tl103262103319_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e103260103314_)))
                                                 (_hd103261103317_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e103260103314_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd103261103317_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _hd103261103317_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _tl103262103319_))
                                                         (let ((_e103263103322_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _tl103262103319_))))
                   (let ((_tl103265103327_
                          (let ()
                            (declare (not safe))
                            (##cdr _e103263103322_)))
                         (_hd103264103325_
                          (let ()
                            (declare (not safe))
                            (##car _e103263103322_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl103265103327_))
                         (___kont110963110964_)
                         (___kont110967110968_))))
                 (___kont110967110968_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _hd103261103317_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl103262103319_))
                     (let ((_e103269103299_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl103262103319_))))
                       (let ((_tl103271103304_
                              (let ()
                                (declare (not safe))
                                (##cdr _e103269103299_)))
                             (_hd103270103302_
                              (let ()
                                (declare (not safe))
                                (##car _e103269103299_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl103271103304_))
                             (___kont110965110966_)
                             (___kont110967110968_))))
                     (___kont110967110968_))
                 (___kont110967110968_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont110967110968_))))
                                         (___kont110967110968_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest103233103241_))
                             (let ((_hd103238103338_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest103233103241_)))
                                   (_tl103239103340_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest103233103241_))))
                               (let* ((_e103343_ _hd103238103338_)
                                      (_rest103345_ _tl103239103340_))
                                 (declare (not safe))
                                 (_K103237103335_ _rest103345_ _e103343_)))
                             (let ()
                               (declare (not safe))
                               (_else103235103249_)))))))
               _hd103163103201_
               _hd103160103193_
               _hd103157103185_)
              (let ()
                (declare (not safe))
                (_g103148103169_ _g103149103172_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g103148103169_
                                                 _g103149103172_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103148103169_ _g103149103172_)))))
                              (let ()
                                (declare (not safe))
                                (_g103148103169_ _g103149103172_)))))
                      (let ()
                        (declare (not safe))
                        (_g103148103169_ _g103149103172_))))))
          (declare (not safe))
          (_g103147103347_ _stx103146_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_self102924_ _stx102925_)
        (let* ((_g102927102952_
                (lambda (_g102928102949_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102928102949_))))
               (_g102926103142_
                (lambda (_g102928102955_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102928102955_))
                      (let ((_e102933102957_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102928102955_))))
                        (let ((_hd102934102960_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102933102957_)))
                              (_tl102935102962_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102933102957_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102935102962_))
                              (let ((_e102936102965_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102935102962_))))
                                (let ((_hd102937102968_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102936102965_)))
                                      (_tl102938102970_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102936102965_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102938102970_))
                                      (let ((_e102939102973_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102938102970_))))
                                        (let ((_hd102940102976_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102939102973_)))
                                              (_tl102941102978_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102939102973_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl102941102978_))
                                              (let ((_e102942102981_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl102941102978_))))
                                                (let ((_hd102943102984_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e102942102981_)))
                                                      (_tl102944102986_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e102942102981_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl102944102986_))
                                                      (let ((_e102945102989_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl102944102986_))))
                (let ((_hd102946102992_
                       (let () (declare (not safe)) (##car _e102945102989_)))
                      (_tl102947102994_
                       (let () (declare (not safe)) (##cdr _e102945102989_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl102947102994_))
                      ((lambda (_L102997_ _L102998_ _L102999_ _L103000_)
                         (if (let ()
                               (declare (not safe))
                               (gxc#current-compile-decls-unsafe?))
                             (let ((__tmp111752
                                    (let ((__tmp111760
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self102924_
                                              _L102998_)))
                                          (__tmp111753
                                           (let ((__tmp111759
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _self102924_
                                                     _L102997_)))
                                                 (__tmp111754
                                                  (let ((__tmp111758
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self102924_
                                                            _L102999_)))
                                                        (__tmp111755
                                                         (let ((__tmp111757
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _self102924_ _L103000_)))
                       (__tmp111756
                        (let () (declare (not safe)) (cons ''#f '()))))
                   (declare (not safe))
                   (cons __tmp111757 __tmp111756))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp111758
                                                          __tmp111755))))
                                             (declare (not safe))
                                             (cons __tmp111759 __tmp111754))))
                                      (declare (not safe))
                                      (cons __tmp111760 __tmp111753))))
                               (declare (not safe))
                               (cons '##unchecked-structure-set! __tmp111752))
                             (let _lp103021_ ((_rest103024_
                                               (let ((__tmp111777
                                                      (let ((__tmp111778
                                                             (let ((__tmp111779
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _L102998_ '()))))
                       (declare (not safe))
                       (cons _L102997_ __tmp111779))))
                (declare (not safe))
                (cons _L102999_ __tmp111778))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L103000_ __tmp111777)))
                                              (_bind103026_ '())
                                              (_args103027_ '()))
                               (let* ((_rest103028103036_ _rest103024_)
                                      (_else103030103044_
                                       (lambda ()
                                         (let ((__tmp111761
                                                (let ((__tmp111762
                                                       (let ((__tmp111763
                                                              (let ((__tmp111764
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp111765
                                    (let ((__tmp111766
                                           (let ()
                                             (declare (not safe))
                                             (cons ''#f '()))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp111766 _args103027_))))
                               (declare (not safe))
                               (cons '##unchecked-structure-set!
                                     __tmp111765))))
                        (declare (not safe))
                        (cons __tmp111764 '()))))
                 (declare (not safe))
                 (cons '(declare (not safe)) __tmp111763))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _bind103026_
                                                        __tmp111762))))
                                           (declare (not safe))
                                           (cons 'let __tmp111761))))
                                      (_K103032103130_
                                       (lambda (_rest103047_ _e103048_)
                                         (let* ((___stx111007111008_ _e103048_)
                                                (_g103053103071_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx111007111008_)))))
                                           (let ((___kont111009111010_
                                                  (lambda ()
                                                    (let ((__tmp111767
                                                           (let ((__tmp111768
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e103048_))))
                     (declare (not safe))
                     (cons __tmp111768 _args103027_))))
              (declare (not safe))
              (_lp103021_ _rest103047_ _bind103026_ __tmp111767))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont111011111012_
                                                  (lambda ()
                                                    (let ((__tmp111769
                                                           (let ((__tmp111770
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e103048_))))
                     (declare (not safe))
                     (cons __tmp111770 _args103027_))))
              (declare (not safe))
              (_lp103021_ _rest103047_ _bind103026_ __tmp111769))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont111013111014_
                                                  (lambda ()
                                                    (let ((_tmp103078_
                                                           (let ((__tmp111771
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__tmp)))
                     (declare (not safe))
                     (make-symbol__0 __tmp111771))))
              (let ((__tmp111773
                     (let ((__tmp111774
                            (let ((__tmp111775
                                   (let ((__tmp111776
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _e103048_))))
                                     (declare (not safe))
                                     (cons __tmp111776 '()))))
                              (declare (not safe))
                              (cons _tmp103078_ __tmp111775))))
                       (declare (not safe))
                       (cons __tmp111774 _bind103026_)))
                    (__tmp111772
                     (let ()
                       (declare (not safe))
                       (cons _tmp103078_ _args103027_))))
                (declare (not safe))
                (_lp103021_ _rest103047_ __tmp111773 __tmp111772))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    ___stx111007111008_))
                                                 (let ((_e103055103109_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           ___stx111007111008_))))
                                                   (let ((_tl103057103114_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e103055103109_)))
                                                         (_hd103056103112_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e103055103109_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _hd103056103112_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _hd103056103112_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _tl103057103114_))
                         (let ((_e103058103117_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _tl103057103114_))))
                           (let ((_tl103060103122_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e103058103117_)))
                                 (_hd103059103120_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e103058103117_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _tl103060103122_))
                                 (___kont111009111010_)
                                 (___kont111013111014_))))
                         (___kont111013111014_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _hd103056103112_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _tl103057103114_))
                             (let ((_e103064103094_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _tl103057103114_))))
                               (let ((_tl103066103099_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e103064103094_)))
                                     (_hd103065103097_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e103064103094_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _tl103066103099_))
                                     (___kont111011111012_)
                                     (___kont111013111014_))))
                             (___kont111013111014_))
                         (___kont111013111014_)))
                 (___kont111013111014_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont111013111014_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _rest103028103036_))
                                     (let ((_hd103033103133_
                                            (let ()
                                              (declare (not safe))
                                              (##car _rest103028103036_)))
                                           (_tl103034103135_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _rest103028103036_))))
                                       (let* ((_e103138_ _hd103033103133_)
                                              (_rest103140_ _tl103034103135_))
                                         (declare (not safe))
                                         (_K103032103130_
                                          _rest103140_
                                          _e103138_)))
                                     (let ()
                                       (declare (not safe))
                                       (_else103030103044_)))))))
                       _hd102946102992_
                       _hd102943102984_
                       _hd102940102976_
                       _hd102937102968_)
                      (let ()
                        (declare (not safe))
                        (_g102927102952_ _g102928102955_)))))
              (let ()
                (declare (not safe))
                (_g102927102952_ _g102928102955_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g102927102952_
                                                 _g102928102955_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102927102952_ _g102928102955_)))))
                              (let ()
                                (declare (not safe))
                                (_g102927102952_ _g102928102955_)))))
                      (let ()
                        (declare (not safe))
                        (_g102927102952_ _g102928102955_))))))
          (declare (not safe))
          (_g102926103142_ _stx102925_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_self102777_ _stx102778_)
        (letrec ((_import-set-template102780_
                  (lambda (_in102876_ _phi102877_)
                    (let ((_iphi102879_
                           (fx+ _phi102877_
                                (##direct-structure-ref
                                 _in102876_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_imports102880_
                           (##structure-ref
                            (##direct-structure-ref
                             _in102876_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _lp102882_ ((_rest102884_ _imports102880_)
                                       (_r102885_ '()))
                        (let* ((_rest102886102894_ _rest102884_)
                               (_else102888102902_ (lambda () _r102885_))
                               (_K102890102912_
                                (lambda (_rest102905_ _in102906_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _in102906_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (fxzero? _iphi102879_))
                                          (let ((__tmp111780
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _in102906_
                                                         _r102885_))))
                                            (declare (not safe))
                                            (_lp102882_
                                             _rest102905_
                                             __tmp111780))
                                          (let ()
                                            (declare (not safe))
                                            (_lp102882_
                                             _rest102905_
                                             _r102885_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _in102906_
                                             'gx#module-import::t))
                                          (let ((_iphi102908_
                                                 (fx+ _phi102877_
                                                      (##direct-structure-ref
                                                       _in102906_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (fxzero? _iphi102908_))
                                                (let ((__tmp111781
                                                       (let ((__tmp111782
                                                              (##direct-structure-ref
                                                               (##direct-structure-ref
                                                                _in102906_
                                                                '1
                                                                gx#module-import::t
                                                                '#f)
                                                               '1
                                                               gx#module-export::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp111782
                                                               _r102885_))))
                                                  (declare (not safe))
                                                  (_lp102882_
                                                   _rest102905_
                                                   __tmp111781))
                                                (let ()
                                                  (declare (not safe))
                                                  (_lp102882_
                                                   _rest102905_
                                                   _r102885_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _in102906_
                                                 'gx#import-set::t))
                                              (let ((_xphi102910_
                                                     (fx+ _iphi102879_
                                                          (##direct-structure-ref
                                                           _in102906_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (fxzero? _xphi102910_))
                                                    (let ((__tmp111783
                                                           (let ((__tmp111784
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##direct-structure-ref
                           _in102906_
                           '1
                           gx#import-set::t
                           '#f)))
                     (declare (not safe))
                     (cons __tmp111784 _r102885_))))
              (declare (not safe))
              (_lp102882_ _rest102905_ __tmp111783))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (fxpositive?
                                                         _xphi102910_)
                                                        (let ((__tmp111785
                                                               (let ((__tmp111786
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_import-set-template102780_
                                 _in102906_
                                 _iphi102879_))))
                         (declare (not safe))
                         (foldl1 cons _r102885_ __tmp111786))))
                  (declare (not safe))
                  (_lp102882_ _rest102905_ __tmp111785))
                (let ()
                  (declare (not safe))
                  (_lp102882_ _rest102905_ _r102885_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_lp102882_
                                                 _rest102905_
                                                 _r102885_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest102886102894_))
                              (let ((_hd102891102915_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest102886102894_)))
                                    (_tl102892102917_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest102886102894_))))
                                (let* ((_in102920_ _hd102891102915_)
                                       (_rest102922_ _tl102892102917_))
                                  (declare (not safe))
                                  (_K102890102912_ _rest102922_ _in102920_)))
                              (let ()
                                (declare (not safe))
                                (_else102888102902_)))))))))
          (let* ((_g102782102792_
                  (lambda (_g102783102789_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g102783102789_))))
                 (_g102781102873_
                  (lambda (_g102783102795_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g102783102795_))
                        (let ((_e102785102797_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g102783102795_))))
                          (let ((_hd102786102800_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e102785102797_)))
                                (_tl102787102802_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e102785102797_))))
                            ((lambda (_L102805_)
                               (let ((_ht102816_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _lp102818_ ((_rest102820_ _L102805_)
                                                  (_loads102821_ '()))
                                   (letrec ((_K102823_
                                             (lambda (_ctx102866_ _rest102867_)
                                               (let ((_id102869_
                                                      (##structure-ref
                                                       _ctx102866_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (hash-get
                                                        _ht102816_
                                                        _id102869_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (_lp102818_
                                                        _rest102867_
                                                        _loads102821_))
                                                     (let ((_rt102871_
                                                            (string-append
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#module-id->path-string _id102869_))
                     '"__rt")))
               (let ()
                 (declare (not safe))
                 (hash-put! _ht102816_ _id102869_ _rt102871_))
               (let ((__tmp111787
                      (let ()
                        (declare (not safe))
                        (cons _rt102871_ _loads102821_))))
                 (declare (not safe))
                 (_lp102818_ _rest102867_ __tmp111787))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let* ((_rest102824102832_ _rest102820_)
                                            (_else102826102844_
                                             (lambda ()
                                               (let ((__tmp111788
                                                      (map (lambda (_g102839102841_)
                                                             (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g102839102841_))
                   (reverse _loads102821_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'begin __tmp111788))))
                                            (_K102828102854_
                                             (lambda (_rest102847_ _in102848_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _in102848_
                                                      'gx#module-context::t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_K102823_
                                                      _in102848_
                                                      _rest102847_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _in102848_
                                                          'gx#module-import::t))
                                                       (if (let ((__tmp111789
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##direct-structure-ref
                           _in102848_
                           '3
                           gx#module-import::t
                           '#f)))
                     (declare (not safe))
                     (fxzero? __tmp111789))
                   (let ((__tmp111790
                          (##direct-structure-ref
                           (##direct-structure-ref
                            _in102848_
                            '1
                            gx#module-import::t
                            '#f)
                           '1
                           gx#module-export::t
                           '#f)))
                     (declare (not safe))
                     (_K102823_ __tmp111790 _rest102847_))
                   (let ()
                     (declare (not safe))
                     (_lp102818_ _rest102847_ _loads102821_)))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _in102848_
                      'gx#import-set::t))
                   (let ((_phi102850_
                          (##direct-structure-ref
                           _in102848_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (let () (declare (not safe)) (fxzero? _phi102850_))
                         (let ((__tmp111791
                                (##direct-structure-ref
                                 _in102848_
                                 '1
                                 gx#import-set::t
                                 '#f)))
                           (declare (not safe))
                           (_K102823_ __tmp111791 _rest102847_))
                         (if (fxpositive? _phi102850_)
                             (let* ((_deps102852_
                                     (let ()
                                       (declare (not safe))
                                       (_import-set-template102780_
                                        _in102848_
                                        '0)))
                                    (__tmp111792
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _rest102847_
                                               _deps102852_))))
                               (declare (not safe))
                               (_lp102818_ __tmp111792 _loads102821_))
                             (let ()
                               (declare (not safe))
                               (_lp102818_ _rest102847_ _loads102821_)))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _stx102778_
                      _in102848_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _rest102824102832_))
                                           (let ((_hd102829102857_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _rest102824102832_)))
                                                 (_tl102830102859_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _rest102824102832_))))
                                             (let* ((_in102862_
                                                     _hd102829102857_)
                                                    (_rest102864_
                                                     _tl102830102859_))
                                               (declare (not safe))
                                               (_K102828102854_
                                                _rest102864_
                                                _in102862_)))
                                           (let ()
                                             (declare (not safe))
                                             (_else102826102844_))))))))
                             _tl102787102802_)))
                        (let ()
                          (declare (not safe))
                          (_g102782102792_ _g102783102795_))))))
            (declare (not safe))
            (_g102781102873_ _stx102778_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_self102592_ _stx102593_)
        (letrec ((_add-lift!102595_
                  (lambda (_expr102775_)
                    (set-box!
                     (gxc#current-compile-lift)
                     (let ((__tmp111793 (unbox (gxc#current-compile-lift))))
                       (declare (not safe))
                       (cons _expr102775_ __tmp111793)))))
                 (_generate-syntax-quote102596_
                  (lambda (_id102772_ _marks102773_)
                    (let ((__tmp111794
                           (let ((__tmp111795
                                  (let ((__tmp111799
                                         (let ((__tmp111800
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _id102772_ '()))))
                                           (declare (not safe))
                                           (cons 'quote __tmp111800)))
                                        (__tmp111796
                                         (let ((__tmp111797
                                                (let ((__tmp111798
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _marks102773_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '(gx#current-expander-context)
                                                        __tmp111798))))
                                           (declare (not safe))
                                           (cons '#f __tmp111797))))
                                    (declare (not safe))
                                    (cons __tmp111799 __tmp111796))))
                             (declare (not safe))
                             (cons 'gx#syntax-quote::t __tmp111795))))
                      (declare (not safe))
                      (cons '##structure __tmp111794))))
                 (_generate-simple102597_
                  (lambda (_stxq102767_)
                    (let ((_gid102769_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_qid102770_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _stxq102767_))))
                      (let ((__tmp111801
                             (let ((__tmp111802
                                    (let ((__tmp111803
                                           (let ((__tmp111804
                                                  (let ()
                                                    (declare (not safe))
                                                    (_generate-syntax-quote102596_
                                                     _qid102770_
                                                     ''()))))
                                             (declare (not safe))
                                             (cons __tmp111804 '()))))
                                      (declare (not safe))
                                      (cons _gid102769_ __tmp111803))))
                               (declare (not safe))
                               (cons 'define __tmp111802))))
                        (declare (not safe))
                        (_add-lift!102595_ __tmp111801))
                      (let ((__tmp111805 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (hash-put! __tmp111805 _stxq102767_ _gid102769_))
                      _gid102769_)))
                 (_generate-serialized102598_
                  (lambda (_stxq102757_ _marks102758_)
                    (let* ((_mark-refs102760_
                            (map _generate-mark102599_ _marks102758_))
                           (_gid102762_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_qid102764_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _stxq102757_))))
                      (let ((__tmp111806
                             (let ((__tmp111807
                                    (let ((__tmp111808
                                           (let ((__tmp111809
                                                  (let ((__tmp111810
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _mark-refs102760_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-syntax-quote102596_
                                                     _qid102764_
                                                     __tmp111810))))
                                             (declare (not safe))
                                             (cons __tmp111809 '()))))
                                      (declare (not safe))
                                      (cons _gid102762_ __tmp111808))))
                               (declare (not safe))
                               (cons 'define __tmp111807))))
                        (declare (not safe))
                        (_add-lift!102595_ __tmp111806))
                      (let ((__tmp111811 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (hash-put! __tmp111811 _stxq102757_ _gid102762_))
                      _gid102762_)))
                 (_generate-mark102599_
                  (lambda (_mark102743_)
                    (let ((_$e102745_
                           (let ((__tmp111812 (gxc#current-compile-marks)))
                             (declare (not safe))
                             (hash-get __tmp111812 _mark102743_))))
                      (if _$e102745_
                          (values _$e102745_)
                          (let* ((_gid102748_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_repr102750_
                                  (let ()
                                    (declare (not safe))
                                    (_serialize-mark102600_ _mark102743_)))
                                 (_ctx102752_
                                  (let ((__tmp111813
                                         (##structure-ref
                                          _mark102743_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp111813)))
                                 (_ctx-ref102754_
                                  (if (let ((__tmp111814
                                             (gx#current-expander-context)))
                                        (declare (not safe))
                                        (eq? _ctx102752_ __tmp111814))
                                      '(gx#current-expander-context)
                                      (let ((__tmp111815
                                             (let ((__tmp111816
                                                    (let ((__tmp111817
                                                           (let ((__tmp111818
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_context-ref102601_ _ctx102752_))))
                     (declare (not safe))
                     (cons __tmp111818 '()))))
              (declare (not safe))
              (cons 'quote __tmp111817))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp111816 '()))))
                                        (declare (not safe))
                                        (cons 'gx#import-module
                                              __tmp111815)))))
                            (let ((__tmp111819 (gxc#current-compile-marks)))
                              (declare (not safe))
                              (hash-put! __tmp111819 _mark102743_ _gid102748_))
                            (let ((__tmp111820
                                   (let ((__tmp111821
                                          (let ((__tmp111822
                                                 (let ((__tmp111823
                                                        (let ((__tmp111824
                                                               (let ((__tmp111826
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp111827
                                     (let ()
                                       (declare (not safe))
                                       (cons _repr102750_ '()))))
                                (declare (not safe))
                                (cons 'quote __tmp111827)))
                             (__tmp111825
                              (let ()
                                (declare (not safe))
                                (cons _ctx-ref102754_ '()))))
                         (declare (not safe))
                         (cons __tmp111826 __tmp111825))))
                  (declare (not safe))
                  (cons 'gx#core-deserialize-mark __tmp111824))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp111823 '()))))
                                            (declare (not safe))
                                            (cons _gid102748_ __tmp111822))))
                                     (declare (not safe))
                                     (cons 'define __tmp111821))))
                              (declare (not safe))
                              (_add-lift!102595_ __tmp111820))
                            _gid102748_)))))
                 (_serialize-mark102600_
                  (lambda (_mark102690_)
                    (letrec ((_quote-e102692_
                              (lambda (_sym102741_)
                                (if (interned-symbol? _sym102741_)
                                    _sym102741_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _sym102741_))))))
                      (let* ((_mark102693102702_ _mark102690_)
                             (_E102695102706_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _mark102693102702_))))
                             (_K102696102718_
                              (lambda (_trace102709_
                                       _phi102710_
                                       _ctx102711_
                                       _subst102712_)
                                (let* ((_subs102714_
                                        (if _subst102712_
                                            (let ()
                                              (declare (not safe))
                                              (hash->list _subst102712_))
                                            '()))
                                       (__tmp111828
                                        (map (lambda (_pair102716_)
                                               (let ((__tmp111831
                                                      (let ((__tmp111832
                                                             (car _pair102716_)))
                                                        (declare (not safe))
                                                        (_quote-e102692_
                                                         __tmp111832)))
                                                     (__tmp111829
                                                      (let ((__tmp111830
                                                             (cdr _pair102716_)))
                                                        (declare (not safe))
                                                        (_quote-e102692_
                                                         __tmp111830))))
                                                 (declare (not safe))
                                                 (cons __tmp111831
                                                       __tmp111829)))
                                             _subs102714_)))
                                  (declare (not safe))
                                  (cons _phi102710_ __tmp111828)))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _mark102693102702_
                               'gx#expander-mark::t))
                            (let* ((_e102697102721_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark102693102702_
                                       '1
                                       gx#expander-mark::t
                                       '#f)))
                                   (_subst102724_ _e102697102721_)
                                   (_e102698102726_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark102693102702_
                                       '2
                                       gx#expander-mark::t
                                       '#f)))
                                   (_ctx102729_ _e102698102726_)
                                   (_e102699102731_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark102693102702_
                                       '3
                                       gx#expander-mark::t
                                       '#f)))
                                   (_phi102734_ _e102699102731_)
                                   (_e102700102736_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark102693102702_
                                       '4
                                       gx#expander-mark::t
                                       '#f)))
                                   (_trace102739_ _e102700102736_))
                              (declare (not safe))
                              (_K102696102718_
                               _trace102739_
                               _phi102734_
                               _ctx102729_
                               _subst102724_))
                            (let ()
                              (declare (not safe))
                              (_E102695102706_)))))))
                 (_context-ref102601_
                  (lambda (_ctx102677_)
                    (if (let ((__tmp111833
                               (##structure-ref
                                _ctx102677_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp111833
                           'gx#module-context::t))
                        (let ((_ctx-ref102679_
                               (let ()
                                 (declare (not safe))
                                 (_context-ref-nested102603_ _ctx102677_)))
                              (_ctx-origin102680_
                               (let ()
                                 (declare (not safe))
                                 (_context-ref-origin102602_ _ctx102677_)))
                              (_origin102681_
                               (let ((__tmp111834
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (_context-ref-origin102602_ __tmp111834))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _origin102681_ _ctx-origin102680_))
                              (let ((_ref102683_
                                     (let ((__tmp111835
                                            (gx#current-expander-context)))
                                       (declare (not safe))
                                       (_context-ref-nested102603_
                                        __tmp111835))))
                                (let _lp102685_ ((_ref102687_
                                                  (cdr _ref102683_))
                                                 (_ctx-ref102688_
                                                  (cdr _ctx-ref102679_)))
                                  (if (and (let ()
                                             (declare (not safe))
                                             (pair? _ref102687_))
                                           (let ((__tmp111837
                                                  (car _ref102687_))
                                                 (__tmp111836
                                                  (car _ctx-ref102688_)))
                                             (declare (not safe))
                                             (eq? __tmp111837 __tmp111836)))
                                      (let ((__tmp111839 (cdr _ref102687_))
                                            (__tmp111838
                                             (cdr _ctx-ref102688_)))
                                        (declare (not safe))
                                        (_lp102685_ __tmp111839 __tmp111838))
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f _ctx-ref102688_)))))
                              _ctx-ref102679_))
                        (let ((__tmp111840
                               (##structure-ref
                                _ctx102677_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp111840)))))
                 (_context-ref-origin102602_
                  (lambda (_ctx102669_)
                    (let _lp102671_ ((_ctx102673_ _ctx102669_))
                      (let ((_super102675_
                             (##structure-ref
                              _ctx102673_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super102675_
                               'gx#module-context::t))
                            (let ()
                              (declare (not safe))
                              (_lp102671_ _super102675_))
                            _ctx102673_)))))
                 (_context-ref-nested102603_
                  (lambda (_ctx102660_)
                    (let _lp102662_ ((_ctx102664_ _ctx102660_) (_r102665_ '()))
                      (let ((_super102667_
                             (##structure-ref
                              _ctx102664_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super102667_
                               'gx#module-context::t))
                            (let ((__tmp111841
                                   (let ((__tmp111842
                                          (car (##structure-ref
                                                _ctx102664_
                                                '7
                                                gx#module-context::t
                                                '#f))))
                                     (declare (not safe))
                                     (cons __tmp111842 _r102665_))))
                              (declare (not safe))
                              (_lp102662_ _super102667_ __tmp111841))
                            (let ((__tmp111843
                                   (let ((__tmp111844
                                          (##structure-ref
                                           _ctx102664_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (make-symbol__1 '":" __tmp111844))))
                              (declare (not safe))
                              (cons __tmp111843 _r102665_))))))))
          (let* ((_g102605102618_
                  (lambda (_g102606102615_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g102606102615_))))
                 (_g102604102657_
                  (lambda (_g102606102621_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g102606102621_))
                        (let ((_e102608102623_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g102606102621_))))
                          (let ((_hd102609102626_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e102608102623_)))
                                (_tl102610102628_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e102608102623_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl102610102628_))
                                (let ((_e102611102631_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl102610102628_))))
                                  (let ((_hd102612102634_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e102611102631_)))
                                        (_tl102613102636_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e102611102631_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl102613102636_))
                                        ((lambda (_L102639_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _L102639_))
                                               (let ((_$e102652_
                                                      (let ((__tmp111845
                                                             (gxc#current-compile-identifiers)))
                                                        (declare (not safe))
                                                        (hash-get
                                                         __tmp111845
                                                         _L102639_))))
                                                 (if _$e102652_
                                                     (values _$e102652_)
                                                     (let ((_marks102655_
                                                            (##direct-structure-ref
                                                             _L102639_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (null? _marks102655_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-simple102597_
                                                              _L102639_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-serialized102598_
                                                              _L102639_
                                                              _marks102655_))))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _L102639_))))
                                         _hd102612102634_)
                                        (let ()
                                          (declare (not safe))
                                          (_g102605102618_ _g102606102621_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g102605102618_ _g102606102621_)))))
                        (let ()
                          (declare (not safe))
                          (_g102605102618_ _g102606102621_))))))
            (declare (not safe))
            (_g102604102657_ _stx102593_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_self102524_ _stx102525_)
        (let* ((_g102527102544_
                (lambda (_g102528102541_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102528102541_))))
               (_g102526102589_
                (lambda (_g102528102547_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102528102547_))
                      (let ((_e102531102549_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102528102547_))))
                        (let ((_hd102532102552_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102531102549_)))
                              (_tl102533102554_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102531102549_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102533102554_))
                              (let ((_e102534102557_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102533102554_))))
                                (let ((_hd102535102560_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102534102557_)))
                                      (_tl102536102562_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102534102557_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl102536102562_))
                                      (let ((_e102537102565_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl102536102562_))))
                                        (let ((_hd102538102568_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e102537102565_)))
                                              (_tl102539102570_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e102537102565_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl102539102570_))
                                              ((lambda (_L102573_ _L102574_)
                                                 (let ((__tmp111846
                                                        (let ((__tmp111849
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _L102574_)))
                      (__tmp111847
                       (let ((__tmp111848
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1 _self102524_ _L102573_))))
                         (declare (not safe))
                         (cons __tmp111848 '()))))
                  (declare (not safe))
                  (cons __tmp111849 __tmp111847))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'define __tmp111846)))
                                               _hd102538102568_
                                               _hd102535102560_)
                                              (let ()
                                                (declare (not safe))
                                                (_g102527102544_
                                                 _g102528102547_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g102527102544_ _g102528102547_)))))
                              (let ()
                                (declare (not safe))
                                (_g102527102544_ _g102528102547_)))))
                      (let ()
                        (declare (not safe))
                        (_g102527102544_ _g102528102547_))))))
          (declare (not safe))
          (_g102526102589_ _stx102525_))))
    (define gxc#generate-meta-begin%
      (lambda (_self102473_ _stx102474_)
        (let* ((_g102476102486_
                (lambda (_g102477102483_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102477102483_))))
               (_g102475102521_
                (lambda (_g102477102489_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102477102489_))
                      (let ((_e102479102491_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102477102489_))))
                        (let ((_hd102480102494_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102479102491_)))
                              (_tl102481102496_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102479102491_))))
                          ((lambda (_L102499_)
                             (let* ((_c-body102513_
                                     (map (lambda (_g102508102510_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self102473_
                                               _g102508102510_)))
                                          _L102499_))
                                    (_c-body102518_
                                     (filter (lambda (_$obj102515_)
                                               (let ((__tmp111850
                                                      (let ()
                                                        (declare (not safe))
                                                        (eq? _$obj102515_
                                                             '#!void))))
                                                 (declare (not safe))
                                                 (not __tmp111850)))
                                             _c-body102513_)))
                               (let ()
                                 (declare (not safe))
                                 (cons '%#begin _c-body102518_))))
                           _tl102481102496_)))
                      (let ()
                        (declare (not safe))
                        (_g102476102486_ _g102477102489_))))))
          (declare (not safe))
          (_g102475102521_ _stx102474_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_self102381_ _stx102382_)
        (let* ((_g102384102394_
                (lambda (_g102385102391_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102385102391_))))
               (_g102383102470_
                (lambda (_g102385102397_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102385102397_))
                      (let ((_e102387102399_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102385102397_))))
                        (let ((_hd102388102402_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102387102399_)))
                              (_tl102389102404_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102387102399_))))
                          ((lambda (_L102407_)
                             (let* ((_phi102417_
                                     (let ((__tmp111851
                                            (gx#current-expander-phi)))
                                       (declare (not safe))
                                       (fx+ __tmp111851 '1)))
                                    (_block102419_
                                     (let ((__tmp111852
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _self102381_
                                               'state))))
                                       (declare (not safe))
                                       (gxc#meta-state-begin-phi!
                                        __tmp111852
                                        _phi102417_)))
                                    (_compiled102422_
                                     (let ((__tmp111853
                                            (lambda ()
                                              (let ((__tmp111855
                                                     (let ((__tmp111856
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))))
                                                       (declare (not safe))
                                                       (cons __tmp111856
                                                             _L102407_)))
                                                    (__tmp111854
                                                     (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _self102381_
                                                        'state))))
                                                (declare (not safe))
                                                (gxc#apply-generate-meta-phi
                                                 __tmp111855
                                                 'state:
                                                 __tmp111854)))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp111853
                                        gx#current-expander-phi
                                        _phi102417_))))
                               (let* ((_g102425102435_
                                       (lambda (_g102426102432_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g102426102432_))))
                                      (_g102424102467_
                                       (lambda (_g102426102438_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _g102426102438_))
                                             (let ((_e102428102440_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _g102426102438_))))
                                               (let ((_hd102429102443_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e102428102440_)))
                                                     (_tl102430102445_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e102428102440_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _hd102429102443_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#begin
                                                            _hd102429102443_))
                                                         ((lambda (_L102448_)
                                                            (let ((_c-body102465_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (filter (lambda (_$obj102462_)
                                     (let ((__tmp111857
                                            (let ()
                                              (declare (not safe))
                                              (eq? _$obj102462_ '#!void))))
                                       (declare (not safe))
                                       (not __tmp111857)))
                                   _L102448_)))
                      (if _block102419_
                          (let ((__tmp111858
                                 (let ((__tmp111859
                                        (let ((__tmp111860
                                               (let ((__tmp111864
                                                      (let ((__tmp111865
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons 'load-module '()))))
                (declare (not safe))
                (cons '%#ref __tmp111865)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp111861
                                                      (let ((__tmp111862
                                                             (let ((__tmp111863
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _block102419_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp111863))))
                (declare (not safe))
                (cons __tmp111862 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp111864
                                                       __tmp111861))))
                                          (declare (not safe))
                                          (cons '%#call __tmp111860))))
                                   (declare (not safe))
                                   (cons __tmp111859 _c-body102465_))))
                            (declare (not safe))
                            (cons '%#begin-syntax __tmp111858))
                          (if (let ()
                                (declare (not safe))
                                (null? _c-body102465_))
                              '#!void
                              (let ()
                                (declare (not safe))
                                (cons '%#begin-syntax _c-body102465_))))))
                  _tl102430102445_)
                 (let ()
                   (declare (not safe))
                   (_g102425102435_ _g102426102438_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g102425102435_
                                                        _g102426102438_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g102425102435_
                                                _g102426102438_))))))
                                 (declare (not safe))
                                 (_g102424102467_ _compiled102422_))))
                           _tl102389102404_)))
                      (let ()
                        (declare (not safe))
                        (_g102384102394_ _g102385102397_))))))
          (declare (not safe))
          (_g102383102470_ _stx102382_))))
    (define gxc#generate-meta-module%
      (lambda (_self102312_ _stx102313_)
        (let ((__tmp111866
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _self102312_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp111866))
        (let* ((_g102315102329_
                (lambda (_g102316102326_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g102316102326_))))
               (_g102314102378_
                (lambda (_g102316102332_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g102316102332_))
                      (let ((_e102319102334_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g102316102332_))))
                        (let ((_hd102320102337_
                               (let ()
                                 (declare (not safe))
                                 (##car _e102319102334_)))
                              (_tl102321102339_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e102319102334_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl102321102339_))
                              (let ((_e102322102342_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl102321102339_))))
                                (let ((_hd102323102345_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e102322102342_)))
                                      (_tl102324102347_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e102322102342_))))
                                  ((lambda (_L102350_ _L102351_)
                                     (let ((_key102364_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _L102351_))))
                                       (if (interned-symbol? _key102364_)
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _stx102313_
                                              _L102351_
                                              _key102364_)))
                                       (let* ((_ctx102366_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _L102351_)))
                                              (_code102369_
                                               (let ((__tmp111867
                                                      (lambda ()
                                                        (let ((__tmp111868
                                                               (##structure-ref
                                                                _ctx102366_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self102312_
                                                           __tmp111868)))))
                                                 (declare (not safe))
                                                 (call-with-parameters
                                                  __tmp111867
                                                  gx#current-expander-context
                                                  _ctx102366_)))
                                              (_rt102371_
                                               (let ((__tmp111869
                                                      (gxc#current-compile-runtime-sections)))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp111869
                                                  _ctx102366_)))
                                              (_loader102373_
                                               (if _rt102371_
                                                   (let ((__tmp111870
                                                          (let ((__tmp111871
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp111875
                                (let ((__tmp111876
                                       (let ()
                                         (declare (not safe))
                                         (cons 'load-module '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp111876)))
                               (__tmp111872
                                (let ((__tmp111873
                                       (let ((__tmp111874
                                              (let ()
                                                (declare (not safe))
                                                (cons _rt102371_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp111874))))
                                  (declare (not safe))
                                  (cons __tmp111873 '()))))
                           (declare (not safe))
                           (cons __tmp111875 __tmp111872))))
                    (declare (not safe))
                    (cons '%#call __tmp111871))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp111870 '()))
                                                   '()))
                                              (_modid102375_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _L102351_))))
                                         (let ((__tmp111877
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _self102312_
                                                   'state))))
                                           (declare (not safe))
                                           (gxc#meta-state-end-phi!
                                            __tmp111877))
                                         (let ((__tmp111878
                                                (let ((__tmp111879
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _code102369_
                                                               _loader102373_))))
                                                  (declare (not safe))
                                                  (cons _modid102375_
                                                        __tmp111879))))
                                           (declare (not safe))
                                           (cons '%#module __tmp111878)))))
                                   _tl102324102347_
                                   _hd102323102345_)))
                              (let ()
                                (declare (not safe))
                                (_g102315102329_ _g102316102332_)))))
                      (let ()
                        (declare (not safe))
                        (_g102315102329_ _g102316102332_))))))
          (declare (not safe))
          (_g102314102378_ _stx102313_))))
    (define gxc#generate-meta-import-path
      (lambda (_ctx102302_ _context-chain102303_)
        (let _lp102305_ ((_ctx102307_ _ctx102302_) (_path102308_ '()))
          (let ((_super102310_
                 (##structure-ref _ctx102307_ '3 gx#phi-context::t '#f)))
            (if (memq _super102310_ _context-chain102303_)
                (let ((__tmp111880
                       (let ((__tmp111881
                              (car (##structure-ref
                                    _ctx102307_
                                    '7
                                    gx#module-context::t
                                    '#f))))
                         (declare (not safe))
                         (cons __tmp111881 _path102308_))))
                  (declare (not safe))
                  (cons '#f __tmp111880))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _super102310_
                       'gx#module-context::t))
                    (let ((__tmp111882
                           (let ((__tmp111883
                                  (car (##structure-ref
                                        _ctx102307_
                                        '7
                                        gx#module-context::t
                                        '#f))))
                             (declare (not safe))
                             (cons __tmp111883 _path102308_))))
                      (declare (not safe))
                      (_lp102305_ _super102310_ __tmp111882))
                    (let ((__tmp111884
                           (let ((__tmp111885
                                  (##structure-ref
                                   _ctx102307_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                             (declare (not safe))
                             (make-symbol__1 '":" __tmp111885))))
                      (declare (not safe))
                      (cons __tmp111884 _path102308_))))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _lp102297_ ((_ctx102299_ (gx#current-expander-context))
                         (_r102300_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _ctx102299_ 'gx#module-context::t))
              (let ((__tmp111887
                     (##structure-ref _ctx102299_ '3 gx#phi-context::t '#f))
                    (__tmp111886
                     (let ()
                       (declare (not safe))
                       (cons _ctx102299_ _r102300_))))
                (declare (not safe))
                (_lp102297_ __tmp111887 __tmp111886))
              _r102300_))))
    (define gxc#generate-meta-import%
      (lambda (_self102066_ _stx102067_)
        (letrec* ((_context-chain102069_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_make-import-spec102070_
                   (lambda (_in102233_)
                     (let* ((_in102234102246_ _in102233_)
                            (_E102236102250_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _in102234102246_))))
                            (_K102237102260_
                             (lambda (_phi102253_
                                      _name102254_
                                      _src-name102255_
                                      _src-phi102256_
                                      _src-key102257_
                                      _src-ctx102258_)
                               (let ((__tmp111888
                                      (let ((__tmp111892
                                             (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _name102254_)))
                                            (__tmp111889
                                             (let ((__tmp111890
                                                    (let ((__tmp111891
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-identifier-key
                                                              _src-name102255_))))
                                                      (declare (not safe))
                                                      (cons __tmp111891 '()))))
                                               (declare (not safe))
                                               (cons _src-phi102256_
                                                     __tmp111890))))
                                        (declare (not safe))
                                        (cons __tmp111892 __tmp111889))))
                                 (declare (not safe))
                                 (cons _phi102253_ __tmp111888)))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _in102234102246_
                              'gx#module-import::t))
                           (let ((_e102238102263_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _in102234102246_
                                     '1
                                     gx#module-import::t
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _e102238102263_
                                    'gx#module-export::t))
                                 (let* ((_e102241102266_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e102238102263_
                                            '1
                                            gx#module-export::t
                                            '#f)))
                                        (_src-ctx102269_ _e102241102266_)
                                        (_e102242102271_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e102238102263_
                                            '2
                                            gx#module-export::t
                                            '#f)))
                                        (_src-key102274_ _e102242102271_)
                                        (_e102243102276_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e102238102263_
                                            '3
                                            gx#module-export::t
                                            '#f)))
                                        (_src-phi102279_ _e102243102276_)
                                        (_e102244102281_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e102238102263_
                                            '4
                                            gx#module-export::t
                                            '#f)))
                                        (_src-name102284_ _e102244102281_)
                                        (_e102239102286_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _in102234102246_
                                            '2
                                            gx#module-import::t
                                            '#f)))
                                        (_name102289_ _e102239102286_)
                                        (_e102240102291_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _in102234102246_
                                            '3
                                            gx#module-import::t
                                            '#f)))
                                        (_phi102294_ _e102240102291_))
                                   (declare (not safe))
                                   (_K102237102260_
                                    _phi102294_
                                    _name102289_
                                    _src-name102284_
                                    _src-phi102279_
                                    _src-key102274_
                                    _src-ctx102269_))
                                 (let ()
                                   (declare (not safe))
                                   (_E102236102250_))))
                           (let () (declare (not safe)) (_E102236102250_))))))
                  (_make-import-path102071_
                   (lambda (_ctx102231_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _ctx102231_
                        _context-chain102069_))))
                  (_make-import-spec-in102072_
                   (lambda (_ctx102228_ _in102229_)
                     (let ((__tmp111893
                            (let ((__tmp111895
                                   (let ()
                                     (declare (not safe))
                                     (_make-import-path102071_ _ctx102228_)))
                                  (__tmp111894 (reverse _in102229_)))
                              (declare (not safe))
                              (cons __tmp111895 __tmp111894))))
                       (declare (not safe))
                       (cons 'spec: __tmp111893)))))
          (let ((__tmp111896
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _self102066_ 'state))))
            (declare (not safe))
            (gxc#meta-state-end-phi! __tmp111896))
          (let* ((_g102074102084_
                  (lambda (_g102075102081_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g102075102081_))))
                 (_g102073102225_
                  (lambda (_g102075102087_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g102075102087_))
                        (let ((_e102077102089_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g102075102087_))))
                          (let ((_hd102078102092_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e102077102089_)))
                                (_tl102079102094_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e102077102089_))))
                            ((lambda (_L102097_)
                               (let _lp102108_ ((_rest102110_ _L102097_)
                                                (_current-src102111_ '#f)
                                                (_current-in102112_ '())
                                                (_r102113_ '()))
                                 (let* ((_rest102114102122_ _rest102110_)
                                        (_else102116102132_
                                         (lambda ()
                                           (let* ((_r102130_
                                                   (if _current-src102111_
                                                       (let ((__tmp111897
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_make-import-spec-in102072_
                         _current-src102111_
                         _current-in102112_))))
                 (declare (not safe))
                 (cons __tmp111897 _r102113_))
               _r102113_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp111898
                                                   (reverse _r102130_)))
                                             (declare (not safe))
                                             (cons '%#import __tmp111898))))
                                        (_K102118102213_
                                         (lambda (_rest102135_ _in102136_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in102136_
                                                  'gx#module-import::t))
                                               (let* ((_in102137102144_
                                                       _in102136_)
                                                      (_E102139102148_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in102137102144_))))
              (_K102140102153_
               (lambda (_src-ctx102151_)
                 (if (let ()
                       (declare (not safe))
                       (eq? _current-src102111_ _src-ctx102151_))
                     (let ((__tmp111899
                            (let ((__tmp111900
                                   (let ()
                                     (declare (not safe))
                                     (_make-import-spec102070_ _in102136_))))
                              (declare (not safe))
                              (cons __tmp111900 _current-in102112_))))
                       (declare (not safe))
                       (_lp102108_
                        _rest102135_
                        _current-src102111_
                        __tmp111899
                        _r102113_))
                     (if _current-src102111_
                         (let ((__tmp111903
                                (let ((__tmp111904
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec102070_
                                          _in102136_))))
                                  (declare (not safe))
                                  (cons __tmp111904 '())))
                               (__tmp111901
                                (let ((__tmp111902
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec-in102072_
                                          _current-src102111_
                                          _current-in102112_))))
                                  (declare (not safe))
                                  (cons __tmp111902 _r102113_))))
                           (declare (not safe))
                           (_lp102108_
                            _rest102135_
                            _src-ctx102151_
                            __tmp111903
                            __tmp111901))
                         (let ((__tmp111905
                                (let ((__tmp111906
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec102070_
                                          _in102136_))))
                                  (declare (not safe))
                                  (cons __tmp111906 '()))))
                           (declare (not safe))
                           (_lp102108_
                            _rest102135_
                            _src-ctx102151_
                            __tmp111905
                            _r102113_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _in102137102144_
                                                        'gx#module-import::t))
                                                     (let ((_e102141102156_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _in102137102144_
                                                               '1
                                                               gx#module-import::t
                                                               '#f))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              _e102141102156_
                                                              'gx#module-export::t))
                                                           (let* ((_e102142102159_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _e102141102156_
                              '1
                              gx#module-export::t
                              '#f)))
                          (_src-ctx102162_ _e102142102159_))
                     (declare (not safe))
                     (_K102140102153_ _src-ctx102162_))
                   (let () (declare (not safe)) (_E102139102148_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_E102139102148_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _in102136_
                                                      'gx#import-set::t))
                                                   (let* ((_phi102164_
                                                           (##direct-structure-ref
                                                            _in102136_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src102166_
                                                           (##direct-structure-ref
                                                            _in102136_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in102206_
                                                           (let* ((_g102167102176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (_make-import-path102071_ _src102166_)))
                          (_E102170102180_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _g102167102176_)))))
                     (let ((_K102172102196_
                            (lambda (_path102194_) _path102194_))
                           (_K102171102186_
                            (lambda (_path102184_)
                              (let ()
                                (declare (not safe))
                                (cons 'in: _path102184_)))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _g102167102176_))
                           (let ((_tl102174102201_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _g102167102176_)))
                                 (_hd102173102199_
                                  (let ()
                                    (declare (not safe))
                                    (##car _g102167102176_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl102174102201_))
                                 (let ((_path102204_ _hd102173102199_))
                                   (declare (not safe))
                                   (_K102172102196_ _path102204_))
                                 (let ((_path102189_ _g102167102176_))
                                   (declare (not safe))
                                   (_K102171102186_ _path102189_))))
                           (let ((_path102189_ _g102167102176_))
                             (declare (not safe))
                             (_K102171102186_ _path102189_))))))
                  (_r102208_
                   (if _current-src102111_
                       (let ((__tmp111907
                              (let ()
                                (declare (not safe))
                                (_make-import-spec-in102072_
                                 _current-src102111_
                                 _current-in102112_))))
                         (declare (not safe))
                         (cons __tmp111907 _r102113_))
                       _r102113_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp111908
                                                            (let ((__tmp111909
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _phi102164_))
                               _src-in102206_
                               (let ((__tmp111910
                                      (let ((__tmp111911
                                             (let ()
                                               (declare (not safe))
                                               (cons _src-in102206_ '()))))
                                        (declare (not safe))
                                        (cons _phi102164_ __tmp111911))))
                                 (declare (not safe))
                                 (cons 'phi: __tmp111910)))))
                      (declare (not safe))
                      (cons __tmp111909 _r102208_))))
               (declare (not safe))
               (_lp102108_ _rest102135_ '#f '() __tmp111908)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _in102136_
                                                          'gx#module-context::t))
                                                       (let* ((_r102211_
                                                               (if _current-src102111_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp111912
                                  (let ()
                                    (declare (not safe))
                                    (_make-import-spec-in102072_
                                     _current-src102111_
                                     _current-in102112_))))
                             (declare (not safe))
                             (cons __tmp111912 _r102113_))
                           _r102113_))
                      (__tmp111913
                       (let ((__tmp111914
                              (let ((__tmp111915
                                     (let ()
                                       (declare (not safe))
                                       (_make-import-path102071_ _in102136_))))
                                (declare (not safe))
                                (cons 'runtime: __tmp111915))))
                         (declare (not safe))
                         (cons __tmp111914 _r102211_))))
                 (declare (not safe))
                 (_lp102108_ _rest102135_ '#f '() __tmp111913))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest102114102122_))
                                       (let ((_hd102119102216_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest102114102122_)))
                                             (_tl102120102218_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest102114102122_))))
                                         (let* ((_in102221_ _hd102119102216_)
                                                (_rest102223_
                                                 _tl102120102218_))
                                           (declare (not safe))
                                           (_K102118102213_
                                            _rest102223_
                                            _in102221_)))
                                       (let ()
                                         (declare (not safe))
                                         (_else102116102132_))))))
                             _tl102079102094_)))
                        (let ()
                          (declare (not safe))
                          (_g102074102084_ _g102075102087_))))))
            (declare (not safe))
            (_g102073102225_ _stx102067_)))))
    (define gxc#generate-meta-export%
      (lambda (_self101876_ _stx101877_)
        (letrec* ((_context-chain101879_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_make-import-path101880_
                   (lambda (_ctx102064_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _ctx102064_
                        _context-chain101879_)))))
          (let* ((_g101882101892_
                  (lambda (_g101883101889_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g101883101889_))))
                 (_g101881102061_
                  (lambda (_g101883101895_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g101883101895_))
                        (let ((_e101885101897_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g101883101895_))))
                          (let ((_hd101886101900_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e101885101897_)))
                                (_tl101887101902_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e101885101897_))))
                            ((lambda (_L101905_)
                               (let _lp101916_ ((_rest101918_ _L101905_)
                                                (_r101919_ '()))
                                 (let* ((_rest101920101928_ _rest101918_)
                                        (_else101922101936_
                                         (lambda ()
                                           (let ((__tmp111916
                                                  (reverse _r101919_)))
                                             (declare (not safe))
                                             (cons '%#export __tmp111916))))
                                        (_K101924102049_
                                         (lambda (_rest101939_ _out101940_)
                                           (let* ((_out101941101954_
                                                   _out101940_)
                                                  (_E101944101958_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _out101941101954_)))))
                                             (let ((_K101948102028_
                                                    (lambda (_name102024_
                                                             _phi102025_
                                                             _key102026_)
                                                      (let ((__tmp111917
                                                             (let ((__tmp111918
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp111919
                                   (let ((__tmp111920
                                          (let ((__tmp111923
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-identifier-key
                                                    _key102026_)))
                                                (__tmp111921
                                                 (let ((__tmp111922
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#generate-runtime-identifier-key
                                                           _name102024_))))
                                                   (declare (not safe))
                                                   (cons __tmp111922 '()))))
                                            (declare (not safe))
                                            (cons __tmp111923 __tmp111921))))
                                     (declare (not safe))
                                     (cons _phi102025_ __tmp111920))))
                              (declare (not safe))
                              (cons 'spec: __tmp111919))))
                       (declare (not safe))
                       (cons __tmp111918 _r101919_))))
                (declare (not safe))
                (_lp101916_ _rest101939_ __tmp111917))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K101945102008_
                                                    (lambda (_phi101962_
                                                             _src101963_)
                                                      (let* ((_out102003_
                                                              (if _src101963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp111924
                                 (let ((__tmp111925
                                        (let* ((_g101964101973_
                                                (let ()
                                                  (declare (not safe))
                                                  (_make-import-path101880_
                                                   _src101963_)))
                                               (_E101967101977_
                                                (lambda ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"No clause matching"
                                                           _g101964101973_)))))
                                          (let ((_K101969101993_
                                                 (lambda (_path101991_)
                                                   _path101991_))
                                                (_K101968101983_
                                                 (lambda (_path101981_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'in:
                                                           _path101981_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _g101964101973_))
                                                (let ((_tl101971101998_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _g101964101973_)))
                                                      (_hd101970101996_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _g101964101973_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##null? _tl101971101998_))
                                                      (let ((_path102001_
                                                             _hd101970101996_))
                                                        (declare (not safe))
                                                        (_K101969101993_
                                                         _path102001_))
                                                      (let ((_path101986_
                                                             _g101964101973_))
                                                        (declare (not safe))
                                                        (_K101968101983_
                                                         _path101986_))))
                                                (let ((_path101986_
                                                       _g101964101973_))
                                                  (declare (not safe))
                                                  (_K101968101983_
                                                   _path101986_)))))))
                                   (declare (not safe))
                                   (cons __tmp111925 '()))))
                            (declare (not safe))
                            (cons 'import: __tmp111924))
                          '#t))
                     (_out102005_
                      (if (let () (declare (not safe)) (fxzero? _phi101962_))
                          _out102003_
                          (let ((__tmp111926
                                 (let ((__tmp111927
                                        (let ()
                                          (declare (not safe))
                                          (cons _out102003_ '()))))
                                   (declare (not safe))
                                   (cons _phi101962_ __tmp111927))))
                            (declare (not safe))
                            (cons 'phi: __tmp111926)))))
                (let ((__tmp111928
                       (let ()
                         (declare (not safe))
                         (cons _out102005_ _r101919_))))
                  (declare (not safe))
                  (_lp101916_ _rest101939_ __tmp111928))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_try-match101943102021_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _out101941101954_
                                                               'gx#export-set::t))
                                                            (let* ((_e101946102011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _out101941101954_
                               '1
                               gx#export-set::t
                               '#f)))
                           (_e101947102016_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _out101941101954_
                               '2
                               gx#export-set::t
                               '#f))))
                      (let ((_src102014_ _e101946102011_)
                            (_phi102019_ _e101947102016_))
                        (let ()
                          (declare (not safe))
                          (_K101945102008_ _phi102019_ _src102014_))))
                    (let () (declare (not safe)) (_E101944101958_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _out101941101954_
                                                        'gx#module-export::t))
                                                     (let* ((_e101949102031_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _out101941101954_
                        '1
                        gx#module-export::t
                        '#f)))
                    (_e101950102034_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out101941101954_
                        '2
                        gx#module-export::t
                        '#f)))
                    (_e101951102039_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out101941101954_
                        '3
                        gx#module-export::t
                        '#f)))
                    (_e101952102044_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out101941101954_
                        '4
                        gx#module-export::t
                        '#f))))
               (let ((_key102037_ _e101950102034_)
                     (_phi102042_ _e101951102039_)
                     (_name102047_ _e101952102044_))
                 (let ()
                   (declare (not safe))
                   (_K101948102028_ _name102047_ _phi102042_ _key102037_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_try-match101943102021_)))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest101920101928_))
                                       (let ((_hd101925102052_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest101920101928_)))
                                             (_tl101926102054_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest101920101928_))))
                                         (let* ((_out102057_ _hd101925102052_)
                                                (_rest102059_
                                                 _tl101926102054_))
                                           (declare (not safe))
                                           (_K101924102049_
                                            _rest102059_
                                            _out102057_)))
                                       (let ()
                                         (declare (not safe))
                                         (_else101922101936_))))))
                             _tl101887101902_)))
                        (let ()
                          (declare (not safe))
                          (_g101882101892_ _g101883101895_))))))
            (declare (not safe))
            (_g101881102061_ _stx101877_)))))
    (define gxc#generate-meta-provide%
      (lambda (_self101837_ _stx101838_)
        (let ((__tmp111929
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _self101837_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp111929))
        (let* ((_g101840101850_
                (lambda (_g101841101847_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101841101847_))))
               (_g101839101873_
                (lambda (_g101841101853_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101841101853_))
                      (let ((_e101843101855_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101841101853_))))
                        (let ((_hd101844101858_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101843101855_)))
                              (_tl101845101860_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101843101855_))))
                          ((lambda (_L101863_)
                             (let ((__tmp111930
                                    (map gxc#generate-runtime-identifier
                                         _L101863_)))
                               (declare (not safe))
                               (cons '%#provide __tmp111930)))
                           _tl101845101860_)))
                      (let ()
                        (declare (not safe))
                        (_g101840101850_ _g101841101853_))))))
          (declare (not safe))
          (_g101839101873_ _stx101838_))))
    (define gxc#generate-meta-extern%
      (lambda (_self101708_ _stx101709_)
        (letrec ((_generate1101711_
                  (lambda (_id101832_ _eid101833_)
                    (let ((_eid101835_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _eid101833_))))
                      (if (interned-symbol? _eid101835_)
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _stx101709_
                             _eid101835_)))
                      (let ((__tmp111932
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-identifier _id101832_)))
                            (__tmp111931
                             (let ()
                               (declare (not safe))
                               (cons _eid101835_ '()))))
                        (declare (not safe))
                        (cons __tmp111932 __tmp111931))))))
          (let* ((_g101713101741_
                  (lambda (_g101714101738_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g101714101738_))))
                 (_g101712101829_
                  (lambda (_g101714101744_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g101714101744_))
                        (let ((_e101717101746_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g101714101744_))))
                          (let ((_hd101718101749_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e101717101746_)))
                                (_tl101719101751_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e101717101746_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl101719101751_))
                                (let ((_g111933_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl101719101751_
                                          '0))))
                                  (begin
                                    (let ((_g111934_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g111933_)
                                                 (##vector-length _g111933_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g111934_ 2)))
                                          (error "Context expects 2 values"
                                                 _g111934_)))
                                    (let ((_target101720101754_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g111933_ 0)))
                                          (_tl101722101756_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g111933_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl101722101756_))
                                          (letrec ((_loop101723101759_
                                                    (lambda (_hd101721101762_
                                                             _eid101727101764_
                                                             _id101728101766_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd101721101762_))
                                                          (let ((_e101724101769_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd101721101762_))))
                    (let ((_lp-hd101725101772_
                           (let ()
                             (declare (not safe))
                             (##car _e101724101769_)))
                          (_lp-tl101726101774_
                           (let ()
                             (declare (not safe))
                             (##cdr _e101724101769_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _lp-hd101725101772_))
                          (let ((_e101731101777_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _lp-hd101725101772_))))
                            (let ((_hd101732101780_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e101731101777_)))
                                  (_tl101733101782_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e101731101777_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl101733101782_))
                                  (let ((_e101734101785_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl101733101782_))))
                                    (let ((_hd101735101788_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e101734101785_)))
                                          (_tl101736101790_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e101734101785_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl101736101790_))
                                          (let ((__tmp111936
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd101735101788_
                                                         _eid101727101764_)))
                                                (__tmp111935
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd101732101780_
                                                         _id101728101766_))))
                                            (declare (not safe))
                                            (_loop101723101759_
                                             _lp-tl101726101774_
                                             __tmp111936
                                             __tmp111935))
                                          (let ()
                                            (declare (not safe))
                                            (_g101713101741_
                                             _g101714101744_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g101713101741_ _g101714101744_)))))
                          (let ()
                            (declare (not safe))
                            (_g101713101741_ _g101714101744_)))))
                  (let ((_eid101729101793_ (reverse _eid101727101764_))
                        (_id101730101795_ (reverse _id101728101766_)))
                    ((lambda (_L101798_ _L101799_)
                       (let ((__tmp111937
                              (map _generate1101711_
                                   (let ((__tmp111938
                                          (lambda (_g101814101817_
                                                   _g101815101819_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g101814101817_
                                                    _g101815101819_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp111938 '() _L101799_))
                                   (let ((__tmp111939
                                          (lambda (_g101821101824_
                                                   _g101822101826_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g101821101824_
                                                    _g101822101826_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp111939 '() _L101798_)))))
                         (declare (not safe))
                         (cons '%#extern __tmp111937)))
                     _eid101729101793_
                     _id101730101795_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_loop101723101759_
                                               _target101720101754_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_g101713101741_
                                             _g101714101744_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g101713101741_ _g101714101744_)))))
                        (let ()
                          (declare (not safe))
                          (_g101713101741_ _g101714101744_))))))
            (declare (not safe))
            (_g101712101829_ _stx101709_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_self101498_ _stx101499_)
        (letrec ((_generate1101501_
                  (lambda (_id101703_)
                    (let ((_eid101705_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _id101703_)))
                          (_ident101706_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _id101703_))))
                      (let ((__tmp111940
                             (let ((__tmp111941
                                    (let ()
                                      (declare (not safe))
                                      (cons _eid101705_ '()))))
                               (declare (not safe))
                               (cons _ident101706_ __tmp111941))))
                        (declare (not safe))
                        (cons '%#define-runtime __tmp111940)))))
                 (_generate*101502_
                  (lambda (_all101671_)
                    (let* ((_all101672101680_ _all101671_)
                           (_else101674101688_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (cons '%#begin _all101671_))))
                           (_K101676101693_
                            (lambda (_one101691_) _one101691_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all101672101680_))
                          (let ((_hd101677101696_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all101672101680_)))
                                (_tl101678101698_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all101672101680_))))
                            (let ((_one101701_ _hd101677101696_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl101678101698_))
                                  (let ()
                                    (declare (not safe))
                                    (_K101676101693_ _one101701_))
                                  (let ()
                                    (declare (not safe))
                                    (_else101674101688_)))))
                          (let ()
                            (declare (not safe))
                            (_else101674101688_)))))))
          (let* ((_g101504101521_
                  (lambda (_g101505101518_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g101505101518_))))
                 (_g101503101668_
                  (lambda (_g101505101524_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g101505101524_))
                        (let ((_e101508101526_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g101505101524_))))
                          (let ((_hd101509101529_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e101508101526_)))
                                (_tl101510101531_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e101508101526_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl101510101531_))
                                (let ((_e101511101534_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl101510101531_))))
                                  (let ((_hd101512101537_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e101511101534_)))
                                        (_tl101513101539_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e101511101534_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl101513101539_))
                                        (let ((_e101514101542_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl101513101539_))))
                                          (let ((_hd101515101545_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e101514101542_)))
                                                (_tl101516101547_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e101514101542_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl101516101547_))
                                                ((lambda (_L101550_ _L101551_)
                                                   (let _lp101567_ ((_rest101569_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L101551_)
                            (_r101570_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((___stx111084111085_
                                                             _rest101569_)
                                                            (_g101575101592_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx111084111085_)))))
               (let ((___kont111086111087_
                      (lambda (_L101655_)
                        (let ()
                          (declare (not safe))
                          (_lp101567_ _L101655_ _r101570_))))
                     (___kont111088111089_
                      (lambda (_L101628_ _L101629_)
                        (let ((__tmp111942
                               (let ((__tmp111943
                                      (let ()
                                        (declare (not safe))
                                        (_generate1101501_ _L101629_))))
                                 (declare (not safe))
                                 (cons __tmp111943 _r101570_))))
                          (declare (not safe))
                          (_lp101567_ _L101628_ __tmp111942))))
                     (___kont111090111091_
                      (lambda (_L101604_)
                        (let ((__tmp111944
                               (let ((__tmp111945
                                      (let ((__tmp111946
                                             (let ()
                                               (declare (not safe))
                                               (_generate1101501_ _L101604_))))
                                        (declare (not safe))
                                        (cons __tmp111946 '()))))
                                 (declare (not safe))
                                 (foldl1 cons __tmp111945 _r101570_))))
                          (declare (not safe))
                          (_generate*101502_ __tmp111944))))
                     (___kont111092111093_
                      (lambda ()
                        (let ((__tmp111947 (reverse _r101570_)))
                          (declare (not safe))
                          (_generate*101502_ __tmp111947)))))
                 (let ((_g101573101615_
                        (lambda ()
                          (let ((_L101604_ ___stx111084111085_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _L101604_))
                                (___kont111090111091_ _L101604_)
                                (___kont111092111093_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? ___stx111084111085_))
                       (let ((_e101578101644_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e ___stx111084111085_))))
                         (let ((_tl101580101649_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e101578101644_)))
                               (_hd101579101647_
                                (let ()
                                  (declare (not safe))
                                  (##car _e101578101644_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _hd101579101647_))
                               (let ((_e101581101652_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd101579101647_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e101581101652_ '#f))
                                     (___kont111086111087_ _tl101580101649_)
                                     (___kont111088111089_
                                      _tl101580101649_
                                      _hd101579101647_)))
                               (___kont111088111089_
                                _tl101580101649_
                                _hd101579101647_))))
                       (let () (declare (not safe)) (_g101573101615_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd101515101545_
                                                 _hd101512101537_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g101504101521_
                                                   _g101505101524_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g101504101521_ _g101505101524_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g101504101521_ _g101505101524_)))))
                        (let ()
                          (declare (not safe))
                          (_g101504101521_ _g101505101524_))))))
            (declare (not safe))
            (_g101503101668_ _stx101499_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_self101395_ _stx101396_)
        (let* ((_g101398101415_
                (lambda (_g101399101412_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101399101412_))))
               (_g101397101495_
                (lambda (_g101399101418_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101399101418_))
                      (let ((_e101402101420_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101399101418_))))
                        (let ((_hd101403101423_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101402101420_)))
                              (_tl101404101425_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101402101420_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101404101425_))
                              (let ((_e101405101428_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101404101425_))))
                                (let ((_hd101406101431_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101405101428_)))
                                      (_tl101407101433_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101405101428_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101407101433_))
                                      (let ((_e101408101436_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101407101433_))))
                                        (let ((_hd101409101439_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101408101436_)))
                                              (_tl101410101441_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101408101436_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101410101441_))
                                              ((lambda (_L101444_ _L101445_)
                                                 (let* ((_eid101460_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _L101445_)))
                                                        (_phi101462_
                                                         (let ((__tmp111948
                                                                (gx#current-expander-phi)))
                                                           (declare (not safe))
                                                           (fx+ __tmp111948
                                                                '1)))
                                                        (_block101464_
                                                         (let ((__tmp111949
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _self101395_ 'state))))
                   (declare (not safe))
                   (gxc#meta-state-begin-phi! __tmp111949 _phi101462_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_g101467101474_
                                                           (lambda (_g101468101471_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _g101468101471_))))
                  (_g101466101492_
                   (lambda (_g101468101477_)
                     ((lambda (_L101479_)
                        (let ()
                          (let ((__tmp111954
                                 (let ()
                                   (declare (not safe))
                                   (slot-ref__0 _self101395_ 'state)))
                                (__tmp111950
                                 (let ((__tmp111953
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0
                                           '#f
                                           '%#define-runtime)))
                                       (__tmp111951
                                        (let ((__tmp111952
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L101444_ '()))))
                                          (declare (not safe))
                                          (cons _L101479_ __tmp111952))))
                                   (declare (not safe))
                                   (cons __tmp111953 __tmp111951))))
                            (declare (not safe))
                            (gxc#meta-state-add-phi!
                             __tmp111954
                             _phi101462_
                             __tmp111950))))
                      _g101468101477_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g101466101492_
                                                      _eid101460_))
                                                   (if _block101464_
                                                       (let ((__tmp111955
                                                              (let ((__tmp111961
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp111962
                                    (let ((__tmp111963
                                           (let ((__tmp111964
                                                  (let ((__tmp111968
                                                         (let ((__tmp111969
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'load-module '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp111969)))
                (__tmp111965
                 (let ((__tmp111966
                        (let ((__tmp111967
                               (let ()
                                 (declare (not safe))
                                 (cons _block101464_ '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp111967))))
                   (declare (not safe))
                   (cons __tmp111966 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp111968
                                                          __tmp111965))))
                                             (declare (not safe))
                                             (cons '%#call __tmp111964))))
                                      (declare (not safe))
                                      (cons __tmp111963 '()))))
                               (declare (not safe))
                               (cons '%#begin-syntax __tmp111962)))
                            (__tmp111956
                             (let ((__tmp111957
                                    (let ((__tmp111958
                                           (let ((__tmp111960
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-identifier
                                                     _L101445_)))
                                                 (__tmp111959
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _eid101460_ '()))))
                                             (declare (not safe))
                                             (cons __tmp111960 __tmp111959))))
                                      (declare (not safe))
                                      (cons '%#define-syntax __tmp111958))))
                               (declare (not safe))
                               (cons __tmp111957 '()))))
                        (declare (not safe))
                        (cons __tmp111961 __tmp111956))))
                 (declare (not safe))
                 (cons '%#begin __tmp111955))
               (let ((__tmp111970
                      (let ((__tmp111972
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-identifier _L101445_)))
                            (__tmp111971
                             (let ()
                               (declare (not safe))
                               (cons _eid101460_ '()))))
                        (declare (not safe))
                        (cons __tmp111972 __tmp111971))))
                 (declare (not safe))
                 (cons '%#define-syntax __tmp111970)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd101409101439_
                                               _hd101406101431_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101398101415_
                                                 _g101399101418_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101398101415_ _g101399101418_)))))
                              (let ()
                                (declare (not safe))
                                (_g101398101415_ _g101399101418_)))))
                      (let ()
                        (declare (not safe))
                        (_g101398101415_ _g101399101418_))))))
          (declare (not safe))
          (_g101397101495_ _stx101396_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_self101327_ _stx101328_)
        (let* ((_g101330101347_
                (lambda (_g101331101344_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101331101344_))))
               (_g101329101392_
                (lambda (_g101331101350_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101331101350_))
                      (let ((_e101334101352_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101331101350_))))
                        (let ((_hd101335101355_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101334101352_)))
                              (_tl101336101357_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101334101352_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101336101357_))
                              (let ((_e101337101360_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101336101357_))))
                                (let ((_hd101338101363_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101337101360_)))
                                      (_tl101339101365_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101337101360_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl101339101365_))
                                      (let ((_e101340101368_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl101339101365_))))
                                        (let ((_hd101341101371_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e101340101368_)))
                                              (_tl101342101373_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e101340101368_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl101342101373_))
                                              ((lambda (_L101376_ _L101377_)
                                                 (let ((__tmp111973
                                                        (let ((__tmp111976
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-identifier _L101377_)))
                      (__tmp111974
                       (let ((__tmp111975
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-identifier _L101376_))))
                         (declare (not safe))
                         (cons __tmp111975 '()))))
                  (declare (not safe))
                  (cons __tmp111976 __tmp111974))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#define-alias
                                                         __tmp111973)))
                                               _hd101341101371_
                                               _hd101338101363_)
                                              (let ()
                                                (declare (not safe))
                                                (_g101330101347_
                                                 _g101331101350_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g101330101347_ _g101331101350_)))))
                              (let ()
                                (declare (not safe))
                                (_g101330101347_ _g101331101350_)))))
                      (let ()
                        (declare (not safe))
                        (_g101330101347_ _g101331101350_))))))
          (declare (not safe))
          (_g101329101392_ _stx101328_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_self101324_ _stx101325_)
        (let ((__tmp111978
               (let () (declare (not safe)) (slot-ref__0 _self101324_ 'state)))
              (__tmp111977 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp111978 __tmp111977 _stx101325_))
        (let ()
          (declare (not safe))
          (gxc#generate-meta-define-values% _self101324_ _stx101325_))))
    (define gxc#generate-meta-phi-expr
      (lambda (_self101321_ _stx101322_)
        (let ((__tmp111980
               (let () (declare (not safe)) (slot-ref__0 _self101321_ 'state)))
              (__tmp111979 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp111980 __tmp111979 _stx101322_))
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp111983 (list))
            (__tmp111981
             (let ((__tmp111982
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp111982 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp111983
         '(src n open blocks)
         __tmp111981
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _$args101318_
        (apply make-instance gxc#meta-state::t _$args101318_)))
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
      (lambda (_self101315_ _ctx101316_)
        (if (let ((__tmp111984
                   (let ()
                     (declare (not safe))
                     (##structure-length _self101315_))))
              (declare (not safe))
              (##fx< '4 __tmp111984))
            (begin
              (let ((__tmp111986
                     (let ((__tmp111987
                            (##structure-ref
                             _ctx101316_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp111987)))
                    (__tmp111985
                     (let ()
                       (declare (not safe))
                       (##structure-type _self101315_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self101315_
                 __tmp111986
                 '1
                 __tmp111985
                 '#f))
              (let ((__tmp111988
                     (let ()
                       (declare (not safe))
                       (##structure-type _self101315_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self101315_
                 '1
                 '2
                 __tmp111988
                 '#f))
              (let ((__tmp111990
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp111989
                     (let ()
                       (declare (not safe))
                       (##structure-type _self101315_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self101315_
                 __tmp111990
                 '3
                 __tmp111989
                 '#f))
              (let ((__tmp111991
                     (let ()
                       (declare (not safe))
                       (##structure-type _self101315_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self101315_
                 '()
                 '4
                 __tmp111991
                 '#f)))
            (let ((__tmp111992
                   (let ()
                     (declare (not safe))
                     (##vector-length _self101315_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self101315_
                     '4
                     __tmp111992)))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp111995 (list))
            (__tmp111993
             (let ((__tmp111994
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp111994 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp111995
         '(ctx phi n code)
         __tmp111993
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _$args101190_
        (apply make-instance gxc#meta-state-block::t _$args101190_)))
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
      (lambda (_state101149_ _phi101150_)
        (let* ((_state101151101159_ _state101149_)
               (_E101153101163_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _state101151101159_))))
               (_K101154101172_
                (lambda (_open101166_ _n101167_ _src101168_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _open101166_ _phi101150_))
                      '#f
                      (let ((_block-ref101170_
                             (string-append
                              _src101168_
                              '"__"
                              (number->string _n101167_))))
                        (##structure-set!
                         _state101149_
                         (let () (declare (not safe)) (fx+ _n101167_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp111996
                               (let ((__tmp111997
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp111997
                                  _phi101150_
                                  _n101167_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _open101166_ _phi101150_ __tmp111996))
                        _block-ref101170_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _state101151101159_
                 'gxc#meta-state::t))
              (let* ((_e101155101175_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state101151101159_
                         '1
                         gxc#meta-state::t
                         '#f)))
                     (_src101178_ _e101155101175_)
                     (_e101156101180_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state101151101159_
                         '2
                         gxc#meta-state::t
                         '#f)))
                     (_n101183_ _e101156101180_)
                     (_e101157101185_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state101151101159_
                         '3
                         gxc#meta-state::t
                         '#f)))
                     (_open101188_ _e101157101185_))
                (declare (not safe))
                (_K101154101172_ _open101188_ _n101183_ _src101178_))
              (let () (declare (not safe)) (_E101153101163_))))))
    (define gxc#meta-state-add-phi!
      (lambda (_state101143_ _phi101144_ _stx101145_)
        (let ((_block101147_
               (let ((__tmp111998
                      (##structure-ref
                       _state101143_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp111998 _phi101144_))))
          (##structure-set!
           _block101147_
           (let ((__tmp111999
                  (##structure-ref
                   _block101147_
                   '4
                   gxc#meta-state-block::t
                   '#f)))
             (declare (not safe))
             (cons _stx101145_ __tmp111999))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_state101138_)
        (##structure-set!
         _state101138_
         (let ((__tmp112002
                (lambda (_g112003_ _block101140_ _r101141_)
                  (let ()
                    (declare (not safe))
                    (cons _block101140_ _r101141_))))
               (__tmp112001
                (##structure-ref _state101138_ '4 gxc#meta-state::t '#f))
               (__tmp112000
                (##structure-ref _state101138_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp112002 __tmp112001 __tmp112000))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state101138_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_state101090_)
        (let () (declare (not safe)) (gxc#meta-state-end-phi! _state101090_))
        (let ((__tmp112005
               (lambda (_block101092_ _r101093_)
                 (let* ((_block101094101103_ _block101092_)
                        (_E101096101107_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _block101094101103_))))
                        (_K101097101115_
                         (lambda (_code101110_
                                  _n101111_
                                  _phi101112_
                                  _ctx101113_)
                           (if (let ()
                                 (declare (not safe))
                                 (null? _code101110_))
                               _r101093_
                               (let ((__tmp112006
                                      (let ((__tmp112007
                                             (let ((__tmp112008
                                                    (let ((__tmp112009
                                                           (let ((__tmp112010
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp112011 (reverse _code101110_)))
                            (declare (not safe))
                            (cons '%#begin __tmp112011))))
                     (declare (not safe))
                     (cons __tmp112010 '()))))
              (declare (not safe))
              (cons _n101111_ __tmp112009))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _phi101112_
                                                     __tmp112008))))
                                        (declare (not safe))
                                        (cons _ctx101113_ __tmp112007))))
                                 (declare (not safe))
                                 (cons __tmp112006 _r101093_))))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _block101094101103_
                          'gxc#meta-state-block::t))
                       (let* ((_e101098101118_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block101094101103_
                                  '1
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_ctx101121_ _e101098101118_)
                              (_e101099101123_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block101094101103_
                                  '2
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_phi101126_ _e101099101123_)
                              (_e101100101128_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block101094101103_
                                  '3
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_n101131_ _e101100101128_)
                              (_e101101101133_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block101094101103_
                                  '4
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_code101136_ _e101101101133_))
                         (declare (not safe))
                         (_K101097101115_
                          _code101136_
                          _n101131_
                          _phi101126_
                          _ctx101121_))
                       (let () (declare (not safe)) (_E101096101107_))))))
              (__tmp112004
               (##structure-ref _state101090_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl1 __tmp112005 '() __tmp112004))))
    (define gxc#collect-expression-refs
      (lambda (_stx101086_)
        (let ((_ht101088_ (let () (declare (not safe)) (make-hash-table-eq))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-expression-refs _stx101086_ 'table: _ht101088_))
          _ht101088_)))
    (define gxc#collect-refs-ref%
      (lambda (_self101029_ _stx101030_)
        (let* ((_g101032101045_
                (lambda (_g101033101042_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g101033101042_))))
               (_g101031101083_
                (lambda (_g101033101048_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g101033101048_))
                      (let ((_e101035101050_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g101033101048_))))
                        (let ((_hd101036101053_
                               (let ()
                                 (declare (not safe))
                                 (##car _e101035101050_)))
                              (_tl101037101055_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e101035101050_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl101037101055_))
                              (let ((_e101038101058_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl101037101055_))))
                                (let ((_hd101039101061_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e101038101058_)))
                                      (_tl101040101063_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e101038101058_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl101040101063_))
                                      ((lambda (_L101066_)
                                         (let* ((_bind101078_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _L101066_)))
                                                (_eid101080_
                                                 (if _bind101078_
                                                     (##structure-ref
                                                      _bind101078_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L101066_)))))
                                           (let ((__tmp112012
                                                  (let ()
                                                    (declare (not safe))
                                                    (slot-ref__0
                                                     _self101029_
                                                     'table))))
                                             (declare (not safe))
                                             (hash-put!
                                              __tmp112012
                                              _eid101080_
                                              _eid101080_))))
                                       _hd101039101061_)
                                      (let ()
                                        (declare (not safe))
                                        (_g101032101045_ _g101033101048_)))))
                              (let ()
                                (declare (not safe))
                                (_g101032101045_ _g101033101048_)))))
                      (let ()
                        (declare (not safe))
                        (_g101032101045_ _g101033101048_))))))
          (declare (not safe))
          (_g101031101083_ _stx101030_))))
    (define gxc#collect-refs-setq%
      (lambda (_self100956_ _stx100957_)
        (let* ((_g100959100976_
                (lambda (_g100960100973_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100960100973_))))
               (_g100958101026_
                (lambda (_g100960100979_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100960100979_))
                      (let ((_e100963100981_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100960100979_))))
                        (let ((_hd100964100984_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100963100981_)))
                              (_tl100965100986_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100963100981_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100965100986_))
                              (let ((_e100966100989_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100965100986_))))
                                (let ((_hd100967100992_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100966100989_)))
                                      (_tl100968100994_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100966100989_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl100968100994_))
                                      (let ((_e100969100997_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl100968100994_))))
                                        (let ((_hd100970101000_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e100969100997_)))
                                              (_tl100971101002_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e100969100997_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl100971101002_))
                                              ((lambda (_L101005_ _L101006_)
                                                 (let* ((_bind101021_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _L101006_)))
                                                        (_eid101023_
                                                         (if _bind101021_
                                                             (##structure-ref
                                                              _bind101021_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _L101006_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp112013
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self100956_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp112013
                                                      _eid101023_
                                                      _eid101023_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self100956_
                                                      _L101005_))))
                                               _hd100970101000_
                                               _hd100967100992_)
                                              (let ()
                                                (declare (not safe))
                                                (_g100959100976_
                                                 _g100960100979_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g100959100976_ _g100960100979_)))))
                              (let ()
                                (declare (not safe))
                                (_g100959100976_ _g100960100979_)))))
                      (let ()
                        (declare (not safe))
                        (_g100959100976_ _g100960100979_))))))
          (declare (not safe))
          (_g100958101026_ _stx100957_))))
    (define gxc#find-runtime-begin%
      (lambda (_self100913_ _stx100914_)
        (let* ((_g100916100926_
                (lambda (_g100917100923_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100917100923_))))
               (_g100915100953_
                (lambda (_g100917100929_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100917100929_))
                      (let ((_e100919100931_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100917100929_))))
                        (let ((_hd100920100934_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100919100931_)))
                              (_tl100921100936_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100919100931_))))
                          ((lambda (_L100939_)
                             (let ((__tmp112014
                                    (lambda (_g100948100950_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self100913_
                                         _g100948100950_)))))
                               (declare (not safe))
                               (ormap1 __tmp112014 _L100939_)))
                           _tl100921100936_)))
                      (let ()
                        (declare (not safe))
                        (_g100916100926_ _g100917100929_))))))
          (declare (not safe))
          (_g100915100953_ _stx100914_))))
    (define gxc#count-values-single% (lambda (_self100910_ _stx100911_) '1))
    (define gxc#count-values-call%
      (lambda (_self100776_ _stx100777_)
        (let* ((___stx111114111115_ _stx100777_)
               (_g100780100809_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx111114111115_)))))
          (let ((___kont111116111117_
                 (lambda (_L100877_ _L100878_)
                   (length (let ((__tmp112015
                                  (lambda (_g100899100902_ _g100900100904_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g100899100902_
                                            _g100900100904_)))))
                             (declare (not safe))
                             (foldr1 __tmp112015 '() _L100877_)))))
                (___kont111120111121_ (lambda () '#f)))
            (let ((___match111159111160_
                   (lambda (_e100784100821_
                            _hd100785100824_
                            _tl100786100826_
                            _e100787100829_
                            _hd100788100832_
                            _tl100789100834_
                            _e100790100837_
                            _hd100791100840_
                            _tl100792100842_
                            _e100793100845_
                            _hd100794100848_
                            _tl100795100850_
                            ___splice111118111119_
                            _target100796100853_
                            _tl100798100855_)
                     (letrec ((_loop100799100858_
                               (lambda (_hd100797100861_ _rand100803100863_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd100797100861_))
                                     (let ((_e100800100866_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd100797100861_))))
                                       (let ((_lp-tl100802100871_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e100800100866_)))
                                             (_lp-hd100801100869_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e100800100866_))))
                                         (let ((__tmp112016
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _lp-hd100801100869_
                                                        _rand100803100863_))))
                                           (declare (not safe))
                                           (_loop100799100858_
                                            _lp-tl100802100871_
                                            __tmp112016))))
                                     (let ((_rand100804100874_
                                            (reverse _rand100803100863_)))
                                       (let ((_L100877_ _rand100804100874_)
                                             (_L100878_ _hd100794100848_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L100878_
                                                'values))
                                             (___kont111116111117_
                                              _L100877_
                                              _L100878_)
                                             (___kont111120111121_))))))))
                       (let ()
                         (declare (not safe))
                         (_loop100799100858_ _target100796100853_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx111114111115_))
                  (let ((_e100784100821_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx111114111115_))))
                    (let ((_tl100786100826_
                           (let ()
                             (declare (not safe))
                             (##cdr _e100784100821_)))
                          (_hd100785100824_
                           (let ()
                             (declare (not safe))
                             (##car _e100784100821_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl100786100826_))
                          (let ((_e100787100829_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl100786100826_))))
                            (let ((_tl100789100834_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e100787100829_)))
                                  (_hd100788100832_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e100787100829_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd100788100832_))
                                  (let ((_e100790100837_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd100788100832_))))
                                    (let ((_tl100792100842_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e100790100837_)))
                                          (_hd100791100840_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e100790100837_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd100791100840_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd100791100840_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl100792100842_))
                                                  (let ((_e100793100845_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl100792100842_))))
                                                    (let ((_tl100795100850_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e100793100845_)))
                                                          (_hd100794100848_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e100793100845_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl100795100850_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl100789100834_))
                      (let ((___splice111118111119_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl100789100834_ '0))))
                        (let ((_tl100798100855_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice111118111119_ '1)))
                              (_target100796100853_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice111118111119_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl100798100855_))
                              (___match111159111160_
                               _e100784100821_
                               _hd100785100824_
                               _tl100786100826_
                               _e100787100829_
                               _hd100788100832_
                               _tl100789100834_
                               _e100790100837_
                               _hd100791100840_
                               _tl100792100842_
                               _e100793100845_
                               _hd100794100848_
                               _tl100795100850_
                               ___splice111118111119_
                               _target100796100853_
                               _tl100798100855_)
                              (___kont111120111121_))))
                      (___kont111120111121_))
                  (___kont111120111121_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont111120111121_))
                                              (___kont111120111121_))
                                          (___kont111120111121_))))
                                  (___kont111120111121_))))
                          (___kont111120111121_))))
                  (___kont111120111121_)))))))
    (define gxc#count-values-if%
      (lambda (_self100679_ _stx100680_)
        (let* ((_g100682100703_
                (lambda (_g100683100700_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g100683100700_))))
               (_g100681100773_
                (lambda (_g100683100706_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g100683100706_))
                      (let ((_e100687100708_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g100683100706_))))
                        (let ((_hd100688100711_
                               (let ()
                                 (declare (not safe))
                                 (##car _e100687100708_)))
                              (_tl100689100713_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e100687100708_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl100689100713_))
                              (let ((_e100690100716_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl100689100713_))))
                                (let ((_hd100691100719_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e100690100716_)))
                                      (_tl100692100721_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e100690100716_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl100692100721_))
                                      (let ((_e100693100724_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl100692100721_))))
                                        (let ((_hd100694100727_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e100693100724_)))
                                              (_tl100695100729_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e100693100724_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl100695100729_))
                                              (let ((_e100696100732_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl100695100729_))))
                                                (let ((_hd100697100735_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e100696100732_)))
                                                      (_tl100698100737_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e100696100732_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl100698100737_))
                                                      ((lambda (_L100740_
                                                                _L100741_
                                                                _L100742_)
                                                         (let ((_c1100759100761_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _self100679_ _L100741_))))
                   (if _c1100759100761_
                       (let* ((_c1100764_ _c1100759100761_)
                              (_c2100765100767_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self100679_ _L100740_))))
                         (if _c2100765100767_
                             (let ((_c2100770_ _c2100765100767_))
                               (if (fx= _c1100764_ _c2100770_) _c1100764_ '#f))
                             '#f))
                       '#f)))
               _hd100697100735_
               _hd100694100727_
               _hd100691100719_)
              (let ()
                (declare (not safe))
                (_g100682100703_ _g100683100706_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g100682100703_
                                                 _g100683100706_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g100682100703_ _g100683100706_)))))
                              (let ()
                                (declare (not safe))
                                (_g100682100703_ _g100683100706_)))))
                      (let ()
                        (declare (not safe))
                        (_g100682100703_ _g100683100706_))))))
          (declare (not safe))
          (_g100681100773_ _stx100680_))))))
