(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1711108656)
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
        (letrec ((_hash-e112858_
                  (lambda (_id112860_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _id112860_))))))
          (let ()
            (declare (not safe))
            (make-hash-table
             'test:
             gx#bound-identifier=?
             'hash:
             _hash-e112858_)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp114216 (list gxc#::void::t))
            (__tmp114214
             (let ((__tmp114215
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114215 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp114216
         '()
         __tmp114214
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _$args112854_
        (apply make-instance gxc#::collect-bindings::t _$args112854_)))
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
      (lambda (_stx112846_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_self112849_
                (let ((__obj114190
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj114190))
               (__tmp114217
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112849_ _stx112846_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114217
           gxc#current-compile-method
           _self112849_))))
    (define gxc#::lift-modules::t
      (let ((__tmp114220 (list gxc#::void::t))
            (__tmp114218
             (let ((__tmp114219
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114219 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp114220
         '(modules)
         __tmp114218
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _$args112843_
        (apply make-instance gxc#::lift-modules::t _$args112843_)))
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
      (lambda (_g114221_ _modules112814112817_ _stx112819_)
        (let ((_modules112822_
               (if (let ()
                     (declare (not safe))
                     (eq? _modules112814112817_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _modules112814112817_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_self112824_
                  (let ((__obj114192
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj114192
                       _modules112822_
                       '1
                       gxc#::lift-modules::t
                       '#f))
                    __obj114192))
                 (__tmp114222
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self112824_ _stx112819_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp114222
             gxc#current-compile-method
             _self112824_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_keys112813112831_ . _args112833_)
        (apply gxc#apply-lift-modules__%
               _keys112813112831_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _keys112813112831_
                  'modules:
                  absent-value))
               _args112833_)))
    (define gxc#apply-lift-modules
      (lambda _args112815112839_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _args112815112839_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp114225 (list))
            (__tmp114223
             (let ((__tmp114224
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114224 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp114225
         '()
         __tmp114223
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _$args112809_
        (apply make-instance gxc#::find-runtime-code::t _$args112809_)))
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
      (lambda (_stx112801_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_self112804_
                (let ((__obj114194
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj114194))
               (__tmp114226
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112804_ _stx112801_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114226
           gxc#current-compile-method
           _self112804_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp114229 (list gxc#::false::t))
            (__tmp114227
             (let ((__tmp114228
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114228 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp114229
         '()
         __tmp114227
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _$args112798_
        (apply make-instance gxc#::find-lambda-expression::t _$args112798_)))
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
      (lambda (_stx112790_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_self112793_
                (let ((__obj114196
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj114196))
               (__tmp114230
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112793_ _stx112790_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114230
           gxc#current-compile-method
           _self112793_))))
    (define gxc#::count-values::t
      (let ((__tmp114233 (list gxc#::false-expression::t))
            (__tmp114231
             (let ((__tmp114232
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114232 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp114233
         '()
         __tmp114231
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _$args112787_
        (apply make-instance gxc#::count-values::t _$args112787_)))
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
      (lambda (_stx112779_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_self112782_
                (let ((__obj114198
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj114198))
               (__tmp114234
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112782_ _stx112779_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114234
           gxc#current-compile-method
           _self112782_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp114235 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp114235
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _$args112776_
        (apply make-instance gxc#::generate-runtime-empty::t _$args112776_)))
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
      (let ((__tmp114238 (list gxc#::generate-runtime-empty::t))
            (__tmp114236
             (let ((__tmp114237
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114237 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp114238
         '()
         __tmp114236
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _$args112772_
        (apply make-instance gxc#::generate-loader::t _$args112772_)))
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
      (lambda (_stx112764_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_self112767_
                (let ((__obj114201
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj114201))
               (__tmp114239
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112767_ _stx112764_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114239
           gxc#current-compile-method
           _self112767_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp114240 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp114240
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _$args112761_
        (apply make-instance gxc#::generate-runtime::t _$args112761_)))
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
      (lambda (_stx112753_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_self112756_
                (let ((__obj114203
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj114203))
               (__tmp114241
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112756_ _stx112753_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114241
           gxc#current-compile-method
           _self112756_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp114244 (list gxc#::generate-runtime::t))
            (__tmp114242
             (let ((__tmp114243
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114243 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp114244
         '()
         __tmp114242
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _$args112750_
        (apply make-instance gxc#::generate-runtime-phi::t _$args112750_)))
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
      (lambda (_stx112742_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_self112745_
                (let ((__obj114205
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj114205))
               (__tmp114245
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _self112745_ _stx112742_)))))
          (declare (not safe))
          (call-with-parameters
           __tmp114245
           gxc#current-compile-method
           _self112745_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp114246 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp114246
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _$args112739_
        (apply make-instance gxc#::collect-expression-refs::t _$args112739_)))
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
      (lambda (_g114247_ _table112710112713_ _stx112715_)
        (let ((_table112718_
               (if (let ()
                     (declare (not safe))
                     (eq? _table112710112713_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _table112710112713_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_self112720_
                  (let ((__obj114207
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj114207
                       _table112718_
                       '1
                       gxc#::collect-expression-refs::t
                       '#f))
                    __obj114207))
                 (__tmp114248
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self112720_ _stx112715_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp114248
             gxc#current-compile-method
             _self112720_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_keys112709112727_ . _args112729_)
        (apply gxc#apply-collect-expression-refs__%
               _keys112709112727_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys112709112727_ 'table: absent-value))
               _args112729_)))
    (define gxc#apply-collect-expression-refs
      (lambda _args112711112735_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _args112711112735_)))
    (define gxc#::generate-meta::t
      (let ((__tmp114251 (list gxc#::void-expression::t))
            (__tmp114249
             (let ((__tmp114250
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114250 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp114251
         '(state)
         __tmp114249
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _$args112705_
        (apply make-instance gxc#::generate-meta::t _$args112705_)))
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
      (lambda (_g114252_ _state112676112679_ _stx112681_)
        (let ((_state112684_
               (if (let ()
                     (declare (not safe))
                     (eq? _state112676112679_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _state112676112679_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_self112686_
                  (let ((__obj114209
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj114209
                       _state112684_
                       '1
                       gxc#::generate-meta::t
                       '#f))
                    __obj114209))
                 (__tmp114253
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self112686_ _stx112681_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp114253
             gxc#current-compile-method
             _self112686_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_keys112675112693_ . _args112695_)
        (apply gxc#apply-generate-meta__%
               _keys112675112693_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys112675112693_ 'state: absent-value))
               _args112695_)))
    (define gxc#apply-generate-meta
      (lambda _args112677112701_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _args112677112701_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp114256 (list))
            (__tmp114254
             (let ((__tmp114255
                    (let () (declare (not safe)) (cons 'final: '#t))))
               (declare (not safe))
               (cons __tmp114255 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp114256
         '(state)
         __tmp114254
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _$args112671_
        (apply make-instance gxc#::generate-meta-phi::t _$args112671_)))
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
      (lambda (_g114257_ _state112642112645_ _stx112647_)
        (let ((_state112650_
               (if (let ()
                     (declare (not safe))
                     (eq? _state112642112645_ absent-value))
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _state112642112645_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_self112652_
                  (let ((__obj114211
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj114211
                       _state112650_
                       '1
                       gxc#::generate-meta-phi::t
                       '#f))
                    __obj114211))
                 (__tmp114258
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _self112652_ _stx112647_)))))
            (declare (not safe))
            (call-with-parameters
             __tmp114258
             gxc#current-compile-method
             _self112652_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_keys112641112659_ . _args112661_)
        (apply gxc#apply-generate-meta-phi__%
               _keys112641112659_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _keys112641112659_ 'state: absent-value))
               _args112661_)))
    (define gxc#apply-generate-meta-phi
      (lambda _args112643112667_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _args112643112667_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_self112570_ _stx112571_)
        (let* ((_g112573112590_
                (lambda (_g112574112587_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112574112587_))))
               (_g112572112637_
                (lambda (_g112574112593_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112574112593_))
                      (let ((_e112579112595_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112574112593_))))
                        (let ((_hd112578112598_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112579112595_)))
                              (_tl112577112600_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112579112595_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112577112600_))
                              (let ((_e112582112603_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112577112600_))))
                                (let ((_hd112581112606_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112582112603_)))
                                      (_tl112580112608_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112582112603_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl112580112608_))
                                      (let ((_e112585112611_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl112580112608_))))
                                        (let ((_hd112584112614_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e112585112611_)))
                                              (_tl112583112616_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e112585112611_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl112583112616_))
                                              ((lambda (_L112619_ _L112620_)
                                                 (let ((__tmp114259
                                                        (lambda (_bind112635_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _bind112635_))
                      (let ()
                        (declare (not safe))
                        (gxc#add-module-binding! _bind112635_ '#f))
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp114259
                                                    _L112620_)))
                                               _hd112584112614_
                                               _hd112581112606_)
                                              (let ()
                                                (declare (not safe))
                                                (_g112573112590_
                                                 _g112574112593_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g112573112590_ _g112574112593_)))))
                              (let ()
                                (declare (not safe))
                                (_g112573112590_ _g112574112593_)))))
                      (let ()
                        (declare (not safe))
                        (_g112573112590_ _g112574112593_))))))
          (declare (not safe))
          (_g112572112637_ _stx112571_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_self112502_ _stx112503_)
        (let* ((_g112505112522_
                (lambda (_g112506112519_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112506112519_))))
               (_g112504112567_
                (lambda (_g112506112525_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112506112525_))
                      (let ((_e112511112527_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112506112525_))))
                        (let ((_hd112510112530_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112511112527_)))
                              (_tl112509112532_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112511112527_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112509112532_))
                              (let ((_e112514112535_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112509112532_))))
                                (let ((_hd112513112538_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112514112535_)))
                                      (_tl112512112540_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112514112535_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl112512112540_))
                                      (let ((_e112517112543_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl112512112540_))))
                                        (let ((_hd112516112546_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e112517112543_)))
                                              (_tl112515112548_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e112517112543_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl112515112548_))
                                              ((lambda (_L112551_ _L112552_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#add-module-binding!
                                                    _L112552_
                                                    '#t)))
                                               _hd112516112546_
                                               _hd112513112538_)
                                              (let ()
                                                (declare (not safe))
                                                (_g112505112522_
                                                 _g112506112525_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g112505112522_ _g112506112525_)))))
                              (let ()
                                (declare (not safe))
                                (_g112505112522_ _g112506112525_)))))
                      (let ()
                        (declare (not safe))
                        (_g112505112522_ _g112506112525_))))))
          (declare (not safe))
          (_g112504112567_ _stx112503_))))
    (define gxc#lift-modules-module%
      (lambda (_self112444_ _stx112445_)
        (let* ((_g112447112461_
                (lambda (_g112448112458_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112448112458_))))
               (_g112446112499_
                (lambda (_g112448112464_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112448112464_))
                      (let ((_e112453112466_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112448112464_))))
                        (let ((_hd112452112469_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112453112466_)))
                              (_tl112451112471_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112453112466_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl112451112471_))
                              (let ((_e112456112474_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl112451112471_))))
                                (let ((_hd112455112477_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e112456112474_)))
                                      (_tl112454112479_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e112456112474_))))
                                  ((lambda (_L112482_ _L112483_)
                                     (let ((_ctx112496_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _L112483_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0 _self112444_ 'modules))
                                        (let ((__tmp114260
                                               (unbox (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _self112444_
                                                         'modules)))))
                                          (declare (not safe))
                                          (cons _ctx112496_ __tmp114260)))
                                       (let ((__tmp114261
                                              (lambda ()
                                                (let ((__tmp114262
                                                       (##structure-ref
                                                        _ctx112496_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _self112444_
                                                   __tmp114262)))))
                                         (declare (not safe))
                                         (call-with-parameters
                                          __tmp114261
                                          gx#current-expander-context
                                          _ctx112496_))))
                                   _tl112454112479_
                                   _hd112455112477_)))
                              (let ()
                                (declare (not safe))
                                (_g112447112461_ _g112448112464_)))))
                      (let ()
                        (declare (not safe))
                        (_g112447112461_ _g112448112464_))))))
          (declare (not safe))
          (_g112446112499_ _stx112445_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_decls112400112402_ (gxc#current-compile-decls)))
          (if _decls112400112402_
              (let ((_decls112405_ _decls112400112402_))
                (let _lp112407_ ((_rest112409_ _decls112405_))
                  (let* ((_rest112410112418_ _rest112409_)
                         (_else112412112426_ (lambda () '#f))
                         (_K112414112432_
                          (lambda (_decls112429_ _decl112430_)
                            (if (let ()
                                  (declare (not safe))
                                  (equal? _decl112430_ '(not safe)))
                                '#t
                                (if (let ()
                                      (declare (not safe))
                                      (equal? _decl112430_ '(safe)))
                                    '#f
                                    (let ()
                                      (declare (not safe))
                                      (_lp112407_ _decls112429_)))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _rest112410112418_))
                        (let ((_hd112415112435_
                               (let ()
                                 (declare (not safe))
                                 (##car _rest112410112418_)))
                              (_tl112416112437_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _rest112410112418_))))
                          (let* ((_decl112440_ _hd112415112435_)
                                 (_decls112442_ _tl112416112437_))
                            (declare (not safe))
                            (_K112414112432_ _decls112442_ _decl112440_)))
                        (let () (declare (not safe)) (_else112412112426_))))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_id112394_ _syntax?112395_)
        (let ((_eid112397_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _id112394_))
                '1
                gx#binding::t
                '#f))
              (_ht112398_
               (##structure-ref
                (gxc#current-compile-symbol-table)
                '2
                gxc#symbol-table::t
                '#f)))
          (if (interned-symbol? _eid112397_)
              '#!void
              (let ((__tmp114263
                     (let ((__tmp114264
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _eid112397_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp114264 _syntax?112395_))))
                (declare (not safe))
                (hash-put! _ht112398_ _eid112397_ __tmp114263))))))
    (define gxc#runtime-identifier=?
      (lambda (_id1112387_ _id2112388_)
        (letrec ((_symbol-e112390_
                  (lambda (_id112392_)
                    (if (let () (declare (not safe)) (symbol? _id112392_))
                        _id112392_
                        (let ()
                          (declare (not safe))
                          (gxc#generate-runtime-binding-id _id112392_))))))
          (let ((__tmp114266
                 (let () (declare (not safe)) (_symbol-e112390_ _id1112387_)))
                (__tmp114265
                 (let () (declare (not safe)) (_symbol-e112390_ _id2112388_))))
            (declare (not safe))
            (eq? __tmp114266 __tmp114265)))))
    (define gxc#generate-runtime-binding-id
      (lambda (_id112365_)
        (let ((_$e112367_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _id112365_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _id112365_))
                   '#f)))
          (if _$e112367_
              ((lambda (_bind112370_)
                 (let ((_eid112372_
                        (##structure-ref _bind112370_ '1 gx#binding::t '#f))
                       (_ht112373_
                        (##structure-ref
                         (gxc#current-compile-symbol-table)
                         '2
                         gxc#symbol-table::t
                         '#f)))
                   (if (interned-symbol? _eid112372_)
                       _eid112372_
                       (let ((_$e112375_
                              (let ()
                                (declare (not safe))
                                (hash-get _ht112373_ _eid112372_))))
                         (if _$e112375_
                             (values _$e112375_)
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _bind112370_
                                    'gx#local-binding::t))
                                 (let ((_gid112378_
                                        (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-gensym-reference__0
                                           _eid112372_))))
                                   (let ()
                                     (declare (not safe))
                                     (hash-put!
                                      _ht112373_
                                      _eid112372_
                                      _gid112378_))
                                   _gid112378_)
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-instance-of?
                                        _bind112370_
                                        'gx#module-binding::t))
                                     (let ((_gid112385_
                                            (let ((_$e112380_
                                                   (##structure-ref
                                                    (##structure-ref
                                                     _bind112370_
                                                     '4
                                                     gx#module-binding::t
                                                     '#f)
                                                    '6
                                                    gx#module-context::t
                                                    '#f)))
                                              (if _$e112380_
                                                  ((lambda (_ns112383_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (make-symbol__1
                                                        _ns112383_
                                                        '"#"
                                                        _eid112372_)))
                                                   _$e112380_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-gensym-reference__0
                                                     _eid112372_))))))
                                       (let ()
                                         (declare (not safe))
                                         (hash-put!
                                          _ht112373_
                                          _eid112372_
                                          _gid112385_))
                                       _gid112385_)
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Cannot compile reference to uninterned binding"
                                        _id112365_
                                        _eid112372_
                                        _bind112370_)))))))))
               _$e112367_)
              (if (interned-symbol?
                   (let () (declare (not safe)) (gx#stx-e _id112365_)))
                  (let () (declare (not safe)) (gx#stx-e _id112365_))
                  (let ()
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Cannot compile reference to uninterned identifier"
                     _id112365_)))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_id112363_)
        (if (let () (declare (not safe)) (gx#identifier? _id112363_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-binding-id _id112363_))
            (let ()
              (declare (not safe))
              (gxc#generate-runtime-temporary__0)))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_sym112343_ _quote?112344_)
        (let* ((_ht112346_
                (##structure-ref
                 (gxc#current-compile-symbol-table)
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_$e112348_
                (let ()
                  (declare (not safe))
                  (hash-get _ht112346_ _sym112343_))))
          (if _$e112348_
              (values _$e112348_)
              (let ((_g112351_
                     (if _quote?112344_
                         (let ((__tmp114267 (gxc#current-compile-timestamp)))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _sym112343_
                            '"__"
                            __tmp114267))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_" _sym112343_ '"_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _ht112346_ _sym112343_ _g112351_))
                _g112351_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_sym112356_)
        (let ((_quote?112358_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-gensym-reference__%
           _sym112356_
           _quote?112358_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g114269_
        (let ((_g114268_ (let () (declare (not safe)) (##length _g114269_))))
          (cond ((let () (declare (not safe)) (##fx= _g114268_ 1))
                 (apply (lambda (_sym112356_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__0
                             _sym112356_)))
                        _g114269_))
                ((let () (declare (not safe)) (##fx= _g114268_ 2))
                 (apply (lambda (_sym112360_ _quote?112361_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-gensym-reference__%
                             _sym112360_
                             _quote?112361_)))
                        _g114269_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g114269_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_id112340_)
        (let ((__tmp114270
               (let ()
                 (declare (not safe))
                 (gx#core-identifier-key _id112340_))))
          (declare (not safe))
          (gxc#generate-runtime-identifier-key __tmp114270))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_key112300_)
        (if (interned-symbol? _key112300_)
            _key112300_
            (if (uninterned-symbol? _key112300_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _key112300_))
                (let* ((_key112301112308_ _key112300_)
                       (_E112303112312_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching" _key112301112308_))))
                       (_K112304112328_
                        (lambda (_mark112315_ _eid112316_)
                          (let ((_$e112318_
                                 (##structure-ref
                                  _mark112315_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _$e112318_
                                ((lambda (_ht112321_)
                                   (let ((_$e112323_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _ht112321_
                                             _eid112316_))))
                                     (if _$e112323_
                                         ((lambda (_id112326_)
                                            (if (interned-symbol? _id112326_)
                                                _id112326_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _id112326_))))
                                          _$e112323_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-identifier-key
                                            _eid112316_)))))
                                 _$e112318_)
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-identifier-key
                                   _eid112316_)))))))
                  (if (let () (declare (not safe)) (##pair? _key112301112308_))
                      (let ((_hd112305112331_
                             (let ()
                               (declare (not safe))
                               (##car _key112301112308_)))
                            (_tl112306112333_
                             (let ()
                               (declare (not safe))
                               (##cdr _key112301112308_))))
                        (let* ((_eid112336_ _hd112305112331_)
                               (_mark112338_ _tl112306112333_))
                          (declare (not safe))
                          (_K112304112328_ _mark112338_ _eid112336_)))
                      (let () (declare (not safe)) (_E112303112312_))))))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_top112287_)
        (if _top112287_
            (let ((_ns112289_
                   (##structure-ref
                    (let ((__tmp114272 (gx#current-expander-context)))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp114272))
                    '6
                    gx#module-context::t
                    '#f))
                  (_phi112290_ (gx#current-expander-phi)))
              (if _ns112289_
                  (if (fxpositive? _phi112290_)
                      (let ((__tmp114278 (number->string _phi112290_))
                            (__tmp114277 (gensym)))
                        (declare (not safe))
                        (make-symbol__1
                         _ns112289_
                         '"["
                         __tmp114278
                         '"]#_"
                         __tmp114277
                         '"_"))
                      (let ((__tmp114276 (gensym)))
                        (declare (not safe))
                        (make-symbol__1 _ns112289_ '"#_" __tmp114276 '"_")))
                  (if (fxpositive? _phi112290_)
                      (let ((__tmp114275 (number->string _phi112290_))
                            (__tmp114274 (gensym)))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp114275
                         '"]#_"
                         __tmp114274
                         '"_"))
                      (let ((__tmp114273 (gensym)))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp114273 '"_")))))
            (let ((__tmp114271 (gensym)))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp114271 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_top112296_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-temporary__% _top112296_))))
    (define gxc#generate-runtime-temporary
      (lambda _g114280_
        (let ((_g114279_ (let () (declare (not safe)) (##length _g114280_))))
          (cond ((let () (declare (not safe)) (##fx= _g114279_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__0)))
                        _g114280_))
                ((let () (declare (not safe)) (##fx= _g114279_ 1))
                 (apply (lambda (_top112298_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-temporary__% _top112298_)))
                        _g114280_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g114280_))))))
    (define gxc#generate-runtime-empty
      (lambda (_self112283_ _stx112284_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_self112130_ _stx112131_)
        (letrec ((_simplify112133_
                  (lambda (_body112181_)
                    (let _lp112183_ ((_rest112185_ _body112181_)
                                     (_r112186_ '()))
                      (let* ((_rest112187112195_ _rest112185_)
                             (_else112189112203_
                              (lambda () (reverse _r112186_)))
                             (_K112191112271_
                              (lambda (_rest112206_ _hd112207_)
                                (let* ((_hd112208112224_ _hd112207_)
                                       (_else112212112232_
                                        (lambda ()
                                          (let ((__tmp114281
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd112207_
                                                         _r112186_))))
                                            (declare (not safe))
                                            (_lp112183_
                                             _rest112206_
                                             __tmp114281)))))
                                  (let ((_K112220112261_
                                         (lambda (_exprs112259_)
                                           (let ((__tmp114282
                                                  (let ()
                                                    (declare (not safe))
                                                    (foldr1 cons
                                                            _rest112206_
                                                            _exprs112259_))))
                                             (declare (not safe))
                                             (_lp112183_
                                              __tmp114282
                                              _r112186_))))
                                        (_K112215112245_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest112206_))
                                               (let ((__tmp114283
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _hd112207_
                                                              _r112186_))))
                                                 (declare (not safe))
                                                 (_lp112183_
                                                  _rest112206_
                                                  __tmp114283))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp112183_
                                                  _rest112206_
                                                  _r112186_)))))
                                        (_K112214112237_
                                         (lambda ()
                                           (if (let ()
                                                 (declare (not safe))
                                                 (null? _rest112206_))
                                               (let ((__tmp114284
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _hd112207_
                                                              _r112186_))))
                                                 (declare (not safe))
                                                 (_lp112183_
                                                  _rest112206_
                                                  __tmp114284))
                                               (let ()
                                                 (declare (not safe))
                                                 (_lp112183_
                                                  _rest112206_
                                                  _r112186_))))))
                                    (let ((_try-match112211112240_
                                           (lambda ()
                                             (if (let ()
                                                   (declare (not safe))
                                                   (symbol? _hd112208112224_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_K112214112237_))
                                                 (let ()
                                                   (declare (not safe))
                                                   (_else112212112232_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd112208112224_))
                                          (let ((_tl112222112266_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd112208112224_)))
                                                (_hd112221112264_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd112208112224_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd112221112264_
                                                         'begin))
                                                (let ((_exprs112269_
                                                       _tl112222112266_))
                                                  (declare (not safe))
                                                  (_K112220112261_
                                                   _exprs112269_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _hd112221112264_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl112222112266_))
                                                        (let ((_tl112219112253_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl112222112266_))))
                  (if (let () (declare (not safe)) (##null? _tl112219112253_))
                      (let () (declare (not safe)) (_K112215112245_))
                      (let () (declare (not safe)) (_try-match112211112240_))))
                (let () (declare (not safe)) (_try-match112211112240_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_try-match112211112240_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_try-match112211112240_)))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest112187112195_))
                            (let ((_hd112192112274_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest112187112195_)))
                                  (_tl112193112276_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest112187112195_))))
                              (let* ((_hd112279_ _hd112192112274_)
                                     (_rest112281_ _tl112193112276_))
                                (declare (not safe))
                                (_K112191112271_ _rest112281_ _hd112279_)))
                            (let ()
                              (declare (not safe))
                              (_else112189112203_))))))))
          (let* ((_g112135112145_
                  (lambda (_g112136112142_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g112136112142_))))
                 (_g112134112178_
                  (lambda (_g112136112148_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g112136112148_))
                        (let ((_e112140112150_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g112136112148_))))
                          (let ((_hd112139112153_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e112140112150_)))
                                (_tl112138112155_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e112140112150_))))
                            ((lambda (_L112158_)
                               (let* ((_body112173_
                                       (map (lambda (_g112168112170_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self112130_
                                                 _g112168112170_)))
                                            _L112158_))
                                      (_body112175_
                                       (let ()
                                         (declare (not safe))
                                         (_simplify112133_ _body112173_))))
                                 (if (fx= (length _body112175_) '1)
                                     (car _body112175_)
                                     (let ()
                                       (declare (not safe))
                                       (cons 'begin _body112175_)))))
                             _tl112138112155_)))
                        (let ()
                          (declare (not safe))
                          (_g112135112145_ _g112136112148_))))))
            (declare (not safe))
            (_g112134112178_ _stx112131_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_self112091_ _stx112092_)
        (let* ((_g112094112104_
                (lambda (_g112095112101_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g112095112101_))))
               (_g112093112127_
                (lambda (_g112095112107_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g112095112107_))
                      (let ((_e112099112109_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g112095112107_))))
                        (let ((_hd112098112112_
                               (let ()
                                 (declare (not safe))
                                 (##car _e112099112109_)))
                              (_tl112097112114_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e112099112109_))))
                          ((lambda (_L112117_)
                             (let ((__tmp114285
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax->datum _L112117_))))
                               (declare (not safe))
                               (cons 'begin __tmp114285)))
                           _tl112097112114_)))
                      (let ()
                        (declare (not safe))
                        (_g112094112104_ _g112095112107_))))))
          (declare (not safe))
          (_g112093112127_ _stx112092_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_self111855_ _stx111856_)
        (let* ((___stx112883112884_ _stx111856_)
               (_g111860111912_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx112883112884_)))))
          (let ((___kont112885112886_
                 (lambda (_L112073_ _L112074_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self111855_ _L112073_))))
                (___kont112887112888_
                 (lambda (_L112021_ _L112022_ _L112023_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _self111855_ _L112021_))))
                (___kont112891112892_
                 (lambda (_L111941_ _L111942_)
                   (let ((_decls111957_ (map gx#syntax->datum _L111942_)))
                     (let ((__tmp114288
                            (lambda ()
                              (let ((__tmp114289
                                     (let ((__tmp114292
                                            (let ()
                                              (declare (not safe))
                                              (cons 'declare _decls111957_)))
                                           (__tmp114290
                                            (let ((__tmp114291
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self111855_
                                                      _L111941_))))
                                              (declare (not safe))
                                              (cons __tmp114291 '()))))
                                       (declare (not safe))
                                       (cons __tmp114292 __tmp114290))))
                                (declare (not safe))
                                (cons 'begin __tmp114289))))
                           (__tmp114286
                            (let ((__tmp114287 (gxc#current-compile-decls)))
                              (declare (not safe))
                              (foldr1 cons __tmp114287 _decls111957_))))
                       (declare (not safe))
                       (call-with-parameters
                        __tmp114288
                        gxc#current-compile-decls
                        __tmp114286))))))
            (let* ((___match112938112939_
                    (lambda (_e111878111965_
                             _hd111877111968_
                             _tl111876111970_
                             _e111881111973_
                             _hd111880111976_
                             _tl111879111978_
                             _e111884111981_
                             _hd111883111984_
                             _tl111882111986_
                             ___splice112889112890_
                             _target111885111989_
                             _tl111887111991_)
                      (letrec ((_loop111888111994_
                                (lambda (_hd111886111997_ _param111892111999_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd111886111997_))
                                      (let ((_e111889112002_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd111886111997_))))
                                        (let ((_lp-tl111891112007_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e111889112002_)))
                                              (_lp-hd111890112005_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e111889112002_))))
                                          (let ((__tmp114294
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd111890112005_
                                                         _param111892111999_))))
                                            (declare (not safe))
                                            (_loop111888111994_
                                             _lp-tl111891112007_
                                             __tmp114294))))
                                      (let ((_param111893112010_
                                             (reverse _param111892111999_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl111879111978_))
                                            (let ((_e111896112013_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl111879111978_))))
                                              (let ((_tl111894112018_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e111896112013_)))
                                                    (_hd111895112016_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e111896112013_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl111894112018_))
                                                    (let ((_L112021_
                                                           _hd111895112016_)
                                                          (_L112022_
                                                           _param111893112010_)
                                                          (_L112023_
                                                           _hd111883111984_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _L112023_))
                       (let ((__tmp114293
                              (memq (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L112023_))
                                    gxc#gambit-annotations)))
                         (declare (not safe))
                         (not __tmp114293)))
                  (___kont112887112888_ _L112021_ _L112022_ _L112023_)
                  (___kont112891112892_ _hd111895112016_ _hd111880111976_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g111860111912_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g111860111912_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop111888111994_ _target111885111989_ '())))))
                   (___match112912112913_
                    (lambda (_e111866112049_
                             _hd111865112052_
                             _tl111864112054_
                             _e111869112057_
                             _hd111868112060_
                             _tl111867112062_
                             _e111872112065_
                             _hd111871112068_
                             _tl111870112070_)
                      (let ((_L112073_ _hd111871112068_)
                            (_L112074_ _hd111868112060_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _L112074_))
                            (___kont112885112886_ _L112073_ _L112074_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd111868112060_))
                                (let ((_e111884111981_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd111868112060_))))
                                  (let ((_tl111882111986_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e111884111981_)))
                                        (_hd111883111984_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e111884111981_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl111882111986_))
                                        (let ((___splice112889112890_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl111882111986_
                                                  '0))))
                                          (let ((_tl111887111991_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice112889112890_
                                                    '1)))
                                                (_target111885111989_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice112889112890_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl111887111991_))
                                                (___match112938112939_
                                                 _e111866112049_
                                                 _hd111865112052_
                                                 _tl111864112054_
                                                 _e111869112057_
                                                 _hd111868112060_
                                                 _tl111867112062_
                                                 _e111884111981_
                                                 _hd111883111984_
                                                 _tl111882111986_
                                                 ___splice112889112890_
                                                 _target111885111989_
                                                 _tl111887111991_)
                                                (___kont112891112892_
                                                 _hd111871112068_
                                                 _hd111868112060_))))
                                        (___kont112891112892_
                                         _hd111871112068_
                                         _hd111868112060_))))
                                (___kont112891112892_
                                 _hd111871112068_
                                 _hd111868112060_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx112883112884_))
                  (let ((_e111866112049_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx112883112884_))))
                    (let ((_tl111864112054_
                           (let ()
                             (declare (not safe))
                             (##cdr _e111866112049_)))
                          (_hd111865112052_
                           (let ()
                             (declare (not safe))
                             (##car _e111866112049_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl111864112054_))
                          (let ((_e111869112057_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl111864112054_))))
                            (let ((_tl111867112062_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e111869112057_)))
                                  (_hd111868112060_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e111869112057_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl111867112062_))
                                  (let ((_e111872112065_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl111867112062_))))
                                    (let ((_tl111870112070_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e111872112065_)))
                                          (_hd111871112068_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e111872112065_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl111870112070_))
                                          (___match112912112913_
                                           _e111866112049_
                                           _hd111865112052_
                                           _tl111864112054_
                                           _e111869112057_
                                           _hd111868112060_
                                           _tl111867112062_
                                           _e111872112065_
                                           _hd111871112068_
                                           _tl111870112070_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd111868112060_))
                                              (let ((_e111884111981_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd111868112060_))))
                                                (let ((_tl111882111986_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e111884111981_)))
                                                      (_hd111883111984_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e111884111981_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl111882111986_))
                                                      (let ((___splice112889112890_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl111882111986_ '0))))
                (let ((_tl111887111991_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice112889112890_ '1)))
                      (_target111885111989_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice112889112890_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl111887111991_))
                      (___match112938112939_
                       _e111866112049_
                       _hd111865112052_
                       _tl111864112054_
                       _e111869112057_
                       _hd111868112060_
                       _tl111867112062_
                       _e111884111981_
                       _hd111883111984_
                       _tl111882111986_
                       ___splice112889112890_
                       _target111885111989_
                       _tl111887111991_)
                      (let () (declare (not safe)) (_g111860111912_)))))
              (let () (declare (not safe)) (_g111860111912_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g111860111912_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd111868112060_))
                                      (let ((_e111884111981_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd111868112060_))))
                                        (let ((_tl111882111986_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e111884111981_)))
                                              (_hd111883111984_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e111884111981_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl111882111986_))
                                              (let ((___splice112889112890_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl111882111986_
                                                        '0))))
                                                (let ((_tl111887111991_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice112889112890_
                                                          '1)))
                                                      (_target111885111989_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice112889112890_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl111887111991_))
                                                      (___match112938112939_
                                                       _e111866112049_
                                                       _hd111865112052_
                                                       _tl111864112054_
                                                       _e111869112057_
                                                       _hd111868112060_
                                                       _tl111867112062_
                                                       _e111884111981_
                                                       _hd111883111984_
                                                       _tl111882111986_
                                                       ___splice112889112890_
                                                       _target111885111989_
                                                       _tl111887111991_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g111860111912_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g111860111912_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g111860111912_))))))
                          (let () (declare (not safe)) (_g111860111912_)))))
                  (let () (declare (not safe)) (_g111860111912_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_self111814_ _stx111815_)
        (let* ((_g111817111827_
                (lambda (_g111818111824_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g111818111824_))))
               (_g111816111852_
                (lambda (_g111818111830_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g111818111830_))
                      (let ((_e111822111832_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g111818111830_))))
                        (let ((_hd111821111835_
                               (let ()
                                 (declare (not safe))
                                 (##car _e111822111832_)))
                              (_tl111820111837_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e111822111832_))))
                          ((lambda (_L111840_)
                             (let ((_decls111850_
                                    (map gx#syntax->datum _L111840_)))
                               (gxc#current-compile-decls
                                (let ((__tmp114295
                                       (gxc#current-compile-decls)))
                                  (declare (not safe))
                                  (foldr1 cons __tmp114295 _decls111850_)))
                               (let ()
                                 (declare (not safe))
                                 (cons 'declare _decls111850_))))
                           _tl111820111837_)))
                      (let ()
                        (declare (not safe))
                        (_g111817111827_ _g111818111830_))))))
          (declare (not safe))
          (_g111816111852_ _stx111815_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_self111560_ _stx111561_)
        (let* ((_g111563111580_
                (lambda (_g111564111577_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g111564111577_))))
               (_g111562111811_
                (lambda (_g111564111583_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g111564111583_))
                      (let ((_e111569111585_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g111564111583_))))
                        (let ((_hd111568111588_
                               (let ()
                                 (declare (not safe))
                                 (##car _e111569111585_)))
                              (_tl111567111590_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e111569111585_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl111567111590_))
                              (let ((_e111572111593_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl111567111590_))))
                                (let ((_hd111571111596_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e111572111593_)))
                                      (_tl111570111598_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e111572111593_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl111570111598_))
                                      (let ((_e111575111601_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl111570111598_))))
                                        (let ((_hd111574111604_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e111575111601_)))
                                              (_tl111573111606_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e111575111601_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl111573111606_))
                                              ((lambda (_L111609_ _L111610_)
                                                 (let* ((___stx112991112992_
                                                         _L111610_)
                                                        (_g111627111641_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx112991112992_)))))
                                                   (let ((___kont112993112994_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self111560_
                                                               _L111609_))))
                                                         (___kont112995112996_
                                                          (lambda (_L111773_)
                                                            (let ((_eid111782_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _L111773_))))
                      (let ((_lambda-expr111783111785_
                             (let ()
                               (declare (not safe))
                               (gxc#apply-find-lambda-expression _L111609_))))
                        (if _lambda-expr111783111785_
                            (let* ((_lambda-expr111788_
                                    _lambda-expr111783111785_)
                                   (__tmp114296
                                    (gxc#current-compile-runtime-names)))
                              (declare (not safe))
                              (hash-put!
                               __tmp114296
                               _lambda-expr111788_
                               _eid111782_))
                            '#f))
                      (let ((__tmp114297
                             (let ((__tmp114298
                                    (let ((__tmp114299
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self111560_
                                              _L111609_))))
                                      (declare (not safe))
                                      (cons __tmp114299 '()))))
                               (declare (not safe))
                               (cons _eid111782_ __tmp114298))))
                        (declare (not safe))
                        (cons 'define __tmp114297)))))
                 (___kont112997112998_
                  (lambda ()
                    (let* ((_tmp111648_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_body111757_
                            (let _lp111650_ ((_rest111652_ _L111610_)
                                             (_k111653_ '0)
                                             (_r111654_ '()))
                              (let* ((___stx112961112962_ _rest111652_)
                                     (_g111659111676_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx112961112962_)))))
                                (let ((___kont112963112964_
                                       (lambda (_L111744_)
                                         (let ((__tmp114300
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _k111653_ '1))))
                                           (declare (not safe))
                                           (_lp111650_
                                            _L111744_
                                            __tmp114300
                                            _r111654_))))
                                      (___kont112965112966_
                                       (lambda (_L111717_ _L111718_)
                                         (let ((__tmp114307
                                                (let ()
                                                  (declare (not safe))
                                                  (fx+ _k111653_ '1)))
                                               (__tmp114301
                                                (let ((__tmp114302
                                                       (let ((__tmp114303
                                                              (let ((__tmp114306
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-binding-id _L111718_)))
                            (__tmp114304
                             (let ((__tmp114305
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-values-ref
                                       _tmp111648_
                                       _k111653_
                                       _L111717_))))
                               (declare (not safe))
                               (cons __tmp114305 '()))))
                        (declare (not safe))
                        (cons __tmp114306 __tmp114304))))
                 (declare (not safe))
                 (cons 'define __tmp114303))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp114302
                                                        _r111654_))))
                                           (declare (not safe))
                                           (_lp111650_
                                            _L111717_
                                            __tmp114307
                                            __tmp114301))))
                                      (___kont112967112968_
                                       (lambda (_L111688_)
                                         (let ((__tmp114308
                                                (let ((__tmp114309
                                                       (let ((__tmp114310
                                                              (let ((__tmp114313
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-binding-id _L111688_)))
                            (__tmp114311
                             (let ((__tmp114312
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-values->list
                                       _tmp111648_
                                       _k111653_))))
                               (declare (not safe))
                               (cons __tmp114312 '()))))
                        (declare (not safe))
                        (cons __tmp114313 __tmp114311))))
                 (declare (not safe))
                 (cons 'define __tmp114310))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp114309 '()))))
                                           (declare (not safe))
                                           (foldl1 cons
                                                   __tmp114308
                                                   _r111654_))))
                                      (___kont112969112970_
                                       (lambda () (reverse _r111654_))))
                                  (let ((_g111657111704_
                                         (lambda ()
                                           (let ((_L111688_
                                                  ___stx112961112962_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier? _L111688_))
                                                 (___kont112967112968_
                                                  _L111688_)
                                                 (___kont112969112970_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx112961112962_))
                                        (let ((_e111664111733_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx112961112962_))))
                                          (let ((_tl111662111738_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e111664111733_)))
                                                (_hd111663111736_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e111664111733_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd111663111736_))
                                                (let ((_e111665111741_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd111663111736_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e111665111741_
                                                                '#f))
                                                      (___kont112963112964_
                                                       _tl111662111738_)
                                                      (___kont112965112966_
                                                       _tl111662111738_
                                                       _hd111663111736_)))
                                                (___kont112965112966_
                                                 _tl111662111738_
                                                 _hd111663111736_))))
                                        (let ()
                                          (declare (not safe))
                                          (_g111657111704_)))))))))
                      (let ((__tmp114314
                             (let ((__tmp114317
                                    (let ((__tmp114318
                                           (let ((__tmp114319
                                                  (let ((__tmp114320
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self111560_
                                                            _L111609_))))
                                                    (declare (not safe))
                                                    (cons __tmp114320 '()))))
                                             (declare (not safe))
                                             (cons _tmp111648_ __tmp114319))))
                                      (declare (not safe))
                                      (cons 'define __tmp114318)))
                                   (__tmp114315
                                    (let ((__tmp114316
                                           (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-check-values
                                              _tmp111648_
                                              _L111610_
                                              _L111609_))))
                                      (declare (not safe))
                                      (cons __tmp114316 _body111757_))))
                               (declare (not safe))
                               (cons __tmp114317 __tmp114315))))
                        (declare (not safe))
                        (cons 'begin __tmp114314))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx112991112992_))
                                                         (let ((_e111631111795_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx112991112992_))))
                   (let ((_tl111629111800_
                          (let ()
                            (declare (not safe))
                            (##cdr _e111631111795_)))
                         (_hd111630111798_
                          (let ()
                            (declare (not safe))
                            (##car _e111631111795_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _hd111630111798_))
                         (let ((_e111632111803_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd111630111798_))))
                           (if (let ()
                                 (declare (not safe))
                                 (equal? _e111632111803_ '#f))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl111629111800_))
                                   (___kont112993112994_)
                                   (___kont112997112998_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl111629111800_))
                                   (___kont112995112996_ _hd111630111798_)
                                   (___kont112997112998_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl111629111800_))
                             (___kont112995112996_ _hd111630111798_)
                             (___kont112997112998_)))))
                 (___kont112997112998_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd111574111604_
                                               _hd111571111596_)
                                              (let ()
                                                (declare (not safe))
                                                (_g111563111580_
                                                 _g111564111583_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g111563111580_ _g111564111583_)))))
                              (let ()
                                (declare (not safe))
                                (_g111563111580_ _g111564111583_)))))
                      (let ()
                        (declare (not safe))
                        (_g111563111580_ _g111564111583_))))))
          (declare (not safe))
          (_g111562111811_ _stx111561_))))
    (define gxc#generate-runtime-check-values
      (lambda (_vals111536_ _hd111537_ _expr111538_)
        (let ((_$e111540_
               (let ()
                 (declare (not safe))
                 (gxc#apply-count-values _expr111538_))))
          (if _$e111540_
              ((lambda (_count111543_)
                 (let ((_len111545_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _hd111537_)))
                       (_cmp111546_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _hd111537_))
                            fx=
                            fx>=)))
                   (if (or (fx= _len111545_ '0)
                           (_cmp111546_ _count111543_ _len111545_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _expr111538_
                          _hd111537_)))))
               _$e111540_)
              (let* ((_len111551_
                      (let () (declare (not safe)) (gx#stx-length _hd111537_)))
                     (_cmp111553_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _hd111537_))
                          '##fx=
                          '##fx>=))
                     (_errmsg111555_
                      (string-append
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-list? _hd111537_))
                           '"Context expects "
                           '"Context expects at least ")
                       (number->string _len111551_)
                       '" values"))
                     (_count111557_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (and (let ((__tmp114344
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _hd111537_))))
                           (declare (not safe))
                           (not __tmp114344))
                         (fx= _len111551_ '0))
                    '#!void
                    (let ((__tmp114321
                           (let ((__tmp114340
                                  (let ((__tmp114341
                                         (let ((__tmp114342
                                                (let ((__tmp114343
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-values-count
                                                          _vals111536_))))
                                                  (declare (not safe))
                                                  (cons __tmp114343 '()))))
                                           (declare (not safe))
                                           (cons _count111557_ __tmp114342))))
                                    (declare (not safe))
                                    (cons __tmp114341 '())))
                                 (__tmp114322
                                  (let ((__tmp114323
                                         (let ((__tmp114324
                                                (let ((__tmp114329
                                                       (let ((__tmp114330
                                                              (let ((__tmp114331
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-decls-unsafe?))
                                 (let ((__tmp114338
                                        (let ((__tmp114339
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _len111551_ '()))))
                                          (declare (not safe))
                                          (cons _count111557_ __tmp114339))))
                                   (declare (not safe))
                                   (cons _cmp111553_ __tmp114338))
                                 (let ((__tmp114332
                                        (let ((__tmp114333
                                               (let ((__tmp114334
                                                      (let ((__tmp114335
                                                             (let ((__tmp114336
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114337
                                   (let ()
                                     (declare (not safe))
                                     (cons _len111551_ '()))))
                              (declare (not safe))
                              (cons _count111557_ __tmp114337))))
                       (declare (not safe))
                       (cons _cmp111553_ __tmp114336))))
                (declare (not safe))
                (cons __tmp114335 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '(declare (not safe))
                                                       __tmp114334))))
                                          (declare (not safe))
                                          (cons '() __tmp114333))))
                                   (declare (not safe))
                                   (cons 'let __tmp114332)))))
                        (declare (not safe))
                        (cons __tmp114331 '()))))
                 (declare (not safe))
                 (cons 'not __tmp114330)))
              (__tmp114325
               (let ((__tmp114326
                      (let ((__tmp114327
                             (let ((__tmp114328
                                    (let ()
                                      (declare (not safe))
                                      (cons _count111557_ '()))))
                               (declare (not safe))
                               (cons _errmsg111555_ __tmp114328))))
                        (declare (not safe))
                        (cons 'error __tmp114327))))
                 (declare (not safe))
                 (cons __tmp114326 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp114329
                                                        __tmp114325))))
                                           (declare (not safe))
                                           (cons 'if __tmp114324))))
                                    (declare (not safe))
                                    (cons __tmp114323 '()))))
                             (declare (not safe))
                             (cons __tmp114340 __tmp114322))))
                      (declare (not safe))
                      (cons 'let __tmp114321))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_var111531_)
        (letrec ((_generate-inline111533_
                  (lambda ()
                    (let ((__tmp114345
                           (let ((__tmp114350
                                  (let ((__tmp114351
                                         (let ()
                                           (declare (not safe))
                                           (cons _var111531_ '()))))
                                    (declare (not safe))
                                    (cons '##values? __tmp114351)))
                                 (__tmp114346
                                  (let ((__tmp114348
                                         (let ((__tmp114349
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _var111531_ '()))))
                                           (declare (not safe))
                                           (cons '##vector-length
                                                 __tmp114349)))
                                        (__tmp114347
                                         (let ()
                                           (declare (not safe))
                                           (cons '1 '()))))
                                    (declare (not safe))
                                    (cons __tmp114348 __tmp114347))))
                             (declare (not safe))
                             (cons __tmp114350 __tmp114346))))
                      (declare (not safe))
                      (cons 'if __tmp114345)))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline111533_))
              (let ((__tmp114352
                     (let ((__tmp114353
                            (let ((__tmp114354
                                   (let ((__tmp114355
                                          (let ()
                                            (declare (not safe))
                                            (_generate-inline111533_))))
                                     (declare (not safe))
                                     (cons __tmp114355 '()))))
                              (declare (not safe))
                              (cons '(declare (not safe)) __tmp114354))))
                       (declare (not safe))
                       (cons '() __tmp114353))))
                (declare (not safe))
                (cons 'let __tmp114352))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_var111524_ _i111525_ _rest111526_)
        (letrec ((_generate-inline111528_
                  (lambda ()
                    (if (and (fx= _i111525_ '0)
                             (let ((__tmp114366
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _rest111526_))))
                               (declare (not safe))
                               (not __tmp114366)))
                        (let ((__tmp114358
                               (let ((__tmp114364
                                      (let ((__tmp114365
                                             (let ()
                                               (declare (not safe))
                                               (cons _var111524_ '()))))
                                        (declare (not safe))
                                        (cons '##values? __tmp114365)))
                                     (__tmp114359
                                      (let ((__tmp114361
                                             (let ((__tmp114362
                                                    (let ((__tmp114363
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '0 '()))))
                                                      (declare (not safe))
                                                      (cons _var111524_
                                                            __tmp114363))))
                                               (declare (not safe))
                                               (cons '##vector-ref
                                                     __tmp114362)))
                                            (__tmp114360
                                             (let ()
                                               (declare (not safe))
                                               (cons _var111524_ '()))))
                                        (declare (not safe))
                                        (cons __tmp114361 __tmp114360))))
                                 (declare (not safe))
                                 (cons __tmp114364 __tmp114359))))
                          (declare (not safe))
                          (cons 'if __tmp114358))
                        (let ((__tmp114356
                               (let ((__tmp114357
                                      (let ()
                                        (declare (not safe))
                                        (cons _i111525_ '()))))
                                 (declare (not safe))
                                 (cons _var111524_ __tmp114357))))
                          (declare (not safe))
                          (cons '##vector-ref __tmp114356))))))
          (if (let () (declare (not safe)) (gxc#current-compile-decls-unsafe?))
              (let () (declare (not safe)) (_generate-inline111528_))
              (let ((__tmp114367
                     (let ((__tmp114368
                            (let ((__tmp114369
                                   (let ((__tmp114370
                                          (let ()
                                            (declare (not safe))
                                            (_generate-inline111528_))))
                                     (declare (not safe))
                                     (cons __tmp114370 '()))))
                              (declare (not safe))
                              (cons '(declare (not safe)) __tmp114369))))
                       (declare (not safe))
                       (cons '() __tmp114368))))
                (declare (not safe))
                (cons 'let __tmp114367))))))
    (define gxc#generate-runtime-values->list
      (lambda (_var111521_ _i111522_)
        (if (fx= _i111522_ '0)
            (if (let ()
                  (declare (not safe))
                  (gxc#current-compile-decls-unsafe?))
                (let ((__tmp114418
                       (let ((__tmp114425
                              (let ((__tmp114426
                                     (let ()
                                       (declare (not safe))
                                       (cons _var111521_ '()))))
                                (declare (not safe))
                                (cons '##values? __tmp114426)))
                             (__tmp114419
                              (let ((__tmp114423
                                     (let ((__tmp114424
                                            (let ()
                                              (declare (not safe))
                                              (cons _var111521_ '()))))
                                       (declare (not safe))
                                       (cons '##vector->list __tmp114424)))
                                    (__tmp114420
                                     (let ((__tmp114421
                                            (let ((__tmp114422
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _var111521_ '()))))
                                              (declare (not safe))
                                              (cons 'list __tmp114422))))
                                       (declare (not safe))
                                       (cons __tmp114421 '()))))
                                (declare (not safe))
                                (cons __tmp114423 __tmp114420))))
                         (declare (not safe))
                         (cons __tmp114425 __tmp114419))))
                  (declare (not safe))
                  (cons 'if __tmp114418))
                (let ((__tmp114405
                       (let ((__tmp114406
                              (let ((__tmp114407
                                     (let ((__tmp114408
                                            (let ((__tmp114409
                                                   (let ((__tmp114416
                                                          (let ((__tmp114417
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _var111521_ '()))))
                    (declare (not safe))
                    (cons '##values? __tmp114417)))
                 (__tmp114410
                  (let ((__tmp114414
                         (let ((__tmp114415
                                (let ()
                                  (declare (not safe))
                                  (cons _var111521_ '()))))
                           (declare (not safe))
                           (cons '##vector->list __tmp114415)))
                        (__tmp114411
                         (let ((__tmp114412
                                (let ((__tmp114413
                                       (let ()
                                         (declare (not safe))
                                         (cons _var111521_ '()))))
                                  (declare (not safe))
                                  (cons 'list __tmp114413))))
                           (declare (not safe))
                           (cons __tmp114412 '()))))
                    (declare (not safe))
                    (cons __tmp114414 __tmp114411))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114416
                                                           __tmp114410))))
                                              (declare (not safe))
                                              (cons 'if __tmp114409))))
                                       (declare (not safe))
                                       (cons __tmp114408 '()))))
                                (declare (not safe))
                                (cons '(declare (not safe)) __tmp114407))))
                         (declare (not safe))
                         (cons '() __tmp114406))))
                  (declare (not safe))
                  (cons 'let __tmp114405)))
            (if (fx= _i111522_ '1)
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (let ((__tmp114396
                           (let ((__tmp114403
                                  (let ((__tmp114404
                                         (let ()
                                           (declare (not safe))
                                           (cons _var111521_ '()))))
                                    (declare (not safe))
                                    (cons '##values? __tmp114404)))
                                 (__tmp114397
                                  (let ((__tmp114399
                                         (let ((__tmp114400
                                                (let ((__tmp114401
                                                       (let ((__tmp114402
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _var111521_ '()))))
                 (declare (not safe))
                 (cons '##vector->list __tmp114402))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp114401 '()))))
                                           (declare (not safe))
                                           (cons '##cdr __tmp114400)))
                                        (__tmp114398
                                         (let ()
                                           (declare (not safe))
                                           (cons ''() '()))))
                                    (declare (not safe))
                                    (cons __tmp114399 __tmp114398))))
                             (declare (not safe))
                             (cons __tmp114403 __tmp114397))))
                      (declare (not safe))
                      (cons 'if __tmp114396))
                    (let ((__tmp114383
                           (let ((__tmp114384
                                  (let ((__tmp114385
                                         (let ((__tmp114386
                                                (let ((__tmp114387
                                                       (let ((__tmp114394
                                                              (let ((__tmp114395
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _var111521_ '()))))
                        (declare (not safe))
                        (cons '##values? __tmp114395)))
                     (__tmp114388
                      (let ((__tmp114390
                             (let ((__tmp114391
                                    (let ((__tmp114392
                                           (let ((__tmp114393
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _var111521_ '()))))
                                             (declare (not safe))
                                             (cons '##vector->list
                                                   __tmp114393))))
                                      (declare (not safe))
                                      (cons __tmp114392 '()))))
                               (declare (not safe))
                               (cons '##cdr __tmp114391)))
                            (__tmp114389
                             (let () (declare (not safe)) (cons ''() '()))))
                        (declare (not safe))
                        (cons __tmp114390 __tmp114389))))
                 (declare (not safe))
                 (cons __tmp114394 __tmp114388))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'if __tmp114387))))
                                           (declare (not safe))
                                           (cons __tmp114386 '()))))
                                    (declare (not safe))
                                    (cons '(declare (not safe)) __tmp114385))))
                             (declare (not safe))
                             (cons '() __tmp114384))))
                      (declare (not safe))
                      (cons 'let __tmp114383)))
                (if (let ()
                      (declare (not safe))
                      (gxc#current-compile-decls-unsafe?))
                    (let ((__tmp114379
                           (let ((__tmp114381
                                  (let ((__tmp114382
                                         (let ()
                                           (declare (not safe))
                                           (cons _var111521_ '()))))
                                    (declare (not safe))
                                    (cons '##vector->list __tmp114382)))
                                 (__tmp114380
                                  (let ()
                                    (declare (not safe))
                                    (cons _i111522_ '()))))
                             (declare (not safe))
                             (cons __tmp114381 __tmp114380))))
                      (declare (not safe))
                      (cons '##list-tail __tmp114379))
                    (let ((__tmp114371
                           (let ((__tmp114372
                                  (let ((__tmp114373
                                         (let ((__tmp114374
                                                (let ((__tmp114375
                                                       (let ((__tmp114377
                                                              (let ((__tmp114378
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _var111521_ '()))))
                        (declare (not safe))
                        (cons '##vector->list __tmp114378)))
                     (__tmp114376
                      (let () (declare (not safe)) (cons _i111522_ '()))))
                 (declare (not safe))
                 (cons __tmp114377 __tmp114376))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '##list-tail
                                                        __tmp114375))))
                                           (declare (not safe))
                                           (cons __tmp114374 '()))))
                                    (declare (not safe))
                                    (cons '(declare (not safe)) __tmp114373))))
                             (declare (not safe))
                             (cons '() __tmp114372))))
                      (declare (not safe))
                      (cons 'let __tmp114371)))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_self111453_ _stx111454_)
        (let* ((_g111456111473_
                (lambda (_g111457111470_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g111457111470_))))
               (_g111455111518_
                (lambda (_g111457111476_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g111457111476_))
                      (let ((_e111462111478_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g111457111476_))))
                        (let ((_hd111461111481_
                               (let ()
                                 (declare (not safe))
                                 (##car _e111462111478_)))
                              (_tl111460111483_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e111462111478_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl111460111483_))
                              (let ((_e111465111486_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl111460111483_))))
                                (let ((_hd111464111489_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e111465111486_)))
                                      (_tl111463111491_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e111465111486_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl111463111491_))
                                      (let ((_e111468111494_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl111463111491_))))
                                        (let ((_hd111467111497_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e111468111494_)))
                                              (_tl111466111499_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e111468111494_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl111466111499_))
                                              ((lambda (_L111502_ _L111503_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-lambda-form
                                                    _self111453_
                                                    _L111503_
                                                    _L111502_)))
                                               _hd111467111497_
                                               _hd111464111489_)
                                              (let ()
                                                (declare (not safe))
                                                (_g111456111473_
                                                 _g111457111476_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g111456111473_ _g111457111476_)))))
                              (let ()
                                (declare (not safe))
                                (_g111456111473_ _g111457111476_)))))
                      (let ()
                        (declare (not safe))
                        (_g111456111473_ _g111457111476_))))))
          (declare (not safe))
          (_g111455111518_ _stx111454_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_self111412_ _hd111413_ _body111414_)
        (let* ((_hd111416_
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-lambda-head _hd111413_)))
               (_body111418_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _self111412_ _body111414_)))
               (_body111450_
                (let* ((_body111419111427_ _body111418_)
                       (_else111421111435_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (cons _body111418_ '()))))
                       (_K111423111440_
                        (lambda (_exprs111438_) _exprs111438_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _body111419111427_))
                      (let ((_hd111424111443_
                             (let ()
                               (declare (not safe))
                               (##car _body111419111427_)))
                            (_tl111425111445_
                             (let ()
                               (declare (not safe))
                               (##cdr _body111419111427_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _hd111424111443_ 'begin))
                            (let ((_exprs111448_ _tl111425111445_))
                              (declare (not safe))
                              (_K111423111440_ _exprs111448_))
                            (let ()
                              (declare (not safe))
                              (_else111421111435_))))
                      (let () (declare (not safe)) (_else111421111435_))))))
          (let ((__tmp114427
                 (let () (declare (not safe)) (cons _hd111416_ _body111450_))))
            (declare (not safe))
            (cons 'lambda __tmp114427)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_hd111410_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _hd111410_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_self109952_ _stx109953_)
        (letrec ((_dispatch-case?109955_
                  (lambda (_hd110640_ _body110641_)
                    (let* ((_form110643_
                            (let ((__tmp114428
                                   (let ()
                                     (declare (not safe))
                                     (cons _body110641_ '()))))
                              (declare (not safe))
                              (cons _hd110640_ __tmp114428)))
                           (___stx113023113024_ _form110643_)
                           (_g110648110805_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx113023113024_)))))
                      (let ((___kont113025113026_
                             (lambda (_L111330_ _L111331_ _L111332_) '#t))
                            (___kont113031113032_
                             (lambda (_L111118_
                                      _L111119_
                                      _L111120_
                                      _L111121_
                                      _L111122_
                                      _L111123_)
                               '#t))
                            (___kont113037113038_
                             (lambda (_L110913_ _L110914_ _L110915_ _L110916_)
                               '#t))
                            (___kont113039113040_ (lambda () '#f)))
                        (let* ((___match113164113165_
                                (lambda (_e110767110817_
                                         _hd110766110820_
                                         _tl110765110822_
                                         _e110770110825_
                                         _hd110769110828_
                                         _tl110768110830_
                                         _e110773110833_
                                         _hd110772110836_
                                         _tl110771110838_
                                         _e110776110841_
                                         _hd110775110844_
                                         _tl110774110846_
                                         _e110779110849_
                                         _hd110778110852_
                                         _tl110777110854_
                                         _e110782110857_
                                         _hd110781110860_
                                         _tl110780110862_
                                         _e110785110865_
                                         _hd110784110868_
                                         _tl110783110870_
                                         _e110788110873_
                                         _hd110787110876_
                                         _tl110786110878_
                                         _e110791110881_
                                         _hd110790110884_
                                         _tl110789110886_
                                         _e110794110889_
                                         _hd110793110892_
                                         _tl110792110894_
                                         _e110797110897_
                                         _hd110796110900_
                                         _tl110795110902_
                                         _e110800110905_
                                         _hd110799110908_
                                         _tl110798110910_)
                                  (let ((_L110913_ _hd110799110908_)
                                        (_L110914_ _hd110790110884_)
                                        (_L110915_ _hd110781110860_)
                                        (_L110916_ _hd110766110820_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _L110916_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _L110915_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L110916_
                                                _L110913_))
                                             (let ((__tmp114429
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#free-identifier=?
                                                       _L110914_
                                                       _L110916_))))
                                               (declare (not safe))
                                               (not __tmp114429)))
                                        (___kont113037113038_
                                         _L110913_
                                         _L110914_
                                         _L110915_
                                         _L110916_)
                                        (___kont113039113040_)))))
                               (___match113136113137_
                                (lambda (_e110767110817_
                                         _hd110766110820_
                                         _tl110765110822_
                                         _e110770110825_
                                         _hd110769110828_
                                         _tl110768110830_
                                         _e110773110833_
                                         _hd110772110836_
                                         _tl110771110838_
                                         _e110776110841_
                                         _hd110775110844_
                                         _tl110774110846_
                                         _e110779110849_
                                         _hd110778110852_
                                         _tl110777110854_
                                         _e110782110857_
                                         _hd110781110860_
                                         _tl110780110862_
                                         _e110785110865_
                                         _hd110784110868_
                                         _tl110783110870_
                                         _e110788110873_
                                         _hd110787110876_
                                         _tl110786110878_
                                         _e110791110881_
                                         _hd110790110884_
                                         _tl110789110886_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl110783110870_))
                                      (let ((_e110794110889_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl110783110870_))))
                                        (let ((_tl110792110894_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e110794110889_)))
                                              (_hd110793110892_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e110794110889_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _hd110793110892_))
                                              (let ((_e110797110897_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd110793110892_))))
                                                (let ((_tl110795110902_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e110797110897_)))
                                                      (_hd110796110900_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e110797110897_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _hd110796110900_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _hd110796110900_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl110795110902_))
                      (let ((_e110800110905_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl110795110902_))))
                        (let ((_tl110798110910_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110800110905_)))
                              (_hd110799110908_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110800110905_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl110798110910_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl110792110894_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl110768110830_))
                                      (___match113164113165_
                                       _e110767110817_
                                       _hd110766110820_
                                       _tl110765110822_
                                       _e110770110825_
                                       _hd110769110828_
                                       _tl110768110830_
                                       _e110773110833_
                                       _hd110772110836_
                                       _tl110771110838_
                                       _e110776110841_
                                       _hd110775110844_
                                       _tl110774110846_
                                       _e110779110849_
                                       _hd110778110852_
                                       _tl110777110854_
                                       _e110782110857_
                                       _hd110781110860_
                                       _tl110780110862_
                                       _e110785110865_
                                       _hd110784110868_
                                       _tl110783110870_
                                       _e110788110873_
                                       _hd110787110876_
                                       _tl110786110878_
                                       _e110791110881_
                                       _hd110790110884_
                                       _tl110789110886_
                                       _e110794110889_
                                       _hd110793110892_
                                       _tl110792110894_
                                       _e110797110897_
                                       _hd110796110900_
                                       _tl110795110902_
                                       _e110800110905_
                                       _hd110799110908_
                                       _tl110798110910_)
                                      (___kont113039113040_))
                                  (___kont113039113040_))
                              (___kont113039113040_))))
                      (___kont113039113040_))
                  (___kont113039113040_))
              (___kont113039113040_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont113039113040_))))
                                      (___kont113039113040_))))
                               (___match113066113067_
                                (lambda (_e110703110958_
                                         _hd110702110961_
                                         _tl110701110963_
                                         ___splice113033113034_
                                         _target110704110966_
                                         _tl110706110968_)
                                  (letrec ((_loop110707110971_
                                            (lambda (_hd110705110974_
                                                     _arg110711110976_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110705110974_))
                                                  (let ((_e110708110979_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110705110974_))))
                                                    (let ((_lp-tl110710110984_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110708110979_)))
                                                          (_lp-hd110709110982_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110708110979_))))
                                                      (let ((__tmp114444
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd110709110982_ _arg110711110976_))))
                (declare (not safe))
                (_loop110707110971_ _lp-tl110710110984_ __tmp114444))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg110712110987_
                                                         (reverse _arg110711110976_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl110701110963_))
                                                        (let ((_e110715110990_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl110701110963_))))
                  (let ((_tl110713110995_
                         (let () (declare (not safe)) (##cdr _e110715110990_)))
                        (_hd110714110993_
                         (let ()
                           (declare (not safe))
                           (##car _e110715110990_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd110714110993_))
                        (let ((_e110718110998_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd110714110993_))))
                          (let ((_tl110716111003_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110718110998_)))
                                (_hd110717111001_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110718110998_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110717111001_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd110717111001_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110716111003_))
                                        (let ((_e110721111006_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110716111003_))))
                                          (let ((_tl110719111011_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110721111006_)))
                                                (_hd110720111009_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110721111006_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd110720111009_))
                                                (let ((_e110724111014_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd110720111009_))))
                                                  (let ((_tl110722111019_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e110724111014_)))
                                                        (_hd110723111017_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e110724111014_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd110723111017_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd110723111017_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl110722111019_))
                        (let ((_e110727111022_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl110722111019_))))
                          (let ((_tl110725111027_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110727111022_)))
                                (_hd110726111025_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110727111022_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl110725111027_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl110719111011_))
                                    (let ((_e110730111030_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl110719111011_))))
                                      (let ((_tl110728111035_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e110730111030_)))
                                            (_hd110729111033_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e110730111030_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd110729111033_))
                                            (let ((_e110733111038_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd110729111033_))))
                                              (let ((_tl110731111043_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110733111038_)))
                                                    (_hd110732111041_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110733111038_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd110732111041_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd110732111041_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl110731111043_))
                                                            (let ((_e110736111046_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl110731111043_))))
                      (let ((_tl110734111051_
                             (let ()
                               (declare (not safe))
                               (##cdr _e110736111046_)))
                            (_hd110735111049_
                             (let ()
                               (declare (not safe))
                               (##car _e110736111046_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl110734111051_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl110728111035_))
                                (if (fx>= (let ()
                                            (declare (not safe))
                                            (gx#stx-length _tl110728111035_))
                                          '1)
                                    (let ((___splice113035113036_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl110728111035_
                                              '1))))
                                      (let ((_tl110739111056_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice113035113036_
                                                '1)))
                                            (_target110737111054_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice113035113036_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl110739111056_))
                                            (let ((_e110748111059_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl110739111056_))))
                                              (let ((_tl110746111064_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110748111059_)))
                                                    (_hd110747111062_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110748111059_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd110747111062_))
                                                    (let ((_e110751111067_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd110747111062_))))
                                                      (let ((_tl110749111072_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e110751111067_)))
                    (_hd110750111070_
                     (let () (declare (not safe)) (##car _e110751111067_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd110750111070_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _hd110750111070_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl110749111072_))
                            (let ((_e110754111075_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl110749111072_))))
                              (let ((_tl110752111080_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e110754111075_)))
                                    (_hd110753111078_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e110754111075_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl110752111080_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl110746111064_))
                                        (letrec ((_loop110740111083_
                                                  (lambda (_hd110738111086_
                                                           _xarg110744111088_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd110738111086_))
                                                        (let ((_e110741111091_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd110738111086_))))
                  (let ((_lp-tl110743111096_
                         (let () (declare (not safe)) (##cdr _e110741111091_)))
                        (_lp-hd110742111094_
                         (let ()
                           (declare (not safe))
                           (##car _e110741111091_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _lp-hd110742111094_))
                        (let ((_e110757111099_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _lp-hd110742111094_))))
                          (let ((_tl110755111104_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110757111099_)))
                                (_hd110756111102_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110757111099_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110756111102_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _hd110756111102_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110755111104_))
                                        (let ((_e110760111107_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110755111104_))))
                                          (let ((_tl110758111112_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110760111107_)))
                                                (_hd110759111110_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110760111107_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl110758111112_))
                                                (let ((__tmp114443
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _hd110759111110_
                                                               _xarg110744111088_))))
                                                  (declare (not safe))
                                                  (_loop110740111083_
                                                   _lp-tl110743111096_
                                                   __tmp114443))
                                                (___match113136113137_
                                                 _e110703110958_
                                                 _hd110702110961_
                                                 _tl110701110963_
                                                 _e110715110990_
                                                 _hd110714110993_
                                                 _tl110713110995_
                                                 _e110718110998_
                                                 _hd110717111001_
                                                 _tl110716111003_
                                                 _e110721111006_
                                                 _hd110720111009_
                                                 _tl110719111011_
                                                 _e110724111014_
                                                 _hd110723111017_
                                                 _tl110722111019_
                                                 _e110727111022_
                                                 _hd110726111025_
                                                 _tl110725111027_
                                                 _e110730111030_
                                                 _hd110729111033_
                                                 _tl110728111035_
                                                 _e110733111038_
                                                 _hd110732111041_
                                                 _tl110731111043_
                                                 _e110736111046_
                                                 _hd110735111049_
                                                 _tl110734111051_))))
                                        (___match113136113137_
                                         _e110703110958_
                                         _hd110702110961_
                                         _tl110701110963_
                                         _e110715110990_
                                         _hd110714110993_
                                         _tl110713110995_
                                         _e110718110998_
                                         _hd110717111001_
                                         _tl110716111003_
                                         _e110721111006_
                                         _hd110720111009_
                                         _tl110719111011_
                                         _e110724111014_
                                         _hd110723111017_
                                         _tl110722111019_
                                         _e110727111022_
                                         _hd110726111025_
                                         _tl110725111027_
                                         _e110730111030_
                                         _hd110729111033_
                                         _tl110728111035_
                                         _e110733111038_
                                         _hd110732111041_
                                         _tl110731111043_
                                         _e110736111046_
                                         _hd110735111049_
                                         _tl110734111051_))
                                    (___match113136113137_
                                     _e110703110958_
                                     _hd110702110961_
                                     _tl110701110963_
                                     _e110715110990_
                                     _hd110714110993_
                                     _tl110713110995_
                                     _e110718110998_
                                     _hd110717111001_
                                     _tl110716111003_
                                     _e110721111006_
                                     _hd110720111009_
                                     _tl110719111011_
                                     _e110724111014_
                                     _hd110723111017_
                                     _tl110722111019_
                                     _e110727111022_
                                     _hd110726111025_
                                     _tl110725111027_
                                     _e110730111030_
                                     _hd110729111033_
                                     _tl110728111035_
                                     _e110733111038_
                                     _hd110732111041_
                                     _tl110731111043_
                                     _e110736111046_
                                     _hd110735111049_
                                     _tl110734111051_))
                                (___match113136113137_
                                 _e110703110958_
                                 _hd110702110961_
                                 _tl110701110963_
                                 _e110715110990_
                                 _hd110714110993_
                                 _tl110713110995_
                                 _e110718110998_
                                 _hd110717111001_
                                 _tl110716111003_
                                 _e110721111006_
                                 _hd110720111009_
                                 _tl110719111011_
                                 _e110724111014_
                                 _hd110723111017_
                                 _tl110722111019_
                                 _e110727111022_
                                 _hd110726111025_
                                 _tl110725111027_
                                 _e110730111030_
                                 _hd110729111033_
                                 _tl110728111035_
                                 _e110733111038_
                                 _hd110732111041_
                                 _tl110731111043_
                                 _e110736111046_
                                 _hd110735111049_
                                 _tl110734111051_))))
                        (___match113136113137_
                         _e110703110958_
                         _hd110702110961_
                         _tl110701110963_
                         _e110715110990_
                         _hd110714110993_
                         _tl110713110995_
                         _e110718110998_
                         _hd110717111001_
                         _tl110716111003_
                         _e110721111006_
                         _hd110720111009_
                         _tl110719111011_
                         _e110724111014_
                         _hd110723111017_
                         _tl110722111019_
                         _e110727111022_
                         _hd110726111025_
                         _tl110725111027_
                         _e110730111030_
                         _hd110729111033_
                         _tl110728111035_
                         _e110733111038_
                         _hd110732111041_
                         _tl110731111043_
                         _e110736111046_
                         _hd110735111049_
                         _tl110734111051_))))
                (let ((_xarg110745111115_ (reverse _xarg110744111088_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl110713110995_))
                      (let ((_L111118_ _hd110753111078_)
                            (_L111119_ _xarg110745111115_)
                            (_L111120_ _hd110735111049_)
                            (_L111121_ _hd110726111025_)
                            (_L111122_ _tl110706110968_)
                            (_L111123_ _arg110712110987_))
                        (if (and (let ((__tmp114441
                                        (let ((__tmp114442
                                               (lambda (_g111166111169_
                                                        _g111167111171_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g111166111169_
                                                         _g111167111171_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp114442 '() _L111123_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp114441))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _L111122_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=? _L111121_ 'apply))
                                 (fx= (length (let ((__tmp114439
                                                     (lambda (_g111173111176_
                                                              _g111174111178_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g111173111176_
                                                               _g111174111178_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp114439
                                                        '()
                                                        _L111123_)))
                                      (length (let ((__tmp114440
                                                     (lambda (_g111180111183_
                                                              _g111181111185_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g111180111183_
                                                               _g111181111185_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp114440
                                                        '()
                                                        _L111119_))))
                                 (let ((__tmp114437
                                        (let ((__tmp114438
                                               (lambda (_g111187111190_
                                                        _g111188111192_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g111187111190_
                                                         _g111188111192_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp114438 '() _L111123_)))
                                       (__tmp114435
                                        (let ((__tmp114436
                                               (lambda (_g111194111197_
                                                        _g111195111199_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g111194111197_
                                                         _g111195111199_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp114436 '() _L111119_))))
                                   (declare (not safe))
                                   (andmap2 gx#free-identifier=?
                                            __tmp114437
                                            __tmp114435))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=? _L111122_ _L111118_))
                                 (let ((__tmp114430
                                        (let ((__tmp114434
                                               (lambda (_g111201111203_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#free-identifier=?
                                                    _g111201111203_
                                                    _L111120_))))
                                              (__tmp114431
                                               (let ((__tmp114433
                                                      (lambda (_g111205111208_
                                                               _g111206111210_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g111205111208_
                                                                _g111206111210_))))
                                                     (__tmp114432
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L111122_ '()))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp114433
                                                         __tmp114432
                                                         _L111123_))))
                                          (declare (not safe))
                                          (find __tmp114434 __tmp114431))))
                                   (declare (not safe))
                                   (not __tmp114430)))
                            (___kont113031113032_
                             _L111118_
                             _L111119_
                             _L111120_
                             _L111121_
                             _L111122_
                             _L111123_)
                            (___match113136113137_
                             _e110703110958_
                             _hd110702110961_
                             _tl110701110963_
                             _e110715110990_
                             _hd110714110993_
                             _tl110713110995_
                             _e110718110998_
                             _hd110717111001_
                             _tl110716111003_
                             _e110721111006_
                             _hd110720111009_
                             _tl110719111011_
                             _e110724111014_
                             _hd110723111017_
                             _tl110722111019_
                             _e110727111022_
                             _hd110726111025_
                             _tl110725111027_
                             _e110730111030_
                             _hd110729111033_
                             _tl110728111035_
                             _e110733111038_
                             _hd110732111041_
                             _tl110731111043_
                             _e110736111046_
                             _hd110735111049_
                             _tl110734111051_)))
                      (___match113136113137_
                       _e110703110958_
                       _hd110702110961_
                       _tl110701110963_
                       _e110715110990_
                       _hd110714110993_
                       _tl110713110995_
                       _e110718110998_
                       _hd110717111001_
                       _tl110716111003_
                       _e110721111006_
                       _hd110720111009_
                       _tl110719111011_
                       _e110724111014_
                       _hd110723111017_
                       _tl110722111019_
                       _e110727111022_
                       _hd110726111025_
                       _tl110725111027_
                       _e110730111030_
                       _hd110729111033_
                       _tl110728111035_
                       _e110733111038_
                       _hd110732111041_
                       _tl110731111043_
                       _e110736111046_
                       _hd110735111049_
                       _tl110734111051_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_loop110740111083_
                                             _target110737111054_
                                             '())))
                                        (___match113136113137_
                                         _e110703110958_
                                         _hd110702110961_
                                         _tl110701110963_
                                         _e110715110990_
                                         _hd110714110993_
                                         _tl110713110995_
                                         _e110718110998_
                                         _hd110717111001_
                                         _tl110716111003_
                                         _e110721111006_
                                         _hd110720111009_
                                         _tl110719111011_
                                         _e110724111014_
                                         _hd110723111017_
                                         _tl110722111019_
                                         _e110727111022_
                                         _hd110726111025_
                                         _tl110725111027_
                                         _e110730111030_
                                         _hd110729111033_
                                         _tl110728111035_
                                         _e110733111038_
                                         _hd110732111041_
                                         _tl110731111043_
                                         _e110736111046_
                                         _hd110735111049_
                                         _tl110734111051_))
                                    (___match113136113137_
                                     _e110703110958_
                                     _hd110702110961_
                                     _tl110701110963_
                                     _e110715110990_
                                     _hd110714110993_
                                     _tl110713110995_
                                     _e110718110998_
                                     _hd110717111001_
                                     _tl110716111003_
                                     _e110721111006_
                                     _hd110720111009_
                                     _tl110719111011_
                                     _e110724111014_
                                     _hd110723111017_
                                     _tl110722111019_
                                     _e110727111022_
                                     _hd110726111025_
                                     _tl110725111027_
                                     _e110730111030_
                                     _hd110729111033_
                                     _tl110728111035_
                                     _e110733111038_
                                     _hd110732111041_
                                     _tl110731111043_
                                     _e110736111046_
                                     _hd110735111049_
                                     _tl110734111051_))))
                            (___match113136113137_
                             _e110703110958_
                             _hd110702110961_
                             _tl110701110963_
                             _e110715110990_
                             _hd110714110993_
                             _tl110713110995_
                             _e110718110998_
                             _hd110717111001_
                             _tl110716111003_
                             _e110721111006_
                             _hd110720111009_
                             _tl110719111011_
                             _e110724111014_
                             _hd110723111017_
                             _tl110722111019_
                             _e110727111022_
                             _hd110726111025_
                             _tl110725111027_
                             _e110730111030_
                             _hd110729111033_
                             _tl110728111035_
                             _e110733111038_
                             _hd110732111041_
                             _tl110731111043_
                             _e110736111046_
                             _hd110735111049_
                             _tl110734111051_))
                        (___match113136113137_
                         _e110703110958_
                         _hd110702110961_
                         _tl110701110963_
                         _e110715110990_
                         _hd110714110993_
                         _tl110713110995_
                         _e110718110998_
                         _hd110717111001_
                         _tl110716111003_
                         _e110721111006_
                         _hd110720111009_
                         _tl110719111011_
                         _e110724111014_
                         _hd110723111017_
                         _tl110722111019_
                         _e110727111022_
                         _hd110726111025_
                         _tl110725111027_
                         _e110730111030_
                         _hd110729111033_
                         _tl110728111035_
                         _e110733111038_
                         _hd110732111041_
                         _tl110731111043_
                         _e110736111046_
                         _hd110735111049_
                         _tl110734111051_))
                    (___match113136113137_
                     _e110703110958_
                     _hd110702110961_
                     _tl110701110963_
                     _e110715110990_
                     _hd110714110993_
                     _tl110713110995_
                     _e110718110998_
                     _hd110717111001_
                     _tl110716111003_
                     _e110721111006_
                     _hd110720111009_
                     _tl110719111011_
                     _e110724111014_
                     _hd110723111017_
                     _tl110722111019_
                     _e110727111022_
                     _hd110726111025_
                     _tl110725111027_
                     _e110730111030_
                     _hd110729111033_
                     _tl110728111035_
                     _e110733111038_
                     _hd110732111041_
                     _tl110731111043_
                     _e110736111046_
                     _hd110735111049_
                     _tl110734111051_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match113136113137_
                                                     _e110703110958_
                                                     _hd110702110961_
                                                     _tl110701110963_
                                                     _e110715110990_
                                                     _hd110714110993_
                                                     _tl110713110995_
                                                     _e110718110998_
                                                     _hd110717111001_
                                                     _tl110716111003_
                                                     _e110721111006_
                                                     _hd110720111009_
                                                     _tl110719111011_
                                                     _e110724111014_
                                                     _hd110723111017_
                                                     _tl110722111019_
                                                     _e110727111022_
                                                     _hd110726111025_
                                                     _tl110725111027_
                                                     _e110730111030_
                                                     _hd110729111033_
                                                     _tl110728111035_
                                                     _e110733111038_
                                                     _hd110732111041_
                                                     _tl110731111043_
                                                     _e110736111046_
                                                     _hd110735111049_
                                                     _tl110734111051_))))
                                            (___match113136113137_
                                             _e110703110958_
                                             _hd110702110961_
                                             _tl110701110963_
                                             _e110715110990_
                                             _hd110714110993_
                                             _tl110713110995_
                                             _e110718110998_
                                             _hd110717111001_
                                             _tl110716111003_
                                             _e110721111006_
                                             _hd110720111009_
                                             _tl110719111011_
                                             _e110724111014_
                                             _hd110723111017_
                                             _tl110722111019_
                                             _e110727111022_
                                             _hd110726111025_
                                             _tl110725111027_
                                             _e110730111030_
                                             _hd110729111033_
                                             _tl110728111035_
                                             _e110733111038_
                                             _hd110732111041_
                                             _tl110731111043_
                                             _e110736111046_
                                             _hd110735111049_
                                             _tl110734111051_))))
                                    (___match113136113137_
                                     _e110703110958_
                                     _hd110702110961_
                                     _tl110701110963_
                                     _e110715110990_
                                     _hd110714110993_
                                     _tl110713110995_
                                     _e110718110998_
                                     _hd110717111001_
                                     _tl110716111003_
                                     _e110721111006_
                                     _hd110720111009_
                                     _tl110719111011_
                                     _e110724111014_
                                     _hd110723111017_
                                     _tl110722111019_
                                     _e110727111022_
                                     _hd110726111025_
                                     _tl110725111027_
                                     _e110730111030_
                                     _hd110729111033_
                                     _tl110728111035_
                                     _e110733111038_
                                     _hd110732111041_
                                     _tl110731111043_
                                     _e110736111046_
                                     _hd110735111049_
                                     _tl110734111051_))
                                (___match113136113137_
                                 _e110703110958_
                                 _hd110702110961_
                                 _tl110701110963_
                                 _e110715110990_
                                 _hd110714110993_
                                 _tl110713110995_
                                 _e110718110998_
                                 _hd110717111001_
                                 _tl110716111003_
                                 _e110721111006_
                                 _hd110720111009_
                                 _tl110719111011_
                                 _e110724111014_
                                 _hd110723111017_
                                 _tl110722111019_
                                 _e110727111022_
                                 _hd110726111025_
                                 _tl110725111027_
                                 _e110730111030_
                                 _hd110729111033_
                                 _tl110728111035_
                                 _e110733111038_
                                 _hd110732111041_
                                 _tl110731111043_
                                 _e110736111046_
                                 _hd110735111049_
                                 _tl110734111051_))
                            (___kont113039113040_))))
                    (___kont113039113040_))
                (___kont113039113040_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont113039113040_))))
                                            (___kont113039113040_))))
                                    (___kont113039113040_))
                                (___kont113039113040_))))
                        (___kont113039113040_))
                    (___kont113039113040_))
                (___kont113039113040_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont113039113040_))))
                                        (___kont113039113040_))
                                    (___kont113039113040_))
                                (___kont113039113040_))))
                        (___kont113039113040_))))
                (___kont113039113040_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop110707110971_
                                       _target110704110966_
                                       '())))))
                               (___match113054113055_
                                (lambda (_e110655111218_
                                         _hd110654111221_
                                         _tl110653111223_
                                         ___splice113027113028_
                                         _target110656111226_
                                         _tl110658111228_)
                                  (letrec ((_loop110659111231_
                                            (lambda (_hd110657111234_
                                                     _arg110663111236_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110657111234_))
                                                  (let ((_e110660111239_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110657111234_))))
                                                    (let ((_lp-tl110662111244_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110660111239_)))
                                                          (_lp-hd110661111242_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110660111239_))))
                                                      (let ((__tmp114458
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd110661111242_ _arg110663111236_))))
                (declare (not safe))
                (_loop110659111231_ _lp-tl110662111244_ __tmp114458))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg110664111247_
                                                         (reverse _arg110663111236_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl110653111223_))
                                                        (let ((_e110667111250_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl110653111223_))))
                  (let ((_tl110665111255_
                         (let () (declare (not safe)) (##cdr _e110667111250_)))
                        (_hd110666111253_
                         (let ()
                           (declare (not safe))
                           (##car _e110667111250_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd110666111253_))
                        (let ((_e110670111258_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd110666111253_))))
                          (let ((_tl110668111263_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110670111258_)))
                                (_hd110669111261_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110670111258_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110669111261_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd110669111261_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110668111263_))
                                        (let ((_e110673111266_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110668111263_))))
                                          (let ((_tl110671111271_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110673111266_)))
                                                (_hd110672111269_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110673111266_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd110672111269_))
                                                (let ((_e110676111274_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd110672111269_))))
                                                  (let ((_tl110674111279_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e110676111274_)))
                                                        (_hd110675111277_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e110676111274_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd110675111277_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd110675111277_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl110674111279_))
                        (let ((_e110679111282_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl110674111279_))))
                          (let ((_tl110677111287_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110679111282_)))
                                (_hd110678111285_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110679111282_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl110677111287_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl110671111271_))
                                    (let ((___splice113029113030_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl110671111271_
                                              '0))))
                                      (let ((_tl110682111292_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice113029113030_
                                                '1)))
                                            (_target110680111290_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice113029113030_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl110682111292_))
                                            (letrec ((_loop110683111295_
                                                      (lambda (_hd110681111298_
                                                               _xarg110687111300_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _hd110681111298_))
                                                            (let ((_e110684111303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd110681111298_))))
                      (let ((_lp-tl110686111308_
                             (let ()
                               (declare (not safe))
                               (##cdr _e110684111303_)))
                            (_lp-hd110685111306_
                             (let ()
                               (declare (not safe))
                               (##car _e110684111303_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _lp-hd110685111306_))
                            (let ((_e110691111311_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _lp-hd110685111306_))))
                              (let ((_tl110689111316_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e110691111311_)))
                                    (_hd110690111314_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e110691111311_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd110690111314_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#ref _hd110690111314_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl110689111316_))
                                            (let ((_e110694111319_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl110689111316_))))
                                              (let ((_tl110692111324_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110694111319_)))
                                                    (_hd110693111322_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110694111319_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl110692111324_))
                                                    (let ((__tmp114457
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd110693111322_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xarg110687111300_))))
              (declare (not safe))
              (_loop110683111295_ _lp-tl110686111308_ __tmp114457))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match113066113067_
                                                     _e110655111218_
                                                     _hd110654111221_
                                                     _tl110653111223_
                                                     ___splice113027113028_
                                                     _target110656111226_
                                                     _tl110658111228_))))
                                            (___match113066113067_
                                             _e110655111218_
                                             _hd110654111221_
                                             _tl110653111223_
                                             ___splice113027113028_
                                             _target110656111226_
                                             _tl110658111228_))
                                        (___match113066113067_
                                         _e110655111218_
                                         _hd110654111221_
                                         _tl110653111223_
                                         ___splice113027113028_
                                         _target110656111226_
                                         _tl110658111228_))
                                    (___match113066113067_
                                     _e110655111218_
                                     _hd110654111221_
                                     _tl110653111223_
                                     ___splice113027113028_
                                     _target110656111226_
                                     _tl110658111228_))))
                            (___match113066113067_
                             _e110655111218_
                             _hd110654111221_
                             _tl110653111223_
                             ___splice113027113028_
                             _target110656111226_
                             _tl110658111228_))))
                    (let ((_xarg110688111327_ (reverse _xarg110687111300_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl110665111255_))
                          (let ((_L111330_ _xarg110688111327_)
                                (_L111331_ _hd110678111285_)
                                (_L111332_ _arg110664111247_))
                            (if (and (let ((__tmp114455
                                            (let ((__tmp114456
                                                   (lambda (_g111360111363_
                                                            _g111361111365_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g111360111363_
                                                             _g111361111365_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp114456
                                                      '()
                                                      _L111332_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp114455))
                                     (fx= (length (let ((__tmp114453
                                                         (lambda (_g111367111370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g111368111372_)
                   (let ()
                     (declare (not safe))
                     (cons _g111367111370_ _g111368111372_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp114453
                                                            '()
                                                            _L111332_)))
                                          (length (let ((__tmp114454
                                                         (lambda (_g111374111377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g111375111379_)
                   (let ()
                     (declare (not safe))
                     (cons _g111374111377_ _g111375111379_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp114454
                                                            '()
                                                            _L111330_))))
                                     (let ((__tmp114451
                                            (let ((__tmp114452
                                                   (lambda (_g111381111384_
                                                            _g111382111386_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g111381111384_
                                                             _g111382111386_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp114452
                                                      '()
                                                      _L111332_)))
                                           (__tmp114449
                                            (let ((__tmp114450
                                                   (lambda (_g111388111391_
                                                            _g111389111393_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g111388111391_
                                                             _g111389111393_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp114450
                                                      '()
                                                      _L111330_))))
                                       (declare (not safe))
                                       (andmap2 gx#free-identifier=?
                                                __tmp114451
                                                __tmp114449))
                                     (let ((__tmp114445
                                            (let ((__tmp114448
                                                   (lambda (_g111395111397_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _g111395111397_
                                                        _L111331_))))
                                                  (__tmp114446
                                                   (let ((__tmp114447
                                                          (lambda (_g111399111402_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g111400111404_)
                    (let ()
                      (declare (not safe))
                      (cons _g111399111402_ _g111400111404_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr1 __tmp114447
                                                             '()
                                                             _L111332_))))
                                              (declare (not safe))
                                              (find __tmp114448 __tmp114446))))
                                       (declare (not safe))
                                       (not __tmp114445)))
                                (___kont113025113026_
                                 _L111330_
                                 _L111331_
                                 _L111332_)
                                (___match113066113067_
                                 _e110655111218_
                                 _hd110654111221_
                                 _tl110653111223_
                                 ___splice113027113028_
                                 _target110656111226_
                                 _tl110658111228_)))
                          (___match113066113067_
                           _e110655111218_
                           _hd110654111221_
                           _tl110653111223_
                           ___splice113027113028_
                           _target110656111226_
                           _tl110658111228_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop110683111295_
                                                 _target110680111290_
                                                 '())))
                                            (___match113066113067_
                                             _e110655111218_
                                             _hd110654111221_
                                             _tl110653111223_
                                             ___splice113027113028_
                                             _target110656111226_
                                             _tl110658111228_))))
                                    (___match113066113067_
                                     _e110655111218_
                                     _hd110654111221_
                                     _tl110653111223_
                                     ___splice113027113028_
                                     _target110656111226_
                                     _tl110658111228_))
                                (___match113066113067_
                                 _e110655111218_
                                 _hd110654111221_
                                 _tl110653111223_
                                 ___splice113027113028_
                                 _target110656111226_
                                 _tl110658111228_))))
                        (___match113066113067_
                         _e110655111218_
                         _hd110654111221_
                         _tl110653111223_
                         ___splice113027113028_
                         _target110656111226_
                         _tl110658111228_))
                    (___match113066113067_
                     _e110655111218_
                     _hd110654111221_
                     _tl110653111223_
                     ___splice113027113028_
                     _target110656111226_
                     _tl110658111228_))
                (___match113066113067_
                 _e110655111218_
                 _hd110654111221_
                 _tl110653111223_
                 ___splice113027113028_
                 _target110656111226_
                 _tl110658111228_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match113066113067_
                                                 _e110655111218_
                                                 _hd110654111221_
                                                 _tl110653111223_
                                                 ___splice113027113028_
                                                 _target110656111226_
                                                 _tl110658111228_))))
                                        (___match113066113067_
                                         _e110655111218_
                                         _hd110654111221_
                                         _tl110653111223_
                                         ___splice113027113028_
                                         _target110656111226_
                                         _tl110658111228_))
                                    (___match113066113067_
                                     _e110655111218_
                                     _hd110654111221_
                                     _tl110653111223_
                                     ___splice113027113028_
                                     _target110656111226_
                                     _tl110658111228_))
                                (___match113066113067_
                                 _e110655111218_
                                 _hd110654111221_
                                 _tl110653111223_
                                 ___splice113027113028_
                                 _target110656111226_
                                 _tl110658111228_))))
                        (___match113066113067_
                         _e110655111218_
                         _hd110654111221_
                         _tl110653111223_
                         ___splice113027113028_
                         _target110656111226_
                         _tl110658111228_))))
                (___match113066113067_
                 _e110655111218_
                 _hd110654111221_
                 _tl110653111223_
                 ___splice113027113028_
                 _target110656111226_
                 _tl110658111228_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop110659111231_
                                       _target110656111226_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx113023113024_))
                              (let ((_e110655111218_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx113023113024_))))
                                (let ((_tl110653111223_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110655111218_)))
                                      (_hd110654111221_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110655111218_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd110654111221_))
                                      (let ((___splice113027113028_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd110654111221_
                                                '0))))
                                        (let ((_tl110658111228_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice113027113028_
                                                  '1)))
                                              (_target110656111226_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice113027113028_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl110658111228_))
                                              (___match113054113055_
                                               _e110655111218_
                                               _hd110654111221_
                                               _tl110653111223_
                                               ___splice113027113028_
                                               _target110656111226_
                                               _tl110658111228_)
                                              (___match113066113067_
                                               _e110655111218_
                                               _hd110654111221_
                                               _tl110653111223_
                                               ___splice113027113028_
                                               _target110656111226_
                                               _tl110658111228_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl110653111223_))
                                          (let ((_e110770110825_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl110653111223_))))
                                            (let ((_tl110768110830_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e110770110825_)))
                                                  (_hd110769110828_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e110770110825_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110769110828_))
                                                  (let ((_e110773110833_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110769110828_))))
                                                    (let ((_tl110771110838_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110773110833_)))
                                                          (_hd110772110836_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110773110833_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd110772110836_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _hd110772110836_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl110771110838_))
                          (let ((_e110776110841_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl110771110838_))))
                            (let ((_tl110774110846_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e110776110841_)))
                                  (_hd110775110844_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e110776110841_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd110775110844_))
                                  (let ((_e110779110849_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd110775110844_))))
                                    (let ((_tl110777110854_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e110779110849_)))
                                          (_hd110778110852_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e110779110849_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd110778110852_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd110778110852_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl110777110854_))
                                                  (let ((_e110782110857_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl110777110854_))))
                                                    (let ((_tl110780110862_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110782110857_)))
                                                          (_hd110781110860_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110782110857_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl110780110862_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl110774110846_))
                      (let ((_e110785110865_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl110774110846_))))
                        (let ((_tl110783110870_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110785110865_)))
                              (_hd110784110868_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110785110865_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd110784110868_))
                              (let ((_e110788110873_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd110784110868_))))
                                (let ((_tl110786110878_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110788110873_)))
                                      (_hd110787110876_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110788110873_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd110787110876_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd110787110876_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl110786110878_))
                                              (let ((_e110791110881_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl110786110878_))))
                                                (let ((_tl110789110886_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e110791110881_)))
                                                      (_hd110790110884_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e110791110881_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl110789110886_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl110783110870_))
                                                          (let ((_e110794110889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl110783110870_))))
                    (let ((_tl110792110894_
                           (let ()
                             (declare (not safe))
                             (##cdr _e110794110889_)))
                          (_hd110793110892_
                           (let ()
                             (declare (not safe))
                             (##car _e110794110889_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd110793110892_))
                          (let ((_e110797110897_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd110793110892_))))
                            (let ((_tl110795110902_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e110797110897_)))
                                  (_hd110796110900_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e110797110897_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd110796110900_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _hd110796110900_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl110795110902_))
                                          (let ((_e110800110905_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl110795110902_))))
                                            (let ((_tl110798110910_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e110800110905_)))
                                                  (_hd110799110908_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e110800110905_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl110798110910_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl110792110894_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl110768110830_))
                                                          (___match113164113165_
                                                           _e110655111218_
                                                           _hd110654111221_
                                                           _tl110653111223_
                                                           _e110770110825_
                                                           _hd110769110828_
                                                           _tl110768110830_
                                                           _e110773110833_
                                                           _hd110772110836_
                                                           _tl110771110838_
                                                           _e110776110841_
                                                           _hd110775110844_
                                                           _tl110774110846_
                                                           _e110779110849_
                                                           _hd110778110852_
                                                           _tl110777110854_
                                                           _e110782110857_
                                                           _hd110781110860_
                                                           _tl110780110862_
                                                           _e110785110865_
                                                           _hd110784110868_
                                                           _tl110783110870_
                                                           _e110788110873_
                                                           _hd110787110876_
                                                           _tl110786110878_
                                                           _e110791110881_
                                                           _hd110790110884_
                                                           _tl110789110886_
                                                           _e110794110889_
                                                           _hd110793110892_
                                                           _tl110792110894_
                                                           _e110797110897_
                                                           _hd110796110900_
                                                           _tl110795110902_
                                                           _e110800110905_
                                                           _hd110799110908_
                                                           _tl110798110910_)
                                                          (___kont113039113040_))
                                                      (___kont113039113040_))
                                                  (___kont113039113040_))))
                                          (___kont113039113040_))
                                      (___kont113039113040_))
                                  (___kont113039113040_))))
                          (___kont113039113040_))))
                  (___kont113039113040_))
              (___kont113039113040_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont113039113040_))
                                          (___kont113039113040_))
                                      (___kont113039113040_))))
                              (___kont113039113040_))))
                      (___kont113039113040_))
                  (___kont113039113040_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont113039113040_))
                                              (___kont113039113040_))
                                          (___kont113039113040_))))
                                  (___kont113039113040_))))
                          (___kont113039113040_))
                      (___kont113039113040_))
                  (___kont113039113040_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont113039113040_))))
                                          (___kont113039113040_)))))
                              (___kont113039113040_)))))))
                 (_dispatch-case-e109956_
                  (lambda (_hd110104_ _body110105_)
                    (let* ((_form110107_
                            (let ((__tmp114459
                                   (let ()
                                     (declare (not safe))
                                     (cons _body110105_ '()))))
                              (declare (not safe))
                              (cons _hd110104_ __tmp114459)))
                           (___stx113167113168_ _form110107_)
                           (_g110111110235_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx113167113168_)))))
                      (let ((___kont113169113170_
                             (lambda (_L110606_ _L110607_ _L110608_)
                               (let ((__tmp114460
                                      (let ((__tmp114462
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp114461
                                             (let ()
                                               (declare (not safe))
                                               (cons _L110607_ '()))))
                                        (declare (not safe))
                                        (cons __tmp114462 __tmp114461))))
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self109952_ __tmp114460))))
                            (___kont113175113176_
                             (lambda (_L110454_ _L110455_ _L110456_ _L110457_)
                               (let ((__tmp114463
                                      (let ((__tmp114465
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp114464
                                             (let ()
                                               (declare (not safe))
                                               (cons _L110454_ '()))))
                                        (declare (not safe))
                                        (cons __tmp114465 __tmp114464))))
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self109952_ __tmp114463))))
                            (___kont113179113180_
                             (lambda (_L110320_ _L110321_ _L110322_)
                               (let ((__tmp114466
                                      (let ((__tmp114468
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '%#ref)))
                                            (__tmp114467
                                             (let ()
                                               (declare (not safe))
                                               (cons _L110320_ '()))))
                                        (declare (not safe))
                                        (cons __tmp114468 __tmp114467))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _self109952_
                                  __tmp114466)))))
                        (let* ((___match113276113277_
                                (lambda (_e110203110240_
                                         _hd110202110243_
                                         _tl110201110245_
                                         _e110206110248_
                                         _hd110205110251_
                                         _tl110204110253_
                                         _e110209110256_
                                         _hd110208110259_
                                         _tl110207110261_
                                         _e110212110264_
                                         _hd110211110267_
                                         _tl110210110269_
                                         _e110215110272_
                                         _hd110214110275_
                                         _tl110213110277_
                                         _e110218110280_
                                         _hd110217110283_
                                         _tl110216110285_
                                         _e110221110288_
                                         _hd110220110291_
                                         _tl110219110293_
                                         _e110224110296_
                                         _hd110223110299_
                                         _tl110222110301_
                                         _e110227110304_
                                         _hd110226110307_
                                         _tl110225110309_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl110219110293_))
                                      (let ((_e110230110312_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl110219110293_))))
                                        (let ((_tl110228110317_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e110230110312_)))
                                              (_hd110229110315_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e110230110312_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl110228110317_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl110204110253_))
                                                  (___kont113179113180_
                                                   _hd110226110307_
                                                   _hd110217110283_
                                                   _hd110202110243_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g110111110235_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g110111110235_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g110111110235_)))))
                               (___match113206113207_
                                (lambda (_e110164110358_
                                         _hd110163110361_
                                         _tl110162110363_
                                         ___splice113177113178_
                                         _target110165110366_
                                         _tl110167110368_)
                                  (letrec ((_loop110168110371_
                                            (lambda (_hd110166110374_
                                                     _arg110172110376_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110166110374_))
                                                  (let ((_e110169110379_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110166110374_))))
                                                    (let ((_lp-tl110171110384_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110169110379_)))
                                                          (_lp-hd110170110382_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110169110379_))))
                                                      (let ((__tmp114469
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd110170110382_ _arg110172110376_))))
                (declare (not safe))
                (_loop110168110371_ _lp-tl110171110384_ __tmp114469))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg110173110387_
                                                         (reverse _arg110172110376_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl110162110363_))
                                                        (let ((_e110176110390_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl110162110363_))))
                  (let ((_tl110174110395_
                         (let () (declare (not safe)) (##cdr _e110176110390_)))
                        (_hd110175110393_
                         (let ()
                           (declare (not safe))
                           (##car _e110176110390_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd110175110393_))
                        (let ((_e110179110398_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd110175110393_))))
                          (let ((_tl110177110403_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110179110398_)))
                                (_hd110178110401_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110179110398_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110178110401_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd110178110401_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110177110403_))
                                        (let ((_e110182110406_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110177110403_))))
                                          (let ((_tl110180110411_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110182110406_)))
                                                (_hd110181110409_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110182110406_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd110181110409_))
                                                (let ((_e110185110414_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd110181110409_))))
                                                  (let ((_tl110183110419_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e110185110414_)))
                                                        (_hd110184110417_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e110185110414_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd110184110417_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd110184110417_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl110183110419_))
                        (let ((_e110188110422_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl110183110419_))))
                          (let ((_tl110186110427_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110188110422_)))
                                (_hd110187110425_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110188110422_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl110186110427_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl110180110411_))
                                    (let ((_e110191110430_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl110180110411_))))
                                      (let ((_tl110189110435_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e110191110430_)))
                                            (_hd110190110433_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e110191110430_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd110190110433_))
                                            (let ((_e110194110438_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd110190110433_))))
                                              (let ((_tl110192110443_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110194110438_)))
                                                    (_hd110193110441_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110194110438_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd110193110441_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd110193110441_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl110192110443_))
                                                            (let ((_e110197110446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl110192110443_))))
                      (let ((_tl110195110451_
                             (let ()
                               (declare (not safe))
                               (##cdr _e110197110446_)))
                            (_hd110196110449_
                             (let ()
                               (declare (not safe))
                               (##car _e110197110446_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl110195110451_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl110174110395_))
                                (___kont113175113176_
                                 _hd110196110449_
                                 _hd110187110425_
                                 _tl110167110368_
                                 _arg110173110387_)
                                (___match113276113277_
                                 _e110164110358_
                                 _hd110163110361_
                                 _tl110162110363_
                                 _e110176110390_
                                 _hd110175110393_
                                 _tl110174110395_
                                 _e110179110398_
                                 _hd110178110401_
                                 _tl110177110403_
                                 _e110182110406_
                                 _hd110181110409_
                                 _tl110180110411_
                                 _e110185110414_
                                 _hd110184110417_
                                 _tl110183110419_
                                 _e110188110422_
                                 _hd110187110425_
                                 _tl110186110427_
                                 _e110191110430_
                                 _hd110190110433_
                                 _tl110189110435_
                                 _e110194110438_
                                 _hd110193110441_
                                 _tl110192110443_
                                 _e110197110446_
                                 _hd110196110449_
                                 _tl110195110451_))
                            (let () (declare (not safe)) (_g110111110235_)))))
                    (let () (declare (not safe)) (_g110111110235_)))
                (let () (declare (not safe)) (_g110111110235_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g110111110235_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g110111110235_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g110111110235_)))
                                (let ()
                                  (declare (not safe))
                                  (_g110111110235_)))))
                        (let () (declare (not safe)) (_g110111110235_)))
                    (let () (declare (not safe)) (_g110111110235_)))
                (let () (declare (not safe)) (_g110111110235_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g110111110235_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g110111110235_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g110111110235_)))
                                (let ()
                                  (declare (not safe))
                                  (_g110111110235_)))))
                        (let () (declare (not safe)) (_g110111110235_)))))
                (let () (declare (not safe)) (_g110111110235_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop110168110371_
                                       _target110165110366_
                                       '())))))
                               (___match113194113195_
                                (lambda (_e110118110494_
                                         _hd110117110497_
                                         _tl110116110499_
                                         ___splice113171113172_
                                         _target110119110502_
                                         _tl110121110504_)
                                  (letrec ((_loop110122110507_
                                            (lambda (_hd110120110510_
                                                     _arg110126110512_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110120110510_))
                                                  (let ((_e110123110515_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110120110510_))))
                                                    (let ((_lp-tl110125110520_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110123110515_)))
                                                          (_lp-hd110124110518_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110123110515_))))
                                                      (let ((__tmp114471
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd110124110518_ _arg110126110512_))))
                (declare (not safe))
                (_loop110122110507_ _lp-tl110125110520_ __tmp114471))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_arg110127110523_
                                                         (reverse _arg110126110512_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl110116110499_))
                                                        (let ((_e110130110526_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl110116110499_))))
                  (let ((_tl110128110531_
                         (let () (declare (not safe)) (##cdr _e110130110526_)))
                        (_hd110129110529_
                         (let ()
                           (declare (not safe))
                           (##car _e110130110526_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd110129110529_))
                        (let ((_e110133110534_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd110129110529_))))
                          (let ((_tl110131110539_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110133110534_)))
                                (_hd110132110537_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110133110534_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _hd110132110537_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _hd110132110537_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl110131110539_))
                                        (let ((_e110136110542_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl110131110539_))))
                                          (let ((_tl110134110547_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e110136110542_)))
                                                (_hd110135110545_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e110136110542_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd110135110545_))
                                                (let ((_e110139110550_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd110135110545_))))
                                                  (let ((_tl110137110555_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e110139110550_)))
                                                        (_hd110138110553_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e110139110550_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _hd110138110553_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _hd110138110553_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _tl110137110555_))
                        (let ((_e110142110558_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl110137110555_))))
                          (let ((_tl110140110563_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e110142110558_)))
                                (_hd110141110561_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e110142110558_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl110140110563_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl110134110547_))
                                    (let ((___splice113173113174_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl110134110547_
                                              '0))))
                                      (let ((_tl110145110568_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice113173113174_
                                                '1)))
                                            (_target110143110566_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice113173113174_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl110145110568_))
                                            (letrec ((_loop110146110571_
                                                      (lambda (_hd110144110574_
                                                               _xarg110150110576_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _hd110144110574_))
                                                            (let ((_e110147110579_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd110144110574_))))
                      (let ((_lp-tl110149110584_
                             (let ()
                               (declare (not safe))
                               (##cdr _e110147110579_)))
                            (_lp-hd110148110582_
                             (let ()
                               (declare (not safe))
                               (##car _e110147110579_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _lp-hd110148110582_))
                            (let ((_e110154110587_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _lp-hd110148110582_))))
                              (let ((_tl110152110592_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e110154110587_)))
                                    (_hd110153110590_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e110154110587_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd110153110590_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#ref _hd110153110590_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl110152110592_))
                                            (let ((_e110157110595_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl110152110592_))))
                                              (let ((_tl110155110600_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e110157110595_)))
                                                    (_hd110156110598_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e110157110595_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl110155110600_))
                                                    (let ((__tmp114470
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _hd110156110598_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _xarg110150110576_))))
              (declare (not safe))
              (_loop110146110571_ _lp-tl110149110584_ __tmp114470))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match113206113207_
                                                     _e110118110494_
                                                     _hd110117110497_
                                                     _tl110116110499_
                                                     ___splice113171113172_
                                                     _target110119110502_
                                                     _tl110121110504_))))
                                            (___match113206113207_
                                             _e110118110494_
                                             _hd110117110497_
                                             _tl110116110499_
                                             ___splice113171113172_
                                             _target110119110502_
                                             _tl110121110504_))
                                        (___match113206113207_
                                         _e110118110494_
                                         _hd110117110497_
                                         _tl110116110499_
                                         ___splice113171113172_
                                         _target110119110502_
                                         _tl110121110504_))
                                    (___match113206113207_
                                     _e110118110494_
                                     _hd110117110497_
                                     _tl110116110499_
                                     ___splice113171113172_
                                     _target110119110502_
                                     _tl110121110504_))))
                            (___match113206113207_
                             _e110118110494_
                             _hd110117110497_
                             _tl110116110499_
                             ___splice113171113172_
                             _target110119110502_
                             _tl110121110504_))))
                    (let ((_xarg110151110603_ (reverse _xarg110150110576_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl110128110531_))
                          (___kont113169113170_
                           _xarg110151110603_
                           _hd110141110561_
                           _arg110127110523_)
                          (___match113206113207_
                           _e110118110494_
                           _hd110117110497_
                           _tl110116110499_
                           ___splice113171113172_
                           _target110119110502_
                           _tl110121110504_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_loop110146110571_
                                                 _target110143110566_
                                                 '())))
                                            (___match113206113207_
                                             _e110118110494_
                                             _hd110117110497_
                                             _tl110116110499_
                                             ___splice113171113172_
                                             _target110119110502_
                                             _tl110121110504_))))
                                    (___match113206113207_
                                     _e110118110494_
                                     _hd110117110497_
                                     _tl110116110499_
                                     ___splice113171113172_
                                     _target110119110502_
                                     _tl110121110504_))
                                (___match113206113207_
                                 _e110118110494_
                                 _hd110117110497_
                                 _tl110116110499_
                                 ___splice113171113172_
                                 _target110119110502_
                                 _tl110121110504_))))
                        (___match113206113207_
                         _e110118110494_
                         _hd110117110497_
                         _tl110116110499_
                         ___splice113171113172_
                         _target110119110502_
                         _tl110121110504_))
                    (___match113206113207_
                     _e110118110494_
                     _hd110117110497_
                     _tl110116110499_
                     ___splice113171113172_
                     _target110119110502_
                     _tl110121110504_))
                (___match113206113207_
                 _e110118110494_
                 _hd110117110497_
                 _tl110116110499_
                 ___splice113171113172_
                 _target110119110502_
                 _tl110121110504_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___match113206113207_
                                                 _e110118110494_
                                                 _hd110117110497_
                                                 _tl110116110499_
                                                 ___splice113171113172_
                                                 _target110119110502_
                                                 _tl110121110504_))))
                                        (___match113206113207_
                                         _e110118110494_
                                         _hd110117110497_
                                         _tl110116110499_
                                         ___splice113171113172_
                                         _target110119110502_
                                         _tl110121110504_))
                                    (___match113206113207_
                                     _e110118110494_
                                     _hd110117110497_
                                     _tl110116110499_
                                     ___splice113171113172_
                                     _target110119110502_
                                     _tl110121110504_))
                                (___match113206113207_
                                 _e110118110494_
                                 _hd110117110497_
                                 _tl110116110499_
                                 ___splice113171113172_
                                 _target110119110502_
                                 _tl110121110504_))))
                        (___match113206113207_
                         _e110118110494_
                         _hd110117110497_
                         _tl110116110499_
                         ___splice113171113172_
                         _target110119110502_
                         _tl110121110504_))))
                (___match113206113207_
                 _e110118110494_
                 _hd110117110497_
                 _tl110116110499_
                 ___splice113171113172_
                 _target110119110502_
                 _tl110121110504_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (let ()
                                      (declare (not safe))
                                      (_loop110122110507_
                                       _target110119110502_
                                       '()))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx113167113168_))
                              (let ((_e110118110494_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx113167113168_))))
                                (let ((_tl110116110499_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110118110494_)))
                                      (_hd110117110497_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110118110494_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _hd110117110497_))
                                      (let ((___splice113171113172_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _hd110117110497_
                                                '0))))
                                        (let ((_tl110121110504_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice113171113172_
                                                  '1)))
                                              (_target110119110502_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice113171113172_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl110121110504_))
                                              (___match113194113195_
                                               _e110118110494_
                                               _hd110117110497_
                                               _tl110116110499_
                                               ___splice113171113172_
                                               _target110119110502_
                                               _tl110121110504_)
                                              (___match113206113207_
                                               _e110118110494_
                                               _hd110117110497_
                                               _tl110116110499_
                                               ___splice113171113172_
                                               _target110119110502_
                                               _tl110121110504_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl110116110499_))
                                          (let ((_e110206110248_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl110116110499_))))
                                            (let ((_tl110204110253_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e110206110248_)))
                                                  (_hd110205110251_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e110206110248_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd110205110251_))
                                                  (let ((_e110209110256_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd110205110251_))))
                                                    (let ((_tl110207110261_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110209110256_)))
                                                          (_hd110208110259_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110209110256_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd110208110259_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _hd110208110259_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl110207110261_))
                          (let ((_e110212110264_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl110207110261_))))
                            (let ((_tl110210110269_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e110212110264_)))
                                  (_hd110211110267_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e110212110264_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd110211110267_))
                                  (let ((_e110215110272_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd110211110267_))))
                                    (let ((_tl110213110277_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e110215110272_)))
                                          (_hd110214110275_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e110215110272_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd110214110275_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd110214110275_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl110213110277_))
                                                  (let ((_e110218110280_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl110213110277_))))
                                                    (let ((_tl110216110285_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e110218110280_)))
                                                          (_hd110217110283_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e110218110280_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl110216110285_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl110210110269_))
                      (let ((_e110221110288_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl110210110269_))))
                        (let ((_tl110219110293_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e110221110288_)))
                              (_hd110220110291_
                               (let ()
                                 (declare (not safe))
                                 (##car _e110221110288_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd110220110291_))
                              (let ((_e110224110296_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd110220110291_))))
                                (let ((_tl110222110301_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e110224110296_)))
                                      (_hd110223110299_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e110224110296_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd110223110299_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd110223110299_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl110222110301_))
                                              (let ((_e110227110304_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl110222110301_))))
                                                (let ((_tl110225110309_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e110227110304_)))
                                                      (_hd110226110307_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e110227110304_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl110225110309_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl110219110293_))
                                                          (let ((_e110230110312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl110219110293_))))
                    (let ((_tl110228110317_
                           (let ()
                             (declare (not safe))
                             (##cdr _e110230110312_)))
                          (_hd110229110315_
                           (let ()
                             (declare (not safe))
                             (##car _e110230110312_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl110228110317_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl110204110253_))
                              (___kont113179113180_
                               _hd110226110307_
                               _hd110217110283_
                               _hd110117110497_)
                              (let () (declare (not safe)) (_g110111110235_)))
                          (let () (declare (not safe)) (_g110111110235_)))))
                  (let () (declare (not safe)) (_g110111110235_)))
              (let () (declare (not safe)) (_g110111110235_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g110111110235_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g110111110235_)))
                                      (let ()
                                        (declare (not safe))
                                        (_g110111110235_)))))
                              (let ()
                                (declare (not safe))
                                (_g110111110235_)))))
                      (let () (declare (not safe)) (_g110111110235_)))
                  (let () (declare (not safe)) (_g110111110235_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g110111110235_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g110111110235_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g110111110235_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g110111110235_)))))
                          (let () (declare (not safe)) (_g110111110235_)))
                      (let () (declare (not safe)) (_g110111110235_)))
                  (let () (declare (not safe)) (_g110111110235_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g110111110235_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g110111110235_))))))
                              (let ()
                                (declare (not safe))
                                (_g110111110235_))))))))
                 (_generate1109957_
                  (lambda (_args110092_ _arglen110093_ _hd110094_ _body110095_)
                    (let* ((_len110097_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _hd110094_)))
                           (_condition110099_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _hd110094_))
                                (if (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-decls-unsafe?))
                                    (let ((__tmp114486
                                           (let ((__tmp114487
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _len110097_ '()))))
                                             (declare (not safe))
                                             (cons _arglen110093_
                                                   __tmp114487))))
                                      (declare (not safe))
                                      (cons '##fx= __tmp114486))
                                    (let ((__tmp114480
                                           (let ((__tmp114481
                                                  (let ((__tmp114482
                                                         (let ((__tmp114483
                                                                (let ((__tmp114484
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114485
                                      (let ()
                                        (declare (not safe))
                                        (cons _len110097_ '()))))
                                 (declare (not safe))
                                 (cons _arglen110093_ __tmp114485))))
                          (declare (not safe))
                          (cons '##fx= __tmp114484))))
                   (declare (not safe))
                   (cons __tmp114483 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '(declare (not safe))
                                                          __tmp114482))))
                                             (declare (not safe))
                                             (cons '() __tmp114481))))
                                      (declare (not safe))
                                      (cons 'let __tmp114480)))
                                (if (> _len110097_ '0)
                                    (if (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-decls-unsafe?))
                                        (let ((__tmp114478
                                               (let ((__tmp114479
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _len110097_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _arglen110093_
                                                       __tmp114479))))
                                          (declare (not safe))
                                          (cons '##fx>= __tmp114478))
                                        (let ((__tmp114472
                                               (let ((__tmp114473
                                                      (let ((__tmp114474
                                                             (let ((__tmp114475
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114476
                                   (let ((__tmp114477
                                          (let ()
                                            (declare (not safe))
                                            (cons _len110097_ '()))))
                                     (declare (not safe))
                                     (cons _arglen110093_ __tmp114477))))
                              (declare (not safe))
                              (cons '##fx>= __tmp114476))))
                       (declare (not safe))
                       (cons __tmp114475 '()))))
                (declare (not safe))
                (cons '(declare (not safe)) __tmp114474))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '() __tmp114473))))
                                          (declare (not safe))
                                          (cons 'let __tmp114472)))
                                    '#t)))
                           (_dispatch110101_
                            (if (let ()
                                  (declare (not safe))
                                  (_dispatch-case?109955_
                                   _hd110094_
                                   _body110095_))
                                (let ()
                                  (declare (not safe))
                                  (_dispatch-case-e109956_
                                   _hd110094_
                                   _body110095_))
                                (let ()
                                  (declare (not safe))
                                  (gxc#generate-runtime-lambda-form
                                   _self109952_
                                   _hd110094_
                                   _body110095_)))))
                      (let ((__tmp114488
                             (let ((__tmp114489
                                    (let ((__tmp114490
                                           (let ((__tmp114491
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _args110092_ '()))))
                                             (declare (not safe))
                                             (cons _dispatch110101_
                                                   __tmp114491))))
                                      (declare (not safe))
                                      (cons 'apply __tmp114490))))
                               (declare (not safe))
                               (cons __tmp114489 '()))))
                        (declare (not safe))
                        (cons _condition110099_ __tmp114488))))))
          (let* ((_g109959109987_
                  (lambda (_g109960109984_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g109960109984_))))
                 (_g109958110089_
                  (lambda (_g109960109990_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g109960109990_))
                        (let ((_e109965109992_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g109960109990_))))
                          (let ((_hd109964109995_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e109965109992_)))
                                (_tl109963109997_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e109965109992_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl109963109997_))
                                (let ((_g114492_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl109963109997_
                                          '0))))
                                  (begin
                                    (let ((_g114493_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g114492_)
                                                 (##vector-length _g114492_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g114493_ 2)))
                                          (error "Context expects 2 values"
                                                 _g114493_)))
                                    (let ((_target109966110000_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g114492_ 0)))
                                          (_tl109968110002_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g114492_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl109968110002_))
                                          (letrec ((_loop109969110005_
                                                    (lambda (_hd109967110008_
                                                             _body109973110010_
                                                             _hd109974110012_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd109967110008_))
                                                          (let ((_e109970110015_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd109967110008_))))
                    (let ((_lp-hd109971110018_
                           (let ()
                             (declare (not safe))
                             (##car _e109970110015_)))
                          (_lp-tl109972110020_
                           (let ()
                             (declare (not safe))
                             (##cdr _e109970110015_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _lp-hd109971110018_))
                          (let ((_e109979110023_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _lp-hd109971110018_))))
                            (let ((_hd109978110026_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e109979110023_)))
                                  (_tl109977110028_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e109979110023_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl109977110028_))
                                  (let ((_e109982110031_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl109977110028_))))
                                    (let ((_hd109981110034_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e109982110031_)))
                                          (_tl109980110036_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e109982110031_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl109980110036_))
                                          (let ((__tmp114522
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd109981110034_
                                                         _body109973110010_)))
                                                (__tmp114521
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd109978110026_
                                                         _hd109974110012_))))
                                            (declare (not safe))
                                            (_loop109969110005_
                                             _lp-tl109972110020_
                                             __tmp114522
                                             __tmp114521))
                                          (let ()
                                            (declare (not safe))
                                            (_g109959109987_
                                             _g109960109990_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g109959109987_ _g109960109990_)))))
                          (let ()
                            (declare (not safe))
                            (_g109959109987_ _g109960109990_)))))
                  (let ((_body109975110039_ (reverse _body109973110010_))
                        (_hd109976110041_ (reverse _hd109974110012_)))
                    ((lambda (_L110044_ _L110045_)
                       (let ((_args110064_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_arglen110065_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_name110066_
                              (let ((_$e110061_
                                     (let ((__tmp114494
                                            (gxc#current-compile-runtime-names)))
                                       (declare (not safe))
                                       (hash-get __tmp114494 _stx109953_))))
                                (if _$e110061_
                                    _$e110061_
                                    ''case-lambda-dispatch))))
                         (let ((__tmp114495
                                (let ((__tmp114496
                                       (let ((__tmp114497
                                              (let ((__tmp114498
                                                     (let ((__tmp114511
                                                            (let ((__tmp114512
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114513
                                  (let ((__tmp114514
                                         (if (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls-unsafe?))
                                             (let ((__tmp114520
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _args110064_
                                                            '()))))
                                               (declare (not safe))
                                               (cons '##length __tmp114520))
                                             (let ((__tmp114515
                                                    (let ((__tmp114516
                                                           (let ((__tmp114517
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114518
                                 (let ((__tmp114519
                                        (let ()
                                          (declare (not safe))
                                          (cons _args110064_ '()))))
                                   (declare (not safe))
                                   (cons '##length __tmp114519))))
                            (declare (not safe))
                            (cons __tmp114518 '()))))
                     (declare (not safe))
                     (cons '(declare (not safe)) __tmp114517))))
              (declare (not safe))
              (cons '() __tmp114516))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'let __tmp114515)))))
                                    (declare (not safe))
                                    (cons __tmp114514 '()))))
                             (declare (not safe))
                             (cons _arglen110065_ __tmp114513))))
                      (declare (not safe))
                      (cons __tmp114512 '())))
                   (__tmp114499
                    (let ((__tmp114500
                           (let ((__tmp114501
                                  (let ((__tmp114505
                                         (let ((__tmp114506
                                                (let ((__tmp114507
                                                       (let ((__tmp114508
                                                              (let ((__tmp114509
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp114510
                                    (let ()
                                      (declare (not safe))
                                      (cons _args110064_ '()))))
                               (declare (not safe))
                               (cons _name110066_ __tmp114510))))
                        (declare (not safe))
                        (cons '##raise-wrong-number-of-arguments-exception
                              __tmp114509))))
                 (declare (not safe))
                 (cons __tmp114508 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons 'else __tmp114507))))
                                           (declare (not safe))
                                           (cons __tmp114506 '())))
                                        (__tmp114502
                                         (map (lambda (_g110067110070_
                                                       _g110068110072_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate1109957_
                                                   _args110064_
                                                   _arglen110065_
                                                   _g110067110070_
                                                   _g110068110072_)))
                                              (let ((__tmp114503
                                                     (lambda (_g110074110077_
                                                              _g110075110079_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g110074110077_
                                                               _g110075110079_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp114503
                                                        '()
                                                        _L110045_))
                                              (let ((__tmp114504
                                                     (lambda (_g110081110084_
                                                              _g110082110086_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g110081110084_
                                                               _g110082110086_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp114504
                                                        '()
                                                        _L110044_)))))
                                    (declare (not safe))
                                    (foldr1 cons __tmp114505 __tmp114502))))
                             (declare (not safe))
                             (cons 'cond __tmp114501))))
                      (declare (not safe))
                      (cons __tmp114500 '()))))
               (declare (not safe))
               (cons __tmp114511 __tmp114499))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons 'let __tmp114498))))
                                         (declare (not safe))
                                         (cons __tmp114497 '()))))
                                  (declare (not safe))
                                  (cons _args110064_ __tmp114496))))
                           (declare (not safe))
                           (cons 'lambda __tmp114495))))
                     _body109975110039_
                     _hd109976110041_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_loop109969110005_
                                               _target109966110000_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_g109959109987_
                                             _g109960109990_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g109959109987_ _g109960109990_)))))
                        (let ()
                          (declare (not safe))
                          (_g109959109987_ _g109960109990_))))))
            (declare (not safe))
            (_g109958110089_ _stx109953_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_self109223_ _stx109224_ _compiled-body?109225_)
        (letrec ((_generate-simple109227_
                  (lambda (_hd109937_ _body109938_)
                    (let ((__tmp114523
                           (let ((__tmp114524
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-simple-let
                                     _self109223_
                                     'let
                                     _hd109937_
                                     _body109938_
                                     _compiled-body?109225_))))
                             (declare (not safe))
                             (_coalesce-let*109229_ __tmp114524))))
                      (declare (not safe))
                      (_coalesce-boolean109228_ __tmp114523))))
                 (_coalesce-boolean109228_
                  (lambda (_code109798_)
                    (if (gxc#current-compile-boolean-context)
                        (let* ((_code109799109825_ _code109798_)
                               (_else109801109833_ (lambda () _code109798_))
                               (_K109803109870_
                                (lambda (_expr2109836_
                                         _expr1109837_
                                         _id109838_)
                                  (let* ((_expr2109839109847_ _expr2109836_)
                                         (_else109841109855_
                                          (lambda ()
                                            (let ((__tmp114525
                                                   (let ((__tmp114526
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _expr2109836_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _expr1109837_
                                                           __tmp114526))))
                                              (declare (not safe))
                                              (cons 'or __tmp114525))))
                                         (_K109843109860_
                                          (lambda (_exprs109858_)
                                            (let ((__tmp114527
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _expr1109837_
                                                           _exprs109858_))))
                                              (declare (not safe))
                                              (cons 'or __tmp114527)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _expr2109839109847_))
                                        (let ((_hd109844109863_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _expr2109839109847_)))
                                              (_tl109845109865_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _expr2109839109847_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd109844109863_ 'or))
                                              (let ((_exprs109868_
                                                     _tl109845109865_))
                                                (declare (not safe))
                                                (_K109843109860_
                                                 _exprs109868_))
                                              (let ()
                                                (declare (not safe))
                                                (_else109841109855_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else109841109855_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _code109799109825_))
                              (let ((_hd109804109873_
                                     (let ()
                                       (declare (not safe))
                                       (##car _code109799109825_)))
                                    (_tl109805109875_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _code109799109825_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _hd109804109873_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _tl109805109875_))
                                        (let ((_hd109806109878_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _tl109805109875_)))
                                              (_tl109807109880_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _tl109805109875_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _hd109806109878_))
                                              (let ((_hd109818109883_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _hd109806109878_)))
                                                    (_tl109819109885_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _hd109806109878_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _hd109818109883_))
                                                    (let ((_hd109820109888_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _hd109818109883_)))
                                                          (_tl109821109890_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _hd109818109883_))))
                                                      (let ((_id109893_
                                                             _hd109820109888_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _tl109821109890_))
                                                            (let ((_hd109822109895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _tl109821109890_)))
                          (_tl109823109897_
                           (let ()
                             (declare (not safe))
                             (##cdr _tl109821109890_))))
                      (let ((_expr1109900_ _hd109822109895_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _tl109823109897_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _tl109819109885_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl109807109880_))
                                    (let ((_hd109808109902_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl109807109880_)))
                                          (_tl109809109904_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl109807109880_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _hd109808109902_))
                                          (let ((_hd109810109907_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _hd109808109902_)))
                                                (_tl109811109909_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _hd109808109902_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _hd109810109907_ 'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl109811109909_))
                                                    (let ((_hd109812109912_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl109811109909_)))
                                                          (_tl109813109914_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl109811109909_))))
                                                      (if ((lambda (_g109916109918_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (eq? _g109916109918_ _id109893_)))
                   _hd109812109912_)
                  (if (let () (declare (not safe)) (##pair? _tl109813109914_))
                      (let ((_hd109814109921_
                             (let ()
                               (declare (not safe))
                               (##car _tl109813109914_)))
                            (_tl109815109923_
                             (let ()
                               (declare (not safe))
                               (##cdr _tl109813109914_))))
                        (if ((lambda (_g109925109927_)
                               (let ()
                                 (declare (not safe))
                                 (eq? _g109925109927_ _id109893_)))
                             _hd109814109921_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _tl109815109923_))
                                (let ((_hd109816109930_
                                       (let ()
                                         (declare (not safe))
                                         (##car _tl109815109923_)))
                                      (_tl109817109932_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _tl109815109923_))))
                                  (let ((_expr2109935_ _hd109816109930_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl109817109932_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _tl109809109904_))
                                            (let ()
                                              (declare (not safe))
                                              (_K109803109870_
                                               _expr2109935_
                                               _expr1109900_
                                               _id109893_))
                                            (let ()
                                              (declare (not safe))
                                              (_else109801109833_)))
                                        (let ()
                                          (declare (not safe))
                                          (_else109801109833_)))))
                                (let ()
                                  (declare (not safe))
                                  (_else109801109833_)))
                            (let ()
                              (declare (not safe))
                              (_else109801109833_))))
                      (let () (declare (not safe)) (_else109801109833_)))
                  (let () (declare (not safe)) (_else109801109833_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else109801109833_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_else109801109833_))))
                                          (let ()
                                            (declare (not safe))
                                            (_else109801109833_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else109801109833_)))
                                (let ()
                                  (declare (not safe))
                                  (_else109801109833_)))
                            (let ()
                              (declare (not safe))
                              (_else109801109833_)))))
                    (let () (declare (not safe)) (_else109801109833_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else109801109833_))))
                                              (let ()
                                                (declare (not safe))
                                                (_else109801109833_))))
                                        (let ()
                                          (declare (not safe))
                                          (_else109801109833_)))
                                    (let ()
                                      (declare (not safe))
                                      (_else109801109833_))))
                              (let ()
                                (declare (not safe))
                                (_else109801109833_))))
                        _code109798_)))
                 (_coalesce-let*109229_
                  (lambda (_code109531_)
                    (let* ((_code109532109596_ _code109531_)
                           (_else109536109604_ (lambda () _code109531_)))
                      (let ((_K109578109749_
                             (lambda (_body109745_ _expr109746_ _id109747_)
                               (let ((__tmp114528
                                      (let ((__tmp114529
                                             (let ((__tmp114530
                                                    (let ((__tmp114531
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr109746_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id109747_ __tmp114531))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114530 '()))))
                                        (declare (not safe))
                                        (cons __tmp114529 _body109745_))))
                                 (declare (not safe))
                                 (cons 'let __tmp114528))))
                            (_K109555109674_
                             (lambda (_body109668_
                                      _expr2109669_
                                      _id2109670_
                                      _expr1109671_
                                      _id1109672_)
                               (let ((__tmp114532
                                      (let ((__tmp114533
                                             (let ((__tmp114537
                                                    (let ((__tmp114538
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr1109671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id1109672_ __tmp114538)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp114534
                                                    (let ((__tmp114535
                                                           (let ((__tmp114536
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _expr2109669_ '()))))
                     (declare (not safe))
                     (cons _id2109670_ __tmp114536))))
              (declare (not safe))
              (cons __tmp114535 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114537
                                                     __tmp114534))))
                                        (declare (not safe))
                                        (cons __tmp114533 _body109668_))))
                                 (declare (not safe))
                                 (cons 'let* __tmp114532))))
                            (_K109538109613_
                             (lambda (_body109608_
                                      _bind109609_
                                      _expr1109610_
                                      _id1109611_)
                               (let ((__tmp114539
                                      (let ((__tmp114540
                                             (let ((__tmp114541
                                                    (let ((__tmp114542
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _expr1109610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _id1109611_ __tmp114542))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114541
                                                     _bind109609_))))
                                        (declare (not safe))
                                        (cons __tmp114540 _body109608_))))
                                 (declare (not safe))
                                 (cons 'let* __tmp114539)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _code109532109596_))
                            (let ((_tl109580109754_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _code109532109596_)))
                                  (_hd109579109752_
                                   (let ()
                                     (declare (not safe))
                                     (##car _code109532109596_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd109579109752_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _tl109580109754_))
                                      (let ((_tl109582109759_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _tl109580109754_)))
                                            (_hd109581109757_
                                             (let ()
                                               (declare (not safe))
                                               (##car _tl109580109754_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _hd109581109757_))
                                            (let ((_tl109590109764_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _hd109581109757_)))
                                                  (_hd109589109762_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _hd109581109757_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _hd109589109762_))
                                                  (let ((_tl109592109769_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _hd109589109762_)))
                                                        (_hd109591109767_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _hd109589109762_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _tl109592109769_))
                                                        (let ((_tl109594109776_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _tl109592109769_)))
                      (_hd109593109774_
                       (let () (declare (not safe)) (##car _tl109592109769_))))
                  (if (let () (declare (not safe)) (##null? _tl109594109776_))
                      (if (let ()
                            (declare (not safe))
                            (##null? _tl109590109764_))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _tl109582109759_))
                              (let ((_tl109584109783_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _tl109582109759_)))
                                    (_hd109583109781_
                                     (let ()
                                       (declare (not safe))
                                       (##car _tl109582109759_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _hd109583109781_))
                                    (let ((_tl109586109788_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _hd109583109781_)))
                                          (_hd109585109786_
                                           (let ()
                                             (declare (not safe))
                                             (##car _hd109583109781_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd109585109786_ 'let))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _tl109586109788_))
                                              (let ((_tl109588109793_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _tl109586109788_)))
                                                    (_hd109587109791_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _tl109586109788_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _hd109587109791_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl109584109783_))
                                                        (let ((_id109772_
                                                               _hd109591109767_)
                                                              (_expr109779_
                                                               _hd109593109774_)
                                                              (_body109796_
                                                               _tl109588109793_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K109578109749_
                                                             _body109796_
                                                             _expr109779_
                                                             _id109772_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_else109536109604_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _hd109587109791_))
                                                        (let ((_tl109567109723_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _hd109587109791_)))
                      (_hd109566109721_
                       (let () (declare (not safe)) (##car _hd109587109791_))))
                  (if (let () (declare (not safe)) (##pair? _hd109566109721_))
                      (let ((_tl109569109728_
                             (let ()
                               (declare (not safe))
                               (##cdr _hd109566109721_)))
                            (_hd109568109726_
                             (let ()
                               (declare (not safe))
                               (##car _hd109566109721_))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl109569109728_))
                            (let ((_tl109571109735_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl109569109728_)))
                                  (_hd109570109733_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl109569109728_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl109571109735_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl109567109723_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl109584109783_))
                                          (let ((_id1109697_ _hd109591109767_)
                                                (_expr1109704_
                                                 _hd109593109774_)
                                                (_id2109731_ _hd109568109726_)
                                                (_expr2109738_
                                                 _hd109570109733_)
                                                (_body109740_
                                                 _tl109588109793_))
                                            (let ()
                                              (declare (not safe))
                                              (_K109555109674_
                                               _body109740_
                                               _expr2109738_
                                               _id2109731_
                                               _expr1109704_
                                               _id1109697_)))
                                          (let ()
                                            (declare (not safe))
                                            (_else109536109604_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else109536109604_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else109536109604_))))
                            (let ()
                              (declare (not safe))
                              (_else109536109604_))))
                      (let () (declare (not safe)) (_else109536109604_))))
                (let () (declare (not safe)) (_else109536109604_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_else109536109604_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _hd109585109786_ 'let*))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _tl109586109788_))
                                                  (let ((_tl109548109657_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _tl109586109788_)))
                                                        (_hd109547109655_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _tl109586109788_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _tl109584109783_))
                                                        (let ((_id1109636_
                                                               _hd109591109767_)
                                                              (_expr1109643_
                                                               _hd109593109774_)
                                                              (_bind109660_
                                                               _hd109547109655_)
                                                              (_body109662_
                                                               _tl109548109657_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_K109538109613_
                                                             _body109662_
                                                             _bind109660_
                                                             _expr1109643_
                                                             _id1109636_)))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_else109536109604_))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else109536109604_)))
                                              (let ()
                                                (declare (not safe))
                                                (_else109536109604_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_else109536109604_))))
                              (let ()
                                (declare (not safe))
                                (_else109536109604_)))
                          (let () (declare (not safe)) (_else109536109604_)))
                      (let () (declare (not safe)) (_else109536109604_))))
                (let () (declare (not safe)) (_else109536109604_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_else109536109604_))))
                                            (let ()
                                              (declare (not safe))
                                              (_else109536109604_))))
                                      (let ()
                                        (declare (not safe))
                                        (_else109536109604_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else109536109604_))))
                            (let ()
                              (declare (not safe))
                              (_else109536109604_)))))))
                 (_generate-values109230_
                  (lambda (_hd109344_ _body109345_)
                    (let _lp109347_ ((_rest109349_ _hd109344_)
                                     (_bind109350_ '())
                                     (_check109351_ '())
                                     (_post109352_ '()))
                      (let* ((___stx113478113479_ _rest109349_)
                             (_g109355109366_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx113478113479_)))))
                        (let ((___kont113480113481_
                               (lambda (_L109393_ _L109394_)
                                 (let* ((___stx113434113435_ _L109394_)
                                        (_g109409109434_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx113434113435_)))))
                                   (let ((___kont113436113437_
                                          (lambda (_L109507_ _L109508_)
                                            (let ((_eid109522_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _L109508_)))
                                                  (_expr109523_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self109223_
                                                      _L109507_))))
                                              (let ((__tmp114543
                                                     (let ((__tmp114544
                                                            (let ((__tmp114545
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr109523_ '()))))
                      (declare (not safe))
                      (cons _eid109522_ __tmp114545))))
               (declare (not safe))
               (cons __tmp114544 _bind109350_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp109347_
                                                 _L109393_
                                                 __tmp114543
                                                 _check109351_
                                                 _post109352_)))))
                                         (___kont113438113439_
                                          (lambda (_L109455_ _L109456_)
                                            (let* ((_vals109469_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_check-values109471_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _vals109469_
                                                       _L109456_
                                                       _L109455_)))
                                                   (_refs109473_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _vals109469_
                                                       _L109456_)))
                                                   (_expr109475_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self109223_
                                                       _L109455_))))
                                              (let ((__tmp114548
                                                     (let ((__tmp114549
                                                            (let ((__tmp114550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr109475_ '()))))
                      (declare (not safe))
                      (cons _vals109469_ __tmp114550))))
               (declare (not safe))
               (cons __tmp114549 _bind109350_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp114547
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _check-values109471_
                                                             _check109351_)))
                                                    (__tmp114546
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _refs109473_
                                                             _post109352_))))
                                                (declare (not safe))
                                                (_lp109347_
                                                 _L109393_
                                                 __tmp114548
                                                 __tmp114547
                                                 __tmp114546))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx113434113435_))
                                         (let ((_e109415109483_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx113434113435_))))
                                           (let ((_tl109413109488_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e109415109483_)))
                                                 (_hd109414109486_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e109415109483_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _hd109414109486_))
                                                 (let ((_e109418109491_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _hd109414109486_))))
                                                   (let ((_tl109416109496_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e109418109491_)))
                                                         (_hd109417109494_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e109418109491_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl109416109496_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl109413109488_))
                     (let ((_e109421109499_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl109413109488_))))
                       (let ((_tl109419109504_
                              (let ()
                                (declare (not safe))
                                (##cdr _e109421109499_)))
                             (_hd109420109502_
                              (let ()
                                (declare (not safe))
                                (##car _e109421109499_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl109419109504_))
                             (___kont113436113437_
                              _hd109420109502_
                              _hd109417109494_)
                             (let () (declare (not safe)) (_g109409109434_)))))
                     (let () (declare (not safe)) (_g109409109434_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl109413109488_))
                     (let ((_e109429109447_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl109413109488_))))
                       (let ((_tl109427109452_
                              (let ()
                                (declare (not safe))
                                (##cdr _e109429109447_)))
                             (_hd109428109450_
                              (let ()
                                (declare (not safe))
                                (##car _e109429109447_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl109427109452_))
                             (___kont113438113439_
                              _hd109428109450_
                              _hd109414109486_)
                             (let () (declare (not safe)) (_g109409109434_)))))
                     (let () (declare (not safe)) (_g109409109434_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl109413109488_))
                                                     (let ((_e109429109447_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl109413109488_))))
                                                       (let ((_tl109427109452_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e109429109447_)))
                     (_hd109428109450_
                      (let () (declare (not safe)) (##car _e109429109447_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl109427109452_))
                     (___kont113438113439_ _hd109428109450_ _hd109414109486_)
                     (let () (declare (not safe)) (_g109409109434_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g109409109434_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g109409109434_)))))))
                              (___kont113482113483_
                               (lambda ()
                                 (let* ((_body109373_
                                         (if _compiled-body?109225_
                                             _body109345_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self109223_
                                                _body109345_))))
                                        (_body109375_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-post109231_
                                            _post109352_
                                            _body109373_)))
                                        (_body109377_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-check109232_
                                            _check109351_
                                            _body109375_))))
                                   (let ((__tmp114551
                                          (let ((__tmp114553
                                                 (reverse _bind109350_))
                                                (__tmp114552
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _body109377_ '()))))
                                            (declare (not safe))
                                            (cons __tmp114553 __tmp114552))))
                                     (declare (not safe))
                                     (cons 'let __tmp114551))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx113478113479_))
                              (let ((_e109361109385_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx113478113479_))))
                                (let ((_tl109359109390_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e109361109385_)))
                                      (_hd109360109388_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e109361109385_))))
                                  (___kont113480113481_
                                   _tl109359109390_
                                   _hd109360109388_)))
                              (___kont113482113483_)))))))
                 (_generate-values-post109231_
                  (lambda (_post109303_ _body109304_)
                    (let _lp109306_ ((_rest109308_ _post109303_)
                                     (_body109309_ _body109304_))
                      (let* ((_rest109310109318_ _rest109308_)
                             (_else109312109326_ (lambda () _body109309_))
                             (_K109314109332_
                              (lambda (_rest109329_ _bind109330_)
                                (let ((__tmp114554
                                       (let ((__tmp114555
                                              (let ((__tmp114556
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _body109309_
                                                             '()))))
                                                (declare (not safe))
                                                (cons _bind109330_
                                                      __tmp114556))))
                                         (declare (not safe))
                                         (cons 'let __tmp114555))))
                                  (declare (not safe))
                                  (_lp109306_ _rest109329_ __tmp114554)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest109310109318_))
                            (let ((_hd109315109335_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest109310109318_)))
                                  (_tl109316109337_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest109310109318_))))
                              (let* ((_bind109340_ _hd109315109335_)
                                     (_rest109342_ _tl109316109337_))
                                (declare (not safe))
                                (_K109314109332_ _rest109342_ _bind109340_)))
                            (let ()
                              (declare (not safe))
                              (_else109312109326_)))))))
                 (_generate-values-check109232_
                  (lambda (_check109300_ _body109301_)
                    (let ((__tmp114557
                           (let ((__tmp114559
                                  (let ()
                                    (declare (not safe))
                                    (cons _body109301_ '())))
                                 (__tmp114558 (reverse _check109300_)))
                             (declare (not safe))
                             (foldr1 cons __tmp114559 __tmp114558))))
                      (declare (not safe))
                      (cons 'begin __tmp114557)))))
          (let* ((_g109234109251_
                  (lambda (_g109235109248_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g109235109248_))))
                 (_g109233109297_
                  (lambda (_g109235109254_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g109235109254_))
                        (let ((_e109240109256_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g109235109254_))))
                          (let ((_hd109239109259_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e109240109256_)))
                                (_tl109238109261_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e109240109256_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl109238109261_))
                                (let ((_e109243109264_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl109238109261_))))
                                  (let ((_hd109242109267_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e109243109264_)))
                                        (_tl109241109269_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e109243109264_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl109241109269_))
                                        (let ((_e109246109272_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl109241109269_))))
                                          (let ((_hd109245109275_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e109246109272_)))
                                                (_tl109244109277_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e109246109272_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl109244109277_))
                                                ((lambda (_L109280_ _L109281_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L109281_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-simple109227_
                                                          _L109281_
                                                          _L109280_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values109230_
                                                          _L109281_
                                                          _L109280_))))
                                                 _hd109245109275_
                                                 _hd109242109267_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g109234109251_
                                                   _g109235109254_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g109234109251_ _g109235109254_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g109234109251_ _g109235109254_)))))
                        (let ()
                          (declare (not safe))
                          (_g109234109251_ _g109235109254_))))))
            (declare (not safe))
            (_g109233109297_ _stx109224_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_self109943_ _stx109944_)
        (let ((_compiled-body?109946_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-let-values%__%
           _self109943_
           _stx109944_
           _compiled-body?109946_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g114561_
        (let ((_g114560_ (let () (declare (not safe)) (##length _g114561_))))
          (cond ((let () (declare (not safe)) (##fx= _g114560_ 2))
                 (apply (lambda (_self109943_ _stx109944_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__0
                             _self109943_
                             _stx109944_)))
                        _g114561_))
                ((let () (declare (not safe)) (##fx= _g114560_ 3))
                 (apply (lambda (_self109948_
                                 _stx109949_
                                 _compiled-body?109950_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-let-values%__%
                             _self109948_
                             _stx109949_
                             _compiled-body?109950_)))
                        _g114561_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g114561_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_vals109117_ _hd109118_)
        (let _lp109120_ ((_rest109122_ _hd109118_)
                         (_k109123_ '0)
                         (_r109124_ '()))
          (let* ((___stx113492113493_ _rest109122_)
                 (_g109129109146_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx113492113493_)))))
            (let ((___kont113494113495_
                   (lambda (_L109209_)
                     (let ((__tmp114562
                            (let () (declare (not safe)) (fx+ _k109123_ '1))))
                       (declare (not safe))
                       (_lp109120_ _L109209_ __tmp114562 _r109124_))))
                  (___kont113496113497_
                   (lambda (_L109182_ _L109183_)
                     (let ((__tmp114568
                            (let () (declare (not safe)) (fx+ _k109123_ '1)))
                           (__tmp114563
                            (let ((__tmp114564
                                   (let ((__tmp114567
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-binding-id
                                             _L109183_)))
                                         (__tmp114565
                                          (let ((__tmp114566
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-values-ref
                                                    _vals109117_
                                                    _k109123_
                                                    _L109182_))))
                                            (declare (not safe))
                                            (cons __tmp114566 '()))))
                                     (declare (not safe))
                                     (cons __tmp114567 __tmp114565))))
                              (declare (not safe))
                              (cons __tmp114564 _r109124_))))
                       (declare (not safe))
                       (_lp109120_ _L109182_ __tmp114568 __tmp114563))))
                  (___kont113498113499_
                   (lambda (_L109158_)
                     (let ((__tmp114569
                            (let ((__tmp114570
                                   (let ((__tmp114573
                                          (let ()
                                            (declare (not safe))
                                            (gxc#generate-runtime-binding-id
                                             _L109158_)))
                                         (__tmp114571
                                          (let ((__tmp114572
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-values->list
                                                    _vals109117_
                                                    _k109123_))))
                                            (declare (not safe))
                                            (cons __tmp114572 '()))))
                                     (declare (not safe))
                                     (cons __tmp114573 __tmp114571))))
                              (declare (not safe))
                              (cons __tmp114570 '()))))
                       (declare (not safe))
                       (foldl1 cons __tmp114569 _r109124_))))
                  (___kont113500113501_ (lambda () (reverse _r109124_))))
              (let ((_g109127109169_
                     (lambda ()
                       (let ((_L109158_ ___stx113492113493_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _L109158_))
                             (___kont113498113499_ _L109158_)
                             (___kont113500113501_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx113492113493_))
                    (let ((_e109134109198_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx113492113493_))))
                      (let ((_tl109132109203_
                             (let ()
                               (declare (not safe))
                               (##cdr _e109134109198_)))
                            (_hd109133109201_
                             (let ()
                               (declare (not safe))
                               (##car _e109134109198_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _hd109133109201_))
                            (let ((_e109135109206_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd109133109201_))))
                              (if (let ()
                                    (declare (not safe))
                                    (equal? _e109135109206_ '#f))
                                  (___kont113494113495_ _tl109132109203_)
                                  (___kont113496113497_
                                   _tl109132109203_
                                   _hd109133109201_)))
                            (___kont113496113497_
                             _tl109132109203_
                             _hd109133109201_))))
                    (let () (declare (not safe)) (_g109127109169_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_self108796_ _stx108797_ _compiled-body?108798_)
        (letrec ((_generate-simple108800_
                  (lambda (_hd109102_ _body109103_)
                    (let ()
                      (declare (not safe))
                      (gxc#generate-runtime-simple-let
                       _self108796_
                       'letrec
                       _hd109102_
                       _body109103_
                       _compiled-body?108798_))))
                 (_generate-values108801_
                  (lambda (_hd108881_ _body108882_)
                    (let _lp108884_ ((_rest108886_ _hd108881_)
                                     (_bind108887_ '())
                                     (_check108888_ '())
                                     (_post108889_ '()))
                      (let* ((___stx113566113567_ _rest108886_)
                             (_g108892108903_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx113566113567_)))))
                        (let ((___kont113568113569_
                               (lambda (_L108930_ _L108931_)
                                 (let* ((___stx113522113523_ _L108931_)
                                        (_g108946108971_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx113522113523_)))))
                                   (let ((___kont113524113525_
                                          (lambda (_L109078_ _L109079_)
                                            (let ((_eid109093_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _L109079_)))
                                                  (_expr109094_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self108796_
                                                      _L109078_))))
                                              (let ((__tmp114574
                                                     (let ((__tmp114575
                                                            (let ((__tmp114576
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (cons _expr109094_ '()))))
                      (declare (not safe))
                      (cons _eid109093_ __tmp114576))))
               (declare (not safe))
               (cons __tmp114575 _bind108887_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_lp108884_
                                                 _L108930_
                                                 __tmp114574
                                                 _check108888_
                                                 _post108889_)))))
                                         (___kont113526113527_
                                          (lambda (_L108992_ _L108993_)
                                            (let* ((_vals109006_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_check-values109008_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-check-values
                                                       _vals109006_
                                                       _L108993_
                                                       _L108992_)))
                                                   (_refs109010_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-let-values-bind
                                                       _vals109006_
                                                       _L108993_)))
                                                   (_expr109012_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _self108796_
                                                       _L108992_))))
                                              (let ((__tmp114579
                                                     (let ((__tmp114582
                                                            (let ((__tmp114583
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114584
                                  (let ()
                                    (declare (not safe))
                                    (cons _expr109012_ '()))))
                             (declare (not safe))
                             (cons _vals109006_ __tmp114584))))
                      (declare (not safe))
                      (cons __tmp114583 _bind108887_)))
                   (__tmp114580
                    (map (lambda (_e109014109016_)
                           (let* ((_g109018109027_ _e109014109016_)
                                  (_E109020109031_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _g109018109027_))))
                                  (_K109021109036_
                                   (lambda (_eid109034_)
                                     (let ((__tmp114581
                                            (let ()
                                              (declare (not safe))
                                              (cons '#!void '()))))
                                       (declare (not safe))
                                       (cons _eid109034_ __tmp114581)))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _g109018109027_))
                                 (let ((_hd109022109039_
                                        (let ()
                                          (declare (not safe))
                                          (##car _g109018109027_)))
                                       (_tl109023109041_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _g109018109027_))))
                                   (let ((_eid109044_ _hd109022109039_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##pair? _tl109023109041_))
                                         (let ((_tl109025109046_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _tl109023109041_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##null? _tl109025109046_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_K109021109036_ _eid109044_))
                                               (let ()
                                                 (declare (not safe))
                                                 (_E109020109031_))))
                                         (let ()
                                           (declare (not safe))
                                           (_E109020109031_)))))
                                 (let ()
                                   (declare (not safe))
                                   (_E109020109031_)))))
                         _refs109010_)))
               (declare (not safe))
               (foldl1 cons __tmp114582 __tmp114580)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp114578
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _check-values109008_
                                                             _check108888_)))
                                                    (__tmp114577
                                                     (let ()
                                                       (declare (not safe))
                                                       (foldl1 cons
                                                               _refs109010_
                                                               _post108889_))))
                                                (declare (not safe))
                                                (_lp108884_
                                                 _L108930_
                                                 __tmp114579
                                                 __tmp114578
                                                 __tmp114577))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx113522113523_))
                                         (let ((_e108952109054_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx113522113523_))))
                                           (let ((_tl108950109059_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e108952109054_)))
                                                 (_hd108951109057_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e108952109054_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _hd108951109057_))
                                                 (let ((_e108955109062_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _hd108951109057_))))
                                                   (let ((_tl108953109067_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e108955109062_)))
                                                         (_hd108954109065_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e108955109062_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl108953109067_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl108950109059_))
                     (let ((_e108958109070_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl108950109059_))))
                       (let ((_tl108956109075_
                              (let ()
                                (declare (not safe))
                                (##cdr _e108958109070_)))
                             (_hd108957109073_
                              (let ()
                                (declare (not safe))
                                (##car _e108958109070_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl108956109075_))
                             (___kont113524113525_
                              _hd108957109073_
                              _hd108954109065_)
                             (let () (declare (not safe)) (_g108946108971_)))))
                     (let () (declare (not safe)) (_g108946108971_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _tl108950109059_))
                     (let ((_e108966108984_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl108950109059_))))
                       (let ((_tl108964108989_
                              (let ()
                                (declare (not safe))
                                (##cdr _e108966108984_)))
                             (_hd108965108987_
                              (let ()
                                (declare (not safe))
                                (##car _e108966108984_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl108964108989_))
                             (___kont113526113527_
                              _hd108965108987_
                              _hd108951109057_)
                             (let () (declare (not safe)) (_g108946108971_)))))
                     (let () (declare (not safe)) (_g108946108971_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl108950109059_))
                                                     (let ((_e108966108984_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl108950109059_))))
                                                       (let ((_tl108964108989_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e108966108984_)))
                     (_hd108965108987_
                      (let () (declare (not safe)) (##car _e108966108984_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl108964108989_))
                     (___kont113526113527_ _hd108965108987_ _hd108951109057_)
                     (let () (declare (not safe)) (_g108946108971_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g108946108971_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_g108946108971_)))))))
                              (___kont113570113571_
                               (lambda ()
                                 (let* ((_body108910_
                                         (if _compiled-body?108798_
                                             _body108882_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self108796_
                                                _body108882_))))
                                        (_body108912_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-post108803_
                                            _post108889_
                                            _body108910_)))
                                        (_body108914_
                                         (let ()
                                           (declare (not safe))
                                           (_generate-values-check108802_
                                            _check108888_
                                            _body108912_))))
                                   (let ((__tmp114585
                                          (let ((__tmp114587
                                                 (reverse _bind108887_))
                                                (__tmp114586
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _body108914_ '()))))
                                            (declare (not safe))
                                            (cons __tmp114587 __tmp114586))))
                                     (declare (not safe))
                                     (cons 'letrec __tmp114585))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? ___stx113566113567_))
                              (let ((_e108898108922_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e ___stx113566113567_))))
                                (let ((_tl108896108927_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e108898108922_)))
                                      (_hd108897108925_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e108898108922_))))
                                  (___kont113568113569_
                                   _tl108896108927_
                                   _hd108897108925_)))
                              (___kont113570113571_)))))))
                 (_generate-values-check108802_
                  (lambda (_check108878_ _body108879_)
                    (let ((__tmp114588
                           (let ((__tmp114590
                                  (let ()
                                    (declare (not safe))
                                    (cons _body108879_ '())))
                                 (__tmp114589 (reverse _check108878_)))
                             (declare (not safe))
                             (foldr1 cons __tmp114590 __tmp114589))))
                      (declare (not safe))
                      (cons 'begin __tmp114588))))
                 (_generate-values-post108803_
                  (lambda (_post108871_ _body108872_)
                    (let ((__tmp114591
                           (let ((__tmp114593
                                  (let ()
                                    (declare (not safe))
                                    (cons _body108872_ '())))
                                 (__tmp114592
                                  (map (lambda (_g108873108875_)
                                         (let ()
                                           (declare (not safe))
                                           (cons 'set! _g108873108875_)))
                                       (reverse _post108871_))))
                             (declare (not safe))
                             (foldr1 cons __tmp114593 __tmp114592))))
                      (declare (not safe))
                      (cons 'begin __tmp114591)))))
          (let* ((_g108805108822_
                  (lambda (_g108806108819_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g108806108819_))))
                 (_g108804108868_
                  (lambda (_g108806108825_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g108806108825_))
                        (let ((_e108811108827_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g108806108825_))))
                          (let ((_hd108810108830_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108811108827_)))
                                (_tl108809108832_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108811108827_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl108809108832_))
                                (let ((_e108814108835_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl108809108832_))))
                                  (let ((_hd108813108838_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e108814108835_)))
                                        (_tl108812108840_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e108814108835_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl108812108840_))
                                        (let ((_e108817108843_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl108812108840_))))
                                          (let ((_hd108816108846_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108817108843_)))
                                                (_tl108815108848_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108817108843_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl108815108848_))
                                                ((lambda (_L108851_ _L108852_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L108852_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-simple108800_
                                                          _L108852_
                                                          _L108851_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values108801_
                                                          _L108852_
                                                          _L108851_))))
                                                 _hd108816108846_
                                                 _hd108813108838_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g108805108822_
                                                   _g108806108825_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g108805108822_ _g108806108825_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g108805108822_ _g108806108825_)))))
                        (let ()
                          (declare (not safe))
                          (_g108805108822_ _g108806108825_))))))
            (declare (not safe))
            (_g108804108868_ _stx108797_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_self109108_ _stx109109_)
        (let ((_compiled-body?109111_ '#f))
          (declare (not safe))
          (gxc#generate-runtime-letrec-values%__%
           _self109108_
           _stx109109_
           _compiled-body?109111_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g114595_
        (let ((_g114594_ (let () (declare (not safe)) (##length _g114595_))))
          (cond ((let () (declare (not safe)) (##fx= _g114594_ 2))
                 (apply (lambda (_self109108_ _stx109109_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__0
                             _self109108_
                             _stx109109_)))
                        _g114595_))
                ((let () (declare (not safe)) (##fx= _g114594_ 3))
                 (apply (lambda (_self109113_
                                 _stx109114_
                                 _compiled-body?109115_)
                          (let ()
                            (declare (not safe))
                            (gxc#generate-runtime-letrec-values%__%
                             _self109113_
                             _stx109114_
                             _compiled-body?109115_)))
                        _g114595_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g114595_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_self108377_ _stx108378_)
        (letrec ((_generate-values108380_
                  (lambda (_hd108623_ _body108624_)
                    (let _lp108626_ ((_rest108628_ _hd108623_)
                                     (_bind108629_ '()))
                      (let* ((_rest108630108638_ _rest108628_)
                             (_else108632108649_
                              (lambda ()
                                (let ((_bind108646_ (reverse _bind108629_))
                                      (_body108647_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self108377_
                                          _body108624_))))
                                  (let ((__tmp114596
                                         (let ((__tmp114597
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _body108647_ '()))))
                                           (declare (not safe))
                                           (cons _bind108646_ __tmp114597))))
                                    (declare (not safe))
                                    (cons 'letrec* __tmp114596)))))
                             (_K108634108783_
                              (lambda (_rest108652_ _hd-bind108653_)
                                (let* ((___stx113580113581_ _hd-bind108653_)
                                       (_g108656108681_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx113580113581_)))))
                                  (let ((___kont113582113583_
                                         (lambda (_L108762_ _L108763_)
                                           (let ((_eid108777_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _L108763_)))
                                                 (_expr108778_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _self108377_
                                                     _L108762_))))
                                             (let ((__tmp114598
                                                    (let ((__tmp114599
                                                           (let ((__tmp114600
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _expr108778_ '()))))
                     (declare (not safe))
                     (cons _eid108777_ __tmp114600))))
              (declare (not safe))
              (cons __tmp114599 _bind108629_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp108626_
                                                _rest108652_
                                                __tmp114598)))))
                                        (___kont113584113585_
                                         (lambda (_L108702_ _L108703_)
                                           (let* ((_vals108722_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_tmp108724_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_check-values108726_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-check-values
                                                      _tmp108724_
                                                      _L108703_
                                                      _L108702_)))
                                                  (_refs108728_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-let-values-bind
                                                      _vals108722_
                                                      _L108703_)))
                                                  (_expr108730_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self108377_
                                                      _L108702_))))
                                             (let ((__tmp114601
                                                    (let ((__tmp114602
                                                           (let ((__tmp114603
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114604
                                 (let ((__tmp114605
                                        (let ((__tmp114606
                                               (let ((__tmp114609
                                                      (let ((__tmp114610
                                                             (let ((__tmp114611
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _expr108730_ '()))))
                       (declare (not safe))
                       (cons _tmp108724_ __tmp114611))))
                (declare (not safe))
                (cons __tmp114610 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp114607
                                                      (let ((__tmp114608
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _tmp108724_ '()))))
                (declare (not safe))
                (cons _check-values108726_ __tmp114608))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp114609
                                                       __tmp114607))))
                                          (declare (not safe))
                                          (cons 'let __tmp114606))))
                                   (declare (not safe))
                                   (cons __tmp114605 '()))))
                            (declare (not safe))
                            (cons _vals108722_ __tmp114604))))
                     (declare (not safe))
                     (cons __tmp114603 _bind108629_))))
              (declare (not safe))
              (foldl1 cons __tmp114602 _refs108728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (_lp108626_
                                                _rest108652_
                                                __tmp114601))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx113580113581_))
                                        (let ((_e108662108738_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx113580113581_))))
                                          (let ((_tl108660108743_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108662108738_)))
                                                (_hd108661108741_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108662108738_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _hd108661108741_))
                                                (let ((_e108665108746_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd108661108741_))))
                                                  (let ((_tl108663108751_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e108665108746_)))
                                                        (_hd108664108749_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e108665108746_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl108663108751_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl108660108743_))
                                                            (let ((_e108668108754_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl108660108743_))))
                      (let ((_tl108666108759_
                             (let ()
                               (declare (not safe))
                               (##cdr _e108668108754_)))
                            (_hd108667108757_
                             (let ()
                               (declare (not safe))
                               (##car _e108668108754_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl108666108759_))
                            (___kont113582113583_
                             _hd108667108757_
                             _hd108664108749_)
                            (let () (declare (not safe)) (_g108656108681_)))))
                    (let () (declare (not safe)) (_g108656108681_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl108660108743_))
                    (let ((_e108676108694_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl108660108743_))))
                      (let ((_tl108674108699_
                             (let ()
                               (declare (not safe))
                               (##cdr _e108676108694_)))
                            (_hd108675108697_
                             (let ()
                               (declare (not safe))
                               (##car _e108676108694_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl108674108699_))
                            (___kont113584113585_
                             _hd108675108697_
                             _hd108661108741_)
                            (let () (declare (not safe)) (_g108656108681_)))))
                    (let () (declare (not safe)) (_g108656108681_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl108660108743_))
                                                    (let ((_e108676108694_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl108660108743_))))
                                                      (let ((_tl108674108699_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e108676108694_)))
                    (_hd108675108697_
                     (let () (declare (not safe)) (##car _e108676108694_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl108674108699_))
                    (___kont113584113585_ _hd108675108697_ _hd108661108741_)
                    (let () (declare (not safe)) (_g108656108681_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g108656108681_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g108656108681_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108630108638_))
                            (let ((_hd108635108786_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108630108638_)))
                                  (_tl108636108788_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108630108638_))))
                              (let* ((_hd-bind108791_ _hd108635108786_)
                                     (_rest108793_ _tl108636108788_))
                                (declare (not safe))
                                (_K108634108783_
                                 _rest108793_
                                 _hd-bind108791_)))
                            (let ()
                              (declare (not safe))
                              (_else108632108649_)))))))
                 (_generate-letrec?108381_
                  (lambda (_hd108513_)
                    (let _lp108515_ ((_rest108517_ _hd108513_))
                      (let* ((_rest108518108526_ _rest108517_)
                             (_else108520108534_ (lambda () '#t))
                             (_K108522108611_
                              (lambda (_rest108537_ _hd-bind108538_)
                                (let* ((_g108540108557_
                                        (lambda (_g108541108554_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _g108541108554_))))
                                       (_g108539108608_
                                        (lambda (_g108541108560_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _g108541108560_))
                                              (let ((_e108546108562_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _g108541108560_))))
                                                (let ((_hd108545108565_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e108546108562_)))
                                                      (_tl108544108567_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e108546108562_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd108545108565_))
                                                      (let ((_e108549108570_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd108545108565_))))
                (let ((_hd108548108573_
                       (let () (declare (not safe)) (##car _e108549108570_)))
                      (_tl108547108575_
                       (let () (declare (not safe)) (##cdr _e108549108570_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl108547108575_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl108544108567_))
                          (let ((_e108552108578_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl108544108567_))))
                            (let ((_hd108551108581_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e108552108578_)))
                                  (_tl108550108583_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e108552108578_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl108550108583_))
                                  ((lambda (_L108586_ _L108587_)
                                     (if (let ()
                                           (declare (not safe))
                                           (_is-lambda-expr?108382_ _L108586_))
                                         (let ()
                                           (declare (not safe))
                                           (_lp108515_ _rest108537_))
                                         '#f))
                                   _hd108551108581_
                                   _hd108548108573_)
                                  (let ()
                                    (declare (not safe))
                                    (_g108540108557_ _g108541108560_)))))
                          (let ()
                            (declare (not safe))
                            (_g108540108557_ _g108541108560_)))
                      (let ()
                        (declare (not safe))
                        (_g108540108557_ _g108541108560_)))))
              (let ()
                (declare (not safe))
                (_g108540108557_ _g108541108560_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g108540108557_
                                                 _g108541108560_))))))
                                  (declare (not safe))
                                  (_g108539108608_ _hd-bind108538_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest108518108526_))
                            (let ((_hd108523108614_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest108518108526_)))
                                  (_tl108524108616_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest108518108526_))))
                              (let* ((_hd-bind108619_ _hd108523108614_)
                                     (_rest108621_ _tl108524108616_))
                                (declare (not safe))
                                (_K108522108611_
                                 _rest108621_
                                 _hd-bind108619_)))
                            (let ()
                              (declare (not safe))
                              (_else108520108534_)))))))
                 (_is-lambda-expr?108382_
                  (lambda (_expr108450_)
                    (let* ((___stx113624113625_ _expr108450_)
                           (_g108453108467_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 ___stx113624113625_)))))
                      (let ((___kont113626113627_
                             (lambda (_L108495_ _L108496_) '#t))
                            (___kont113628113629_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? ___stx113624113625_))
                            (let ((_e108459108479_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e ___stx113624113625_))))
                              (let ((_tl108457108484_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e108459108479_)))
                                    (_hd108458108482_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e108459108479_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd108458108482_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd108458108482_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl108457108484_))
                                            (let ((_e108462108487_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl108457108484_))))
                                              (let ((_tl108460108492_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e108462108487_)))
                                                    (_hd108461108490_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e108462108487_))))
                                                (___kont113626113627_
                                                 _tl108460108492_
                                                 _hd108461108490_)))
                                            (___kont113628113629_))
                                        (___kont113628113629_))
                                    (___kont113628113629_))))
                            (___kont113628113629_)))))))
          (let* ((_g108384108401_
                  (lambda (_g108385108398_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g108385108398_))))
                 (_g108383108447_
                  (lambda (_g108385108404_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g108385108404_))
                        (let ((_e108390108406_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g108385108404_))))
                          (let ((_hd108389108409_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108390108406_)))
                                (_tl108388108411_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108390108406_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl108388108411_))
                                (let ((_e108393108414_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl108388108411_))))
                                  (let ((_hd108392108417_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e108393108414_)))
                                        (_tl108391108419_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e108393108414_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl108391108419_))
                                        (let ((_e108396108422_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl108391108419_))))
                                          (let ((_hd108395108425_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e108396108422_)))
                                                (_tl108394108427_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e108396108422_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl108394108427_))
                                                ((lambda (_L108430_ _L108431_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-simple-let?
                                                          _L108431_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-letrec?108381_
                                                              _L108431_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _self108377_
                                                              'letrec
                                                              _L108431_
                                                              _L108430_
                                                              '#f))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-simple-let
                                                              _self108377_
                                                              'letrec*
                                                              _L108431_
                                                              _L108430_
                                                              '#f)))
                                                       (let ()
                                                         (declare (not safe))
                                                         (_generate-values108380_
                                                          _L108431_
                                                          _L108430_))))
                                                 _hd108395108425_
                                                 _hd108392108417_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g108384108401_
                                                   _g108385108404_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g108384108401_ _g108385108404_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g108384108401_ _g108385108404_)))))
                        (let ()
                          (declare (not safe))
                          (_g108384108401_ _g108385108404_))))))
            (declare (not safe))
            (_g108383108447_ _stx108378_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_hd108314_)
        (let _lp108316_ ((_rest108318_ _hd108314_))
          (let* ((_rest108319108335_ _rest108318_)
                 (_else108322108343_ (lambda () '#f)))
            (let ((_K108325108356_
                   (lambda (_rest108354_)
                     (let () (declare (not safe)) (_lp108316_ _rest108354_))))
                  (_K108324108348_ (lambda () '#t)))
              (let ((_try-match108321108351_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _rest108319108335_))
                           (let () (declare (not safe)) (_K108324108348_))
                           (let ()
                             (declare (not safe))
                             (_else108322108343_))))))
                (if (let () (declare (not safe)) (##pair? _rest108319108335_))
                    (let ((_tl108327108361_
                           (let ()
                             (declare (not safe))
                             (##cdr _rest108319108335_)))
                          (_hd108326108359_
                           (let ()
                             (declare (not safe))
                             (##car _rest108319108335_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _hd108326108359_))
                          (let ((_tl108329108366_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _hd108326108359_)))
                                (_hd108328108364_
                                 (let ()
                                   (declare (not safe))
                                   (##car _hd108326108359_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd108328108364_))
                                (let ((_tl108333108369_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd108328108364_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl108333108369_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _tl108329108366_))
                                          (let ((_tl108331108372_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _tl108329108366_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _tl108331108372_))
                                                (let ((_rest108375_
                                                       _tl108327108361_))
                                                  (declare (not safe))
                                                  (_lp108316_ _rest108375_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_else108322108343_))))
                                          (let ()
                                            (declare (not safe))
                                            (_else108322108343_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else108322108343_))))
                                (let ()
                                  (declare (not safe))
                                  (_else108322108343_))))
                          (let () (declare (not safe)) (_else108322108343_))))
                    (let ()
                      (declare (not safe))
                      (_try-match108321108351_)))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_self108225_
               _form108226_
               _hd108227_
               _body108228_
               _compiled-body?108229_)
        (letrec ((_generate1108231_
                  (lambda (_bind108270_)
                    (let* ((_bind108271108282_ _bind108270_)
                           (_E108273108286_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _bind108271108282_))))
                           (_K108274108292_
                            (lambda (_expr108289_ _id108290_)
                              (let ((__tmp114614
                                     (let ()
                                       (declare (not safe))
                                       (gxc#generate-runtime-binding-id*
                                        _id108290_)))
                                    (__tmp114612
                                     (let ((__tmp114613
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self108225_
                                               _expr108289_))))
                                       (declare (not safe))
                                       (cons __tmp114613 '()))))
                                (declare (not safe))
                                (cons __tmp114614 __tmp114612)))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _bind108271108282_))
                          (let ((_hd108275108295_
                                 (let ()
                                   (declare (not safe))
                                   (##car _bind108271108282_)))
                                (_tl108276108297_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _bind108271108282_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _hd108275108295_))
                                (let ((_hd108279108300_
                                       (let ()
                                         (declare (not safe))
                                         (##car _hd108275108295_)))
                                      (_tl108280108302_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _hd108275108295_))))
                                  (let ((_id108305_ _hd108279108300_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _tl108280108302_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl108276108297_))
                                            (let ((_hd108277108307_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl108276108297_)))
                                                  (_tl108278108309_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl108276108297_))))
                                              (let ((_expr108312_
                                                     _hd108277108307_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _tl108278108309_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_K108274108292_
                                                       _expr108312_
                                                       _id108305_))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_E108273108286_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_E108273108286_)))
                                        (let ()
                                          (declare (not safe))
                                          (_E108273108286_)))))
                                (let ()
                                  (declare (not safe))
                                  (_E108273108286_))))
                          (let () (declare (not safe)) (_E108273108286_)))))))
          (let* ((_bind108233_ (map _generate1108231_ _hd108227_))
                 (_body108235_
                  (if _compiled-body?108229_
                      _body108228_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _self108225_ _body108228_))))
                 (_body108267_
                  (let* ((_body108236108244_ _body108235_)
                         (_else108238108252_
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (cons _body108235_ '()))))
                         (_K108240108257_
                          (lambda (_exprs108255_) _exprs108255_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _body108236108244_))
                        (let ((_hd108241108260_
                               (let ()
                                 (declare (not safe))
                                 (##car _body108236108244_)))
                              (_tl108242108262_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _body108236108244_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _hd108241108260_ 'begin))
                              (let ((_exprs108265_ _tl108242108262_))
                                (declare (not safe))
                                (_K108240108257_ _exprs108265_))
                              (let ()
                                (declare (not safe))
                                (_else108238108252_))))
                        (let () (declare (not safe)) (_else108238108252_))))))
            (let ((__tmp114615
                   (let ()
                     (declare (not safe))
                     (cons _bind108233_ _body108267_))))
              (declare (not safe))
              (cons _form108226_ __tmp114615))))))
    (define gxc#generate-runtime-quote%
      (lambda (_self108132_ _stx108133_)
        (letrec ((_generate1108135_
                  (lambda (_datum108187_)
                    (if (or (let () (declare (not safe)) (null? _datum108187_))
                            (interned-symbol? _datum108187_)
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _datum108187_))
                            (let ()
                              (declare (not safe))
                              (eof-object? _datum108187_)))
                        _datum108187_
                        (if (uninterned-symbol? _datum108187_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _datum108187_
                               '#t))
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _datum108187_))
                                (let ((__tmp114620
                                       (let ((__tmp114621 (car _datum108187_)))
                                         (declare (not safe))
                                         (_generate1108135_ __tmp114621)))
                                      (__tmp114618
                                       (let ((__tmp114619 (cdr _datum108187_)))
                                         (declare (not safe))
                                         (_generate1108135_ __tmp114619))))
                                  (declare (not safe))
                                  (cons __tmp114620 __tmp114618))
                                (if (let ()
                                      (declare (not safe))
                                      (box? _datum108187_))
                                    (let ((__tmp114616
                                           (let ((__tmp114617
                                                  (unbox _datum108187_)))
                                             (declare (not safe))
                                             (_generate1108135_ __tmp114617))))
                                      (declare (not safe))
                                      (box __tmp114616))
                                    (if (let ()
                                          (declare (not safe))
                                          (vector? _datum108187_))
                                        (vector-map
                                         _generate1108135_
                                         _datum108187_)
                                        (if (or (s8vector? _datum108187_)
                                                (let ()
                                                  (declare (not safe))
                                                  (u8vector? _datum108187_))
                                                (s16vector? _datum108187_)
                                                (u16vector? _datum108187_)
                                                (s32vector? _datum108187_)
                                                (u32vector? _datum108187_)
                                                (s64vector? _datum108187_)
                                                (u64vector? _datum108187_)
                                                (f32vector? _datum108187_)
                                                (f64vector? _datum108187_))
                                            _datum108187_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _stx108133_)))))))))))
          (let* ((_g108137108150_
                  (lambda (_g108138108147_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g108138108147_))))
                 (_g108136108184_
                  (lambda (_g108138108153_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g108138108153_))
                        (let ((_e108142108155_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g108138108153_))))
                          (let ((_hd108141108158_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e108142108155_)))
                                (_tl108140108160_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e108142108155_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl108140108160_))
                                (let ((_e108145108163_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl108140108160_))))
                                  (let ((_hd108144108166_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e108145108163_)))
                                        (_tl108143108168_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e108145108163_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl108143108168_))
                                        ((lambda (_L108171_)
                                           (let ((__tmp114622
                                                  (let ((__tmp114623
                                                         (let ((__tmp114624
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _L108171_))))
                   (declare (not safe))
                   (_generate1108135_ __tmp114624))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114623 '()))))
                                             (declare (not safe))
                                             (cons 'quote __tmp114622)))
                                         _hd108144108166_)
                                        (let ()
                                          (declare (not safe))
                                          (_g108137108150_ _g108138108153_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g108137108150_ _g108138108153_)))))
                        (let ()
                          (declare (not safe))
                          (_g108137108150_ _g108138108153_))))))
            (declare (not safe))
            (_g108136108184_ _stx108133_)))))
    (define gxc#generate-runtime-call%
      (lambda (_self107645_ _stx107646_)
        (letrec ((_compile-call107648_
                  (lambda (_rator107872_ _rands107873_)
                    (let ((_rator107879_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self107645_ _rator107872_)))
                          (_rands107880_
                           (map (lambda (_g107874107876_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self107645_
                                     _g107874107876_)))
                                _rands107873_)))
                      (let* ((___stx113671113672_ _rator107879_)
                             (_g107883107935_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   ___stx113671113672_)))))
                        (let ((___kont113673113674_
                               (lambda (_L108059_
                                        _L108060_
                                        _L108061_
                                        _L108062_)
                                 (if (fx= (length _rands107880_)
                                          (length (let ((__tmp114629
                                                         (lambda (_g108098108101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g108099108103_)
                   (let ()
                     (declare (not safe))
                     (cons _g108098108101_ _g108099108103_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr1 __tmp114629
                                                            '()
                                                            _L108061_))))
                                     (let* ((_id108106_ _L108062_)
                                            (_args108115_
                                             (let ((__tmp114625
                                                    (lambda (_g108107108110_
                                                             _g108108108112_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g108107108110_
                                                              _g108108108112_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp114625
                                                       '()
                                                       _L108061_)))
                                            (_body108124_
                                             (let ((__tmp114626
                                                    (lambda (_g108116108119_
                                                             _g108117108121_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _g108116108119_
                                                              _g108117108121_)))))
                                               (declare (not safe))
                                               (foldr1 __tmp114626
                                                       '()
                                                       _L108060_)))
                                            (_init108126_
                                             (map list
                                                  _args108115_
                                                  _rands107880_)))
                                       (let ((__tmp114627
                                              (let ((__tmp114628
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _init108126_
                                                             _body108124_))))
                                                (declare (not safe))
                                                (cons _id108106_
                                                      __tmp114628))))
                                         (declare (not safe))
                                         (cons 'let __tmp114627)))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _stx107646_)))))
                              (___kont113679113680_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (cons _rator107879_ _rands107880_)))))
                          (let ((___match113738113739_
                                 (lambda (_e107891107947_
                                          _hd107890107950_
                                          _tl107889107952_
                                          _e107894107955_
                                          _hd107893107958_
                                          _tl107892107960_
                                          _e107897107963_
                                          _hd107896107966_
                                          _tl107895107968_
                                          _e107900107971_
                                          _hd107899107974_
                                          _tl107898107976_
                                          _e107903107979_
                                          _hd107902107982_
                                          _tl107901107984_
                                          _e107906107987_
                                          _hd107905107990_
                                          _tl107904107992_
                                          _e107909107995_
                                          _hd107908107998_
                                          _tl107907108000_
                                          ___splice113675113676_
                                          _target107910108003_
                                          _tl107912108005_)
                                   (letrec ((_loop107913108008_
                                             (lambda (_hd107911108011_
                                                      _arg107917108013_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd107911108011_))
                                                   (let ((_e107914108016_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd107911108011_))))
                                                     (let ((_lp-tl107916108021_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e107914108016_)))
                                                           (_lp-hd107915108019_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e107914108016_))))
                                                       (let ((__tmp114631
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _lp-hd107915108019_ _arg107917108013_))))
                 (declare (not safe))
                 (_loop107913108008_ _lp-tl107916108021_ __tmp114631))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_arg107918108024_
                                                          (reverse _arg107917108013_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _tl107907108000_))
                                                         (let ((___splice113677113678_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _tl107907108000_ '0))))
                   (let ((_tl107921108029_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice113677113678_ '1)))
                         (_target107919108027_
                          (let ()
                            (declare (not safe))
                            (##vector-ref ___splice113677113678_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl107921108029_))
                         (letrec ((_loop107922108032_
                                   (lambda (_hd107920108035_
                                            _body107926108037_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd107920108035_))
                                         (let ((_e107923108040_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd107920108035_))))
                                           (let ((_lp-tl107925108045_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e107923108040_)))
                                                 (_lp-hd107924108043_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e107923108040_))))
                                             (let ((__tmp114630
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd107924108043_
                                                            _body107926108037_))))
                                               (declare (not safe))
                                               (_loop107922108032_
                                                _lp-tl107925108045_
                                                __tmp114630))))
                                         (let ((_body107927108048_
                                                (reverse _body107926108037_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _tl107901107984_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl107895107968_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl107892107960_))
                                                       (let ((_e107930108051_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl107892107960_))))
                 (let ((_tl107928108056_
                        (let () (declare (not safe)) (##cdr _e107930108051_)))
                       (_hd107929108054_
                        (let () (declare (not safe)) (##car _e107930108051_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl107928108056_))
                       (let ((_L108059_ _hd107929108054_)
                             (_L108060_ _body107927108048_)
                             (_L108061_ _arg107918108024_)
                             (_L108062_ _hd107899107974_))
                         (if (let ()
                               (declare (not safe))
                               (eq? _L108062_ _L108059_))
                             (___kont113673113674_
                              _L108059_
                              _L108060_
                              _L108061_
                              _L108062_)
                             (___kont113679113680_)))
                       (___kont113679113680_))))
               (___kont113679113680_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont113679113680_))
                                               (___kont113679113680_)))))))
                           (let ()
                             (declare (not safe))
                             (_loop107922108032_ _target107919108027_ '())))
                         (___kont113679113680_))))
                 (___kont113679113680_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ()
                                       (declare (not safe))
                                       (_loop107913108008_
                                        _target107910108003_
                                        '()))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? ___stx113671113672_))
                                (let ((_e107891107947_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e ___stx113671113672_))))
                                  (let ((_tl107889107952_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107891107947_)))
                                        (_hd107890107950_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107891107947_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd107890107950_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _hd107890107950_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl107889107952_))
                                                (let ((_e107894107955_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl107889107952_))))
                                                  (let ((_tl107892107960_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e107894107955_)))
                                                        (_hd107893107958_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e107894107955_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd107893107958_))
                                                        (let ((_e107897107963_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _hd107893107958_))))
                  (let ((_tl107895107968_
                         (let () (declare (not safe)) (##cdr _e107897107963_)))
                        (_hd107896107966_
                         (let ()
                           (declare (not safe))
                           (##car _e107897107963_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd107896107966_))
                        (let ((_e107900107971_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd107896107966_))))
                          (let ((_tl107898107976_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107900107971_)))
                                (_hd107899107974_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107900107971_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl107898107976_))
                                (let ((_e107903107979_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl107898107976_))))
                                  (let ((_tl107901107984_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107903107979_)))
                                        (_hd107902107982_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107903107979_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd107902107982_))
                                        (let ((_e107906107987_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd107902107982_))))
                                          (let ((_tl107904107992_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107906107987_)))
                                                (_hd107905107990_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107906107987_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd107905107990_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _hd107905107990_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl107904107992_))
                                                        (let ((_e107909107995_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl107904107992_))))
                  (let ((_tl107907108000_
                         (let () (declare (not safe)) (##cdr _e107909107995_)))
                        (_hd107908107998_
                         (let ()
                           (declare (not safe))
                           (##car _e107909107995_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _hd107908107998_))
                        (let ((___splice113675113676_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _hd107908107998_
                                  '0))))
                          (let ((_tl107912108005_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice113675113676_ '1)))
                                (_target107910108003_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice113675113676_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl107912108005_))
                                (___match113738113739_
                                 _e107891107947_
                                 _hd107890107950_
                                 _tl107889107952_
                                 _e107894107955_
                                 _hd107893107958_
                                 _tl107892107960_
                                 _e107897107963_
                                 _hd107896107966_
                                 _tl107895107968_
                                 _e107900107971_
                                 _hd107899107974_
                                 _tl107898107976_
                                 _e107903107979_
                                 _hd107902107982_
                                 _tl107901107984_
                                 _e107906107987_
                                 _hd107905107990_
                                 _tl107904107992_
                                 _e107909107995_
                                 _hd107908107998_
                                 _tl107907108000_
                                 ___splice113675113676_
                                 _target107910108003_
                                 _tl107912108005_)
                                (___kont113679113680_))))
                        (___kont113679113680_))))
                (___kont113679113680_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont113679113680_))
                                                (___kont113679113680_))))
                                        (___kont113679113680_))))
                                (___kont113679113680_))))
                        (___kont113679113680_))))
                (___kont113679113680_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont113679113680_))
                                            (___kont113679113680_))
                                        (___kont113679113680_))))
                                (___kont113679113680_)))))))))
          (let* ((_g107650107664_
                  (lambda (_g107651107661_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g107651107661_))))
                 (_g107649107869_
                  (lambda (_g107651107667_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g107651107667_))
                        (let ((_e107656107669_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g107651107667_))))
                          (let ((_hd107655107672_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107656107669_)))
                                (_tl107654107674_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107656107669_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl107654107674_))
                                (let ((_e107659107677_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl107654107674_))))
                                  (let ((_hd107658107680_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107659107677_)))
                                        (_tl107657107682_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107659107677_))))
                                    ((lambda (_L107685_ _L107686_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gxc#current-compile-decls-unsafe?))
                                           (let ()
                                             (declare (not safe))
                                             (_compile-call107648_
                                              _L107686_
                                              _L107685_))
                                           (let* ((___stx113787113788_
                                                   _L107686_)
                                                  (_g107701107713_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx113787113788_)))))
                                             (let ((___kont113789113790_
                                                    (lambda ()
                                                      (let ((_f107743_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#compile-e__1 _self107645_ _L107686_))))
                (if (let ((__tmp114646 (symbol->string _f107743_)))
                      (declare (not safe))
                      (string-prefix? '"##" __tmp114646))
                    (let _lp107745_ ((_rest107748_ (reverse _L107685_))
                                     (_bind107750_ '())
                                     (_args107751_ '()))
                      (let* ((_rest107752107760_ _rest107748_)
                             (_else107754107768_
                              (lambda ()
                                (let ((__tmp114632
                                       (let ((__tmp114633
                                              (let ((__tmp114634
                                                     (let ((__tmp114635
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _f107743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _args107751_))))
               (declare (not safe))
               (cons __tmp114635 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons '(declare (not safe))
                                                      __tmp114634))))
                                         (declare (not safe))
                                         (cons _bind107750_ __tmp114633))))
                                  (declare (not safe))
                                  (cons 'let __tmp114632))))
                             (_K107756107854_
                              (lambda (_rest107771_ _e107772_)
                                (let* ((___stx113741113742_ _e107772_)
                                       (_g107777107795_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx113741113742_)))))
                                  (let ((___kont113743113744_
                                         (lambda ()
                                           (let ((__tmp114636
                                                  (let ((__tmp114637
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _e107772_))))
                                                    (declare (not safe))
                                                    (cons __tmp114637
                                                          _args107751_))))
                                             (declare (not safe))
                                             (_lp107745_
                                              _rest107771_
                                              _bind107750_
                                              __tmp114636))))
                                        (___kont113745113746_
                                         (lambda ()
                                           (let ((__tmp114638
                                                  (let ((__tmp114639
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _e107772_))))
                                                    (declare (not safe))
                                                    (cons __tmp114639
                                                          _args107751_))))
                                             (declare (not safe))
                                             (_lp107745_
                                              _rest107771_
                                              _bind107750_
                                              __tmp114638))))
                                        (___kont113747113748_
                                         (lambda ()
                                           (let ((_tmp107802_
                                                  (let ((__tmp114640
                                                         (gensym '__tmp)))
                                                    (declare (not safe))
                                                    (make-symbol__0
                                                     __tmp114640))))
                                             (let ((__tmp114642
                                                    (let ((__tmp114643
                                                           (let ((__tmp114644
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114645
                                 (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _e107772_))))
                            (declare (not safe))
                            (cons __tmp114645 '()))))
                     (declare (not safe))
                     (cons _tmp107802_ __tmp114644))))
              (declare (not safe))
              (cons __tmp114643 _bind107750_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp114641
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _tmp107802_
                                                            _args107751_))))
                                               (declare (not safe))
                                               (_lp107745_
                                                _rest107771_
                                                __tmp114642
                                                __tmp114641))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? ___stx113741113742_))
                                        (let ((_e107781107833_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  ___stx113741113742_))))
                                          (let ((_tl107779107838_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107781107833_)))
                                                (_hd107780107836_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107781107833_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd107780107836_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd107780107836_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl107779107838_))
                                                        (let ((_e107784107841_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl107779107838_))))
                  (let ((_tl107782107846_
                         (let () (declare (not safe)) (##cdr _e107784107841_)))
                        (_hd107783107844_
                         (let ()
                           (declare (not safe))
                           (##car _e107784107841_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl107782107846_))
                        (___kont113743113744_)
                        (___kont113747113748_))))
                (___kont113747113748_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#quote
                                                           _hd107780107836_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl107779107838_))
                                                            (let ((_e107790107818_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl107779107838_))))
                      (let ((_tl107788107823_
                             (let ()
                               (declare (not safe))
                               (##cdr _e107790107818_)))
                            (_hd107789107821_
                             (let ()
                               (declare (not safe))
                               (##car _e107790107818_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl107788107823_))
                            (___kont113745113746_)
                            (___kont113747113748_))))
                    (___kont113747113748_))
                (___kont113747113748_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont113747113748_))))
                                        (___kont113747113748_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _rest107752107760_))
                            (let ((_hd107757107857_
                                   (let ()
                                     (declare (not safe))
                                     (##car _rest107752107760_)))
                                  (_tl107758107859_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _rest107752107760_))))
                              (let* ((_e107862_ _hd107757107857_)
                                     (_rest107864_ _tl107758107859_))
                                (declare (not safe))
                                (_K107756107854_ _rest107864_ _e107862_)))
                            (let ()
                              (declare (not safe))
                              (_else107754107768_)))))
                    (let ()
                      (declare (not safe))
                      (_compile-call107648_ _L107686_ _L107685_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont113791113792_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (_compile-call107648_
                                                         _L107686_
                                                         _L107685_)))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      ___stx113787113788_))
                                                   (let ((_e107705107725_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             ___stx113787113788_))))
                                                     (let ((_tl107703107730_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e107705107725_)))
                                                           (_hd107704107728_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e107705107725_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#identifier?
                                                              _hd107704107728_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-eq? '%#ref _hd107704107728_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl107703107730_))
                           (let ((_e107708107733_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl107703107730_))))
                             (let ((_tl107706107738_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e107708107733_)))
                                   (_hd107707107736_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e107708107733_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl107706107738_))
                                   (___kont113789113790_)
                                   (___kont113791113792_))))
                           (___kont113791113792_))
                       (___kont113791113792_))
                   (___kont113791113792_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (___kont113791113792_))))))
                                     _tl107657107682_
                                     _hd107658107680_)))
                                (let ()
                                  (declare (not safe))
                                  (_g107650107664_ _g107651107667_)))))
                        (let ()
                          (declare (not safe))
                          (_g107650107664_ _g107651107667_))))))
            (declare (not safe))
            (_g107649107869_ _stx107646_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_self107432_ _stx107433_)
        (let* ((___stx113859113860_ _stx107433_)
               (_g107436107456_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx113859113860_)))))
          (let ((___kont113861113862_
                 (lambda (_L107500_ _L107501_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-decls-unsafe?))
                       (let ()
                         (declare (not safe))
                         (gxc#generate-runtime-call% _self107432_ _stx107433_))
                       (let ((_f107519_
                              (let ((__tmp114647
                                     (let ((__tmp114649
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               '%#ref)))
                                           (__tmp114648
                                            (let ()
                                              (declare (not safe))
                                              (cons _L107501_ '()))))
                                       (declare (not safe))
                                       (cons __tmp114649 __tmp114648))))
                                (declare (not safe))
                                (gxc#compile-e__1 _self107432_ __tmp114647))))
                         (let _lp107521_ ((_rest107524_ (reverse _L107500_))
                                          (_bind107526_ '())
                                          (_args107527_ '()))
                           (let* ((_rest107528107536_ _rest107524_)
                                  (_else107530107544_
                                   (lambda ()
                                     (let ((__tmp114650
                                            (let ((__tmp114651
                                                   (let ((__tmp114652
                                                          (let ((__tmp114653
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _f107519_ _args107527_))))
                    (declare (not safe))
                    (cons __tmp114653 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '(declare
                                                              (not safe))
                                                           __tmp114652))))
                                              (declare (not safe))
                                              (cons _bind107526_
                                                    __tmp114651))))
                                       (declare (not safe))
                                       (cons 'let __tmp114650))))
                                  (_K107532107630_
                                   (lambda (_rest107547_ _e107548_)
                                     (let* ((___stx113813113814_ _e107548_)
                                            (_g107553107571_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  ___stx113813113814_)))))
                                       (let ((___kont113815113816_
                                              (lambda ()
                                                (let ((__tmp114654
                                                       (let ((__tmp114655
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _e107548_))))
                 (declare (not safe))
                 (cons __tmp114655 _args107527_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp107521_
                                                   _rest107547_
                                                   _bind107526_
                                                   __tmp114654))))
                                             (___kont113817113818_
                                              (lambda ()
                                                (let ((__tmp114656
                                                       (let ((__tmp114657
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#compile-e__0 _e107548_))))
                 (declare (not safe))
                 (cons __tmp114657 _args107527_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_lp107521_
                                                   _rest107547_
                                                   _bind107526_
                                                   __tmp114656))))
                                             (___kont113819113820_
                                              (lambda ()
                                                (let ((_tmp107578_
                                                       (let ((__tmp114658
                                                              (gensym '__tmp)))
                                                         (declare (not safe))
                                                         (make-symbol__0
                                                          __tmp114658))))
                                                  (let ((__tmp114660
                                                         (let ((__tmp114661
                                                                (let ((__tmp114662
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114663
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__0 _e107548_))))
                                 (declare (not safe))
                                 (cons __tmp114663 '()))))
                          (declare (not safe))
                          (cons _tmp107578_ __tmp114662))))
                   (declare (not safe))
                   (cons __tmp114661 _bind107526_)))
                (__tmp114659
                 (let ()
                   (declare (not safe))
                   (cons _tmp107578_ _args107527_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_lp107521_
                                                     _rest107547_
                                                     __tmp114660
                                                     __tmp114659))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                ___stx113813113814_))
                                             (let ((_e107557107609_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       ___stx113813113814_))))
                                               (let ((_tl107555107614_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e107557107609_)))
                                                     (_hd107556107612_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e107557107609_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _hd107556107612_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _hd107556107612_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl107555107614_))
                     (let ((_e107560107617_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl107555107614_))))
                       (let ((_tl107558107622_
                              (let ()
                                (declare (not safe))
                                (##cdr _e107560107617_)))
                             (_hd107559107620_
                              (let ()
                                (declare (not safe))
                                (##car _e107560107617_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl107558107622_))
                             (___kont113815113816_)
                             (___kont113819113820_))))
                     (___kont113819113820_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _hd107556107612_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _tl107555107614_))
                         (let ((_e107566107594_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _tl107555107614_))))
                           (let ((_tl107564107599_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e107566107594_)))
                                 (_hd107565107597_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e107566107594_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _tl107564107599_))
                                 (___kont113817113818_)
                                 (___kont113819113820_))))
                         (___kont113819113820_))
                     (___kont113819113820_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont113819113820_))))
                                             (___kont113819113820_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _rest107528107536_))
                                 (let ((_hd107533107633_
                                        (let ()
                                          (declare (not safe))
                                          (##car _rest107528107536_)))
                                       (_tl107534107635_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _rest107528107536_))))
                                   (let* ((_e107638_ _hd107533107633_)
                                          (_rest107640_ _tl107534107635_))
                                     (declare (not safe))
                                     (_K107532107630_ _rest107640_ _e107638_)))
                                 (let ()
                                   (declare (not safe))
                                   (_else107530107544_)))))))))
                (___kont113863113864_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#generate-runtime-call% _self107432_ _stx107433_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx113859113860_))
                (let ((_e107442107468_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e ___stx113859113860_))))
                  (let ((_tl107440107473_
                         (let () (declare (not safe)) (##cdr _e107442107468_)))
                        (_hd107441107471_
                         (let ()
                           (declare (not safe))
                           (##car _e107442107468_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl107440107473_))
                        (let ((_e107445107476_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl107440107473_))))
                          (let ((_tl107443107481_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107445107476_)))
                                (_hd107444107479_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107445107476_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd107444107479_))
                                (let ((_e107448107484_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd107444107479_))))
                                  (let ((_tl107446107489_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107448107484_)))
                                        (_hd107447107487_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107448107484_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd107447107487_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd107447107487_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl107446107489_))
                                                (let ((_e107451107492_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl107446107489_))))
                                                  (let ((_tl107449107497_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e107451107492_)))
                                                        (_hd107450107495_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e107451107492_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl107449107497_))
                                                        (___kont113861113862_
                                                         _tl107443107481_
                                                         _hd107450107495_)
                                                        (___kont113863113864_))))
                                                (___kont113863113864_))
                                            (___kont113863113864_))
                                        (___kont113863113864_))))
                                (___kont113863113864_))))
                        (___kont113863113864_))))
                (___kont113863113864_))))))
    (define gxc#generate-runtime-if%
      (lambda (_self107244_ _stx107245_)
        (letrec ((_simplify107247_
                  (lambda (_code107332_)
                    (let* ((_code107333107351_ _code107332_)
                           (_else107335107359_ (lambda () _code107332_))
                           (_K107337107395_
                            (lambda (_expr107362_ _test107363_)
                              (let* ((_expr107364107372_ _expr107362_)
                                     (_else107366107380_
                                      (lambda ()
                                        (let ((__tmp114664
                                               (let ((__tmp114665
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _expr107362_
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons _test107363_
                                                       __tmp114665))))
                                          (declare (not safe))
                                          (cons 'and __tmp114664))))
                                     (_K107368107385_
                                      (lambda (_exprs107383_)
                                        (let ((__tmp114666
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _test107363_
                                                       _exprs107383_))))
                                          (declare (not safe))
                                          (cons 'and __tmp114666)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _expr107364107372_))
                                    (let ((_hd107369107388_
                                           (let ()
                                             (declare (not safe))
                                             (##car _expr107364107372_)))
                                          (_tl107370107390_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _expr107364107372_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _hd107369107388_ 'and))
                                          (let ((_exprs107393_
                                                 _tl107370107390_))
                                            (declare (not safe))
                                            (_K107368107385_ _exprs107393_))
                                          (let ()
                                            (declare (not safe))
                                            (_else107366107380_))))
                                    (let ()
                                      (declare (not safe))
                                      (_else107366107380_)))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _code107333107351_))
                          (let ((_hd107338107398_
                                 (let ()
                                   (declare (not safe))
                                   (##car _code107333107351_)))
                                (_tl107339107400_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _code107333107351_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _hd107338107398_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _tl107339107400_))
                                    (let ((_hd107340107403_
                                           (let ()
                                             (declare (not safe))
                                             (##car _tl107339107400_)))
                                          (_tl107341107405_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _tl107339107400_))))
                                      (let ((_test107408_ _hd107340107403_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _tl107341107405_))
                                            (let ((_hd107342107410_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _tl107341107405_)))
                                                  (_tl107343107412_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _tl107341107405_))))
                                              (let ((_expr107415_
                                                     _hd107342107410_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _tl107343107412_))
                                                    (let ((_hd107344107417_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _tl107343107412_)))
                                                          (_tl107345107419_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _tl107343107412_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _hd107344107417_))
                                                          (let ((_hd107346107422_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _hd107344107417_)))
                        (_tl107347107424_
                         (let ()
                           (declare (not safe))
                           (##cdr _hd107344107417_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _hd107346107422_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _tl107347107424_))
                            (let ((_hd107348107427_
                                   (let ()
                                     (declare (not safe))
                                     (##car _tl107347107424_)))
                                  (_tl107349107429_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _tl107347107424_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _hd107348107427_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _tl107349107429_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _tl107345107419_))
                                          (let ()
                                            (declare (not safe))
                                            (_K107337107395_
                                             _expr107415_
                                             _test107408_))
                                          (let ()
                                            (declare (not safe))
                                            (_else107335107359_)))
                                      (let ()
                                        (declare (not safe))
                                        (_else107335107359_)))
                                  (let ()
                                    (declare (not safe))
                                    (_else107335107359_))))
                            (let () (declare (not safe)) (_else107335107359_)))
                        (let () (declare (not safe)) (_else107335107359_))))
                  (let () (declare (not safe)) (_else107335107359_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_else107335107359_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_else107335107359_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_else107335107359_)))
                                (let ()
                                  (declare (not safe))
                                  (_else107335107359_))))
                          (let ()
                            (declare (not safe))
                            (_else107335107359_)))))))
          (let* ((_g107249107270_
                  (lambda (_g107250107267_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g107250107267_))))
                 (_g107248107329_
                  (lambda (_g107250107273_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g107250107273_))
                        (let ((_e107256107275_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g107250107273_))))
                          (let ((_hd107255107278_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e107256107275_)))
                                (_tl107254107280_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e107256107275_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl107254107280_))
                                (let ((_e107259107283_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl107254107280_))))
                                  (let ((_hd107258107286_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e107259107283_)))
                                        (_tl107257107288_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e107259107283_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl107257107288_))
                                        (let ((_e107262107291_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl107257107288_))))
                                          (let ((_hd107261107294_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e107262107291_)))
                                                (_tl107260107296_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e107262107291_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl107260107296_))
                                                (let ((_e107265107299_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl107260107296_))))
                                                  (let ((_hd107264107302_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e107265107299_)))
                                                        (_tl107263107304_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e107265107299_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl107263107304_))
                                                        ((lambda (_L107307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L107308_
                          _L107309_)
                   (if (gxc#current-compile-boolean-context)
                       (let ((__tmp114674
                              (let ((__tmp114675
                                     (let ((__tmp114680
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self107244_
                                               _L107309_)))
                                           (__tmp114676
                                            (let ((__tmp114679
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self107244_
                                                      _L107308_)))
                                                  (__tmp114677
                                                   (let ((__tmp114678
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__1
                                                             _self107244_
                                                             _L107307_))))
                                                     (declare (not safe))
                                                     (cons __tmp114678 '()))))
                                              (declare (not safe))
                                              (cons __tmp114679 __tmp114677))))
                                       (declare (not safe))
                                       (cons __tmp114680 __tmp114676))))
                                (declare (not safe))
                                (cons 'if __tmp114675))))
                         (declare (not safe))
                         (_simplify107247_ __tmp114674))
                       (let ((__tmp114667
                              (let ((__tmp114672
                                     (let ((__tmp114673
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self107244_
                                                 _L107309_)))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp114673
                                        gxc#current-compile-boolean-context
                                        '#t)))
                                    (__tmp114668
                                     (let ((__tmp114671
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self107244_
                                               _L107308_)))
                                           (__tmp114669
                                            (let ((__tmp114670
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self107244_
                                                      _L107307_))))
                                              (declare (not safe))
                                              (cons __tmp114670 '()))))
                                       (declare (not safe))
                                       (cons __tmp114671 __tmp114669))))
                                (declare (not safe))
                                (cons __tmp114672 __tmp114668))))
                         (declare (not safe))
                         (cons 'if __tmp114667))))
                 _hd107264107302_
                 _hd107261107294_
                 _hd107258107286_)
                (let ()
                  (declare (not safe))
                  (_g107249107270_ _g107250107273_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_g107249107270_
                                                   _g107250107273_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g107249107270_ _g107250107273_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g107249107270_ _g107250107273_)))))
                        (let ()
                          (declare (not safe))
                          (_g107249107270_ _g107250107273_))))))
            (declare (not safe))
            (_g107248107329_ _stx107245_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_self107192_ _stx107193_)
        (let* ((_g107195107208_
                (lambda (_g107196107205_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g107196107205_))))
               (_g107194107241_
                (lambda (_g107196107211_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g107196107211_))
                      (let ((_e107200107213_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g107196107211_))))
                        (let ((_hd107199107216_
                               (let ()
                                 (declare (not safe))
                                 (##car _e107200107213_)))
                              (_tl107198107218_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e107200107213_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl107198107218_))
                              (let ((_e107203107221_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl107198107218_))))
                                (let ((_hd107202107224_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e107203107221_)))
                                      (_tl107201107226_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e107203107221_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl107201107226_))
                                      ((lambda (_L107229_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _L107229_)))
                                       _hd107202107224_)
                                      (let ()
                                        (declare (not safe))
                                        (_g107195107208_ _g107196107211_)))))
                              (let ()
                                (declare (not safe))
                                (_g107195107208_ _g107196107211_)))))
                      (let ()
                        (declare (not safe))
                        (_g107195107208_ _g107196107211_))))))
          (declare (not safe))
          (_g107194107241_ _stx107193_))))
    (define gxc#generate-runtime-setq%
      (lambda (_self107124_ _stx107125_)
        (let* ((_g107127107144_
                (lambda (_g107128107141_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g107128107141_))))
               (_g107126107189_
                (lambda (_g107128107147_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g107128107147_))
                      (let ((_e107133107149_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g107128107147_))))
                        (let ((_hd107132107152_
                               (let ()
                                 (declare (not safe))
                                 (##car _e107133107149_)))
                              (_tl107131107154_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e107133107149_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl107131107154_))
                              (let ((_e107136107157_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl107131107154_))))
                                (let ((_hd107135107160_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e107136107157_)))
                                      (_tl107134107162_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e107136107157_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl107134107162_))
                                      (let ((_e107139107165_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl107134107162_))))
                                        (let ((_hd107138107168_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e107139107165_)))
                                              (_tl107137107170_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e107139107165_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl107137107170_))
                                              ((lambda (_L107173_ _L107174_)
                                                 (let ((__tmp114681
                                                        (let ((__tmp114684
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-binding-id _L107174_)))
                      (__tmp114682
                       (let ((__tmp114683
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1 _self107124_ _L107173_))))
                         (declare (not safe))
                         (cons __tmp114683 '()))))
                  (declare (not safe))
                  (cons __tmp114684 __tmp114682))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'set! __tmp114681)))
                                               _hd107138107168_
                                               _hd107135107160_)
                                              (let ()
                                                (declare (not safe))
                                                (_g107127107144_
                                                 _g107128107147_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g107127107144_ _g107128107147_)))))
                              (let ()
                                (declare (not safe))
                                (_g107127107144_ _g107128107147_)))))
                      (let ()
                        (declare (not safe))
                        (_g107127107144_ _g107128107147_))))))
          (declare (not safe))
          (_g107126107189_ _stx107125_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_self106935_ _stx106936_)
        (let* ((_g106938106955_
                (lambda (_g106939106952_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106939106952_))))
               (_g106937107121_
                (lambda (_g106939106958_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106939106958_))
                      (let ((_e106944106960_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106939106958_))))
                        (let ((_hd106943106963_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106944106960_)))
                              (_tl106942106965_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106944106960_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106942106965_))
                              (let ((_e106947106968_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106942106965_))))
                                (let ((_hd106946106971_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106947106968_)))
                                      (_tl106945106973_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106947106968_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106945106973_))
                                      (let ((_e106950106976_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106945106973_))))
                                        (let ((_hd106949106979_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106950106976_)))
                                              (_tl106948106981_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106950106976_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl106948106981_))
                                              ((lambda (_L106984_ _L106985_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (let ((__tmp114700
                                                            (let ((__tmp114703
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self106935_ _L106984_)))
                          (__tmp114701
                           (let ((__tmp114702
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self106935_
                                     _L106985_))))
                             (declare (not safe))
                             (cons __tmp114702 '()))))
                      (declare (not safe))
                      (cons __tmp114703 __tmp114701))))
               (declare (not safe))
               (cons '##structure-instance-of? __tmp114700))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp107000_ ((_rest107003_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114699
                                      (let ()
                                        (declare (not safe))
                                        (cons _L106984_ '()))))
                                 (declare (not safe))
                                 (cons _L106985_ __tmp114699)))
                              (_bind107005_ '())
                              (_args107006_ '()))
               (let* ((_rest107007107015_ _rest107003_)
                      (_else107009107023_
                       (lambda ()
                         (let ((__tmp114685
                                (let ((__tmp114686
                                       (let ((__tmp114687
                                              (let ((__tmp114688
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '##structure-instance-of?
                                                             _args107006_))))
                                                (declare (not safe))
                                                (cons __tmp114688 '()))))
                                         (declare (not safe))
                                         (cons '(declare (not safe))
                                               __tmp114687))))
                                  (declare (not safe))
                                  (cons _bind107005_ __tmp114686))))
                           (declare (not safe))
                           (cons 'let __tmp114685))))
                      (_K107011107109_
                       (lambda (_rest107026_ _e107027_)
                         (let* ((___stx113897113898_ _e107027_)
                                (_g107032107050_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx113897113898_)))))
                           (let ((___kont113899113900_
                                  (lambda ()
                                    (let ((__tmp114689
                                           (let ((__tmp114690
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e107027_))))
                                             (declare (not safe))
                                             (cons __tmp114690 _args107006_))))
                                      (declare (not safe))
                                      (_lp107000_
                                       _rest107026_
                                       _bind107005_
                                       __tmp114689))))
                                 (___kont113901113902_
                                  (lambda ()
                                    (let ((__tmp114691
                                           (let ((__tmp114692
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e107027_))))
                                             (declare (not safe))
                                             (cons __tmp114692 _args107006_))))
                                      (declare (not safe))
                                      (_lp107000_
                                       _rest107026_
                                       _bind107005_
                                       __tmp114691))))
                                 (___kont113903113904_
                                  (lambda ()
                                    (let ((_tmp107057_
                                           (let ((__tmp114693 (gensym '__tmp)))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp114693))))
                                      (let ((__tmp114695
                                             (let ((__tmp114696
                                                    (let ((__tmp114697
                                                           (let ((__tmp114698
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e107027_))))
                     (declare (not safe))
                     (cons __tmp114698 '()))))
              (declare (not safe))
              (cons _tmp107057_ __tmp114697))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114696
                                                     _bind107005_)))
                                            (__tmp114694
                                             (let ()
                                               (declare (not safe))
                                               (cons _tmp107057_
                                                     _args107006_))))
                                        (declare (not safe))
                                        (_lp107000_
                                         _rest107026_
                                         __tmp114695
                                         __tmp114694))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx113897113898_))
                                 (let ((_e107036107088_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx113897113898_))))
                                   (let ((_tl107034107093_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e107036107088_)))
                                         (_hd107035107091_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e107036107088_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _hd107035107091_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _hd107035107091_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl107034107093_))
                                                 (let ((_e107039107096_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl107034107093_))))
                                                   (let ((_tl107037107101_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e107039107096_)))
                                                         (_hd107038107099_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e107039107096_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl107037107101_))
                                                         (___kont113899113900_)
                                                         (___kont113903113904_))))
                                                 (___kont113903113904_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _hd107035107091_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl107034107093_))
                                                     (let ((_e107045107073_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl107034107093_))))
                                                       (let ((_tl107043107078_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e107045107073_)))
                     (_hd107044107076_
                      (let () (declare (not safe)) (##car _e107045107073_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl107043107078_))
                     (___kont113901113902_)
                     (___kont113903113904_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont113903113904_))
                                                 (___kont113903113904_)))
                                         (___kont113903113904_))))
                                 (___kont113903113904_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest107007107015_))
                     (let ((_hd107012107112_
                            (let ()
                              (declare (not safe))
                              (##car _rest107007107015_)))
                           (_tl107013107114_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest107007107015_))))
                       (let* ((_e107117_ _hd107012107112_)
                              (_rest107119_ _tl107013107114_))
                         (declare (not safe))
                         (_K107011107109_ _rest107119_ _e107117_)))
                     (let () (declare (not safe)) (_else107009107023_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd106949106979_
                                               _hd106946106971_)
                                              (let ()
                                                (declare (not safe))
                                                (_g106938106955_
                                                 _g106939106958_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106938106955_ _g106939106958_)))))
                              (let ()
                                (declare (not safe))
                                (_g106938106955_ _g106939106958_)))))
                      (let ()
                        (declare (not safe))
                        (_g106938106955_ _g106939106958_))))))
          (declare (not safe))
          (_g106937107121_ _stx106936_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_self106746_ _stx106747_)
        (let* ((_g106749106766_
                (lambda (_g106750106763_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106750106763_))))
               (_g106748106932_
                (lambda (_g106750106769_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106750106769_))
                      (let ((_e106755106771_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106750106769_))))
                        (let ((_hd106754106774_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106755106771_)))
                              (_tl106753106776_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106755106771_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106753106776_))
                              (let ((_e106758106779_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106753106776_))))
                                (let ((_hd106757106782_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106758106779_)))
                                      (_tl106756106784_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106758106779_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106756106784_))
                                      (let ((_e106761106787_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106756106784_))))
                                        (let ((_hd106760106790_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106761106787_)))
                                              (_tl106759106792_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106761106787_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl106759106792_))
                                              ((lambda (_L106795_ _L106796_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gxc#current-compile-decls-unsafe?))
                                                     (let ((__tmp114719
                                                            (let ((__tmp114722
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _self106746_ _L106795_)))
                          (__tmp114720
                           (let ((__tmp114721
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _self106746_
                                     _L106796_))))
                             (declare (not safe))
                             (cons __tmp114721 '()))))
                      (declare (not safe))
                      (cons __tmp114722 __tmp114720))))
               (declare (not safe))
               (cons '##structure-direct-instance-of? __tmp114719))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _lp106811_ ((_rest106814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp114718
                                      (let ()
                                        (declare (not safe))
                                        (cons _L106795_ '()))))
                                 (declare (not safe))
                                 (cons _L106796_ __tmp114718)))
                              (_bind106816_ '())
                              (_args106817_ '()))
               (let* ((_rest106818106826_ _rest106814_)
                      (_else106820106834_
                       (lambda ()
                         (let ((__tmp114704
                                (let ((__tmp114705
                                       (let ((__tmp114706
                                              (let ((__tmp114707
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons '##structure-direct-instance-of?
                                                             _args106817_))))
                                                (declare (not safe))
                                                (cons __tmp114707 '()))))
                                         (declare (not safe))
                                         (cons '(declare (not safe))
                                               __tmp114706))))
                                  (declare (not safe))
                                  (cons _bind106816_ __tmp114705))))
                           (declare (not safe))
                           (cons 'let __tmp114704))))
                      (_K106822106920_
                       (lambda (_rest106837_ _e106838_)
                         (let* ((___stx113943113944_ _e106838_)
                                (_g106843106861_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx113943113944_)))))
                           (let ((___kont113945113946_
                                  (lambda ()
                                    (let ((__tmp114708
                                           (let ((__tmp114709
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e106838_))))
                                             (declare (not safe))
                                             (cons __tmp114709 _args106817_))))
                                      (declare (not safe))
                                      (_lp106811_
                                       _rest106837_
                                       _bind106816_
                                       __tmp114708))))
                                 (___kont113947113948_
                                  (lambda ()
                                    (let ((__tmp114710
                                           (let ((__tmp114711
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__0
                                                     _e106838_))))
                                             (declare (not safe))
                                             (cons __tmp114711 _args106817_))))
                                      (declare (not safe))
                                      (_lp106811_
                                       _rest106837_
                                       _bind106816_
                                       __tmp114710))))
                                 (___kont113949113950_
                                  (lambda ()
                                    (let ((_tmp106868_
                                           (let ((__tmp114712 (gensym '__tmp)))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp114712))))
                                      (let ((__tmp114714
                                             (let ((__tmp114715
                                                    (let ((__tmp114716
                                                           (let ((__tmp114717
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e106838_))))
                     (declare (not safe))
                     (cons __tmp114717 '()))))
              (declare (not safe))
              (cons _tmp106868_ __tmp114716))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114715
                                                     _bind106816_)))
                                            (__tmp114713
                                             (let ()
                                               (declare (not safe))
                                               (cons _tmp106868_
                                                     _args106817_))))
                                        (declare (not safe))
                                        (_lp106811_
                                         _rest106837_
                                         __tmp114714
                                         __tmp114713))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx113943113944_))
                                 (let ((_e106847106899_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx113943113944_))))
                                   (let ((_tl106845106904_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e106847106899_)))
                                         (_hd106846106902_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e106847106899_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _hd106846106902_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _hd106846106902_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _tl106845106904_))
                                                 (let ((_e106850106907_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _tl106845106904_))))
                                                   (let ((_tl106848106912_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e106850106907_)))
                                                         (_hd106849106910_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e106850106907_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _tl106848106912_))
                                                         (___kont113945113946_)
                                                         (___kont113949113950_))))
                                                 (___kont113949113950_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _hd106846106902_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _tl106845106904_))
                                                     (let ((_e106856106884_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _tl106845106904_))))
                                                       (let ((_tl106854106889_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e106856106884_)))
                     (_hd106855106887_
                      (let () (declare (not safe)) (##car _e106856106884_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _tl106854106889_))
                     (___kont113947113948_)
                     (___kont113949113950_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont113949113950_))
                                                 (___kont113949113950_)))
                                         (___kont113949113950_))))
                                 (___kont113949113950_)))))))
                 (if (let () (declare (not safe)) (##pair? _rest106818106826_))
                     (let ((_hd106823106923_
                            (let ()
                              (declare (not safe))
                              (##car _rest106818106826_)))
                           (_tl106824106925_
                            (let ()
                              (declare (not safe))
                              (##cdr _rest106818106826_))))
                       (let* ((_e106928_ _hd106823106923_)
                              (_rest106930_ _tl106824106925_))
                         (declare (not safe))
                         (_K106822106920_ _rest106930_ _e106928_)))
                     (let () (declare (not safe)) (_else106820106834_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd106760106790_
                                               _hd106757106782_)
                                              (let ()
                                                (declare (not safe))
                                                (_g106749106766_
                                                 _g106750106769_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106749106766_ _g106750106769_)))))
                              (let ()
                                (declare (not safe))
                                (_g106749106766_ _g106750106769_)))))
                      (let ()
                        (declare (not safe))
                        (_g106749106766_ _g106750106769_))))))
          (declare (not safe))
          (_g106748106932_ _stx106747_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_self106662_ _stx106663_)
        (let* ((_g106665106686_
                (lambda (_g106666106683_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106666106683_))))
               (_g106664106743_
                (lambda (_g106666106689_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106666106689_))
                      (let ((_e106672106691_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106666106689_))))
                        (let ((_hd106671106694_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106672106691_)))
                              (_tl106670106696_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106672106691_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106670106696_))
                              (let ((_e106675106699_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106670106696_))))
                                (let ((_hd106674106702_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106675106699_)))
                                      (_tl106673106704_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106675106699_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106673106704_))
                                      (let ((_e106678106707_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106673106704_))))
                                        (let ((_hd106677106710_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106678106707_)))
                                              (_tl106676106712_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106678106707_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106676106712_))
                                              (let ((_e106681106715_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106676106712_))))
                                                (let ((_hd106680106718_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106681106715_)))
                                                      (_tl106679106720_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106681106715_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl106679106720_))
                                                      ((lambda (_L106723_
                                                                _L106724_
                                                                _L106725_)
                                                         (let ((__tmp114723
                                                                (let ((__tmp114729
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self106662_ _L106723_)))
                              (__tmp114724
                               (let ((__tmp114728
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self106662_
                                         _L106724_)))
                                     (__tmp114725
                                      (let ((__tmp114727
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self106662_
                                                _L106725_)))
                                            (__tmp114726
                                             (let ()
                                               (declare (not safe))
                                               (cons ''#f '()))))
                                        (declare (not safe))
                                        (cons __tmp114727 __tmp114726))))
                                 (declare (not safe))
                                 (cons __tmp114728 __tmp114725))))
                          (declare (not safe))
                          (cons __tmp114729 __tmp114724))))
                   (declare (not safe))
                   (cons '##structure-ref __tmp114723)))
               _hd106680106718_
               _hd106677106710_
               _hd106674106702_)
              (let ()
                (declare (not safe))
                (_g106665106686_ _g106666106689_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106665106686_
                                                 _g106666106689_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106665106686_ _g106666106689_)))))
                              (let ()
                                (declare (not safe))
                                (_g106665106686_ _g106666106689_)))))
                      (let ()
                        (declare (not safe))
                        (_g106665106686_ _g106666106689_))))))
          (declare (not safe))
          (_g106664106743_ _stx106663_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_self106562_ _stx106563_)
        (let* ((_g106565106590_
                (lambda (_g106566106587_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106566106587_))))
               (_g106564106659_
                (lambda (_g106566106593_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106566106593_))
                      (let ((_e106573106595_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106566106593_))))
                        (let ((_hd106572106598_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106573106595_)))
                              (_tl106571106600_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106573106595_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106571106600_))
                              (let ((_e106576106603_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106571106600_))))
                                (let ((_hd106575106606_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106576106603_)))
                                      (_tl106574106608_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106576106603_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106574106608_))
                                      (let ((_e106579106611_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106574106608_))))
                                        (let ((_hd106578106614_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106579106611_)))
                                              (_tl106577106616_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106579106611_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106577106616_))
                                              (let ((_e106582106619_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106577106616_))))
                                                (let ((_hd106581106622_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106582106619_)))
                                                      (_tl106580106624_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106582106619_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl106580106624_))
                                                      (let ((_e106585106627_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl106580106624_))))
                (let ((_hd106584106630_
                       (let () (declare (not safe)) (##car _e106585106627_)))
                      (_tl106583106632_
                       (let () (declare (not safe)) (##cdr _e106585106627_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl106583106632_))
                      ((lambda (_L106635_ _L106636_ _L106637_ _L106638_)
                         (let ((__tmp114730
                                (let ((__tmp114738
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self106562_
                                          _L106636_)))
                                      (__tmp114731
                                       (let ((__tmp114737
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self106562_
                                                 _L106635_)))
                                             (__tmp114732
                                              (let ((__tmp114736
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self106562_
                                                        _L106637_)))
                                                    (__tmp114733
                                                     (let ((__tmp114735
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self106562_
                                                               _L106638_)))
                                                           (__tmp114734
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons ''#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp114735 __tmp114734))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114736
                                                      __tmp114733))))
                                         (declare (not safe))
                                         (cons __tmp114737 __tmp114732))))
                                  (declare (not safe))
                                  (cons __tmp114738 __tmp114731))))
                           (declare (not safe))
                           (cons '##structure-set! __tmp114730)))
                       _hd106584106630_
                       _hd106581106622_
                       _hd106578106614_
                       _hd106575106606_)
                      (let ()
                        (declare (not safe))
                        (_g106565106590_ _g106566106593_)))))
              (let ()
                (declare (not safe))
                (_g106565106590_ _g106566106593_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106565106590_
                                                 _g106566106593_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106565106590_ _g106566106593_)))))
                              (let ()
                                (declare (not safe))
                                (_g106565106590_ _g106566106593_)))))
                      (let ()
                        (declare (not safe))
                        (_g106565106590_ _g106566106593_))))))
          (declare (not safe))
          (_g106564106659_ _stx106563_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_self106478_ _stx106479_)
        (let* ((_g106481106502_
                (lambda (_g106482106499_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106482106499_))))
               (_g106480106559_
                (lambda (_g106482106505_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106482106505_))
                      (let ((_e106488106507_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106482106505_))))
                        (let ((_hd106487106510_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106488106507_)))
                              (_tl106486106512_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106488106507_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106486106512_))
                              (let ((_e106491106515_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106486106512_))))
                                (let ((_hd106490106518_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106491106515_)))
                                      (_tl106489106520_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106491106515_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106489106520_))
                                      (let ((_e106494106523_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106489106520_))))
                                        (let ((_hd106493106526_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106494106523_)))
                                              (_tl106492106528_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106494106523_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106492106528_))
                                              (let ((_e106497106531_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106492106528_))))
                                                (let ((_hd106496106534_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106497106531_)))
                                                      (_tl106495106536_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106497106531_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl106495106536_))
                                                      ((lambda (_L106539_
                                                                _L106540_
                                                                _L106541_)
                                                         (let ((__tmp114739
                                                                (let ((__tmp114745
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self106478_ _L106539_)))
                              (__tmp114740
                               (let ((__tmp114744
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self106478_
                                         _L106540_)))
                                     (__tmp114741
                                      (let ((__tmp114743
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _self106478_
                                                _L106541_)))
                                            (__tmp114742
                                             (let ()
                                               (declare (not safe))
                                               (cons ''#f '()))))
                                        (declare (not safe))
                                        (cons __tmp114743 __tmp114742))))
                                 (declare (not safe))
                                 (cons __tmp114744 __tmp114741))))
                          (declare (not safe))
                          (cons __tmp114745 __tmp114740))))
                   (declare (not safe))
                   (cons '##direct-structure-ref __tmp114739)))
               _hd106496106534_
               _hd106493106526_
               _hd106490106518_)
              (let ()
                (declare (not safe))
                (_g106481106502_ _g106482106505_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106481106502_
                                                 _g106482106505_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106481106502_ _g106482106505_)))))
                              (let ()
                                (declare (not safe))
                                (_g106481106502_ _g106482106505_)))))
                      (let ()
                        (declare (not safe))
                        (_g106481106502_ _g106482106505_))))))
          (declare (not safe))
          (_g106480106559_ _stx106479_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_self106378_ _stx106379_)
        (let* ((_g106381106406_
                (lambda (_g106382106403_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106382106403_))))
               (_g106380106475_
                (lambda (_g106382106409_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106382106409_))
                      (let ((_e106389106411_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106382106409_))))
                        (let ((_hd106388106414_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106389106411_)))
                              (_tl106387106416_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106389106411_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106387106416_))
                              (let ((_e106392106419_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106387106416_))))
                                (let ((_hd106391106422_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106392106419_)))
                                      (_tl106390106424_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106392106419_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106390106424_))
                                      (let ((_e106395106427_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106390106424_))))
                                        (let ((_hd106394106430_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106395106427_)))
                                              (_tl106393106432_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106395106427_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106393106432_))
                                              (let ((_e106398106435_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106393106432_))))
                                                (let ((_hd106397106438_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106398106435_)))
                                                      (_tl106396106440_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106398106435_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl106396106440_))
                                                      (let ((_e106401106443_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl106396106440_))))
                (let ((_hd106400106446_
                       (let () (declare (not safe)) (##car _e106401106443_)))
                      (_tl106399106448_
                       (let () (declare (not safe)) (##cdr _e106401106443_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl106399106448_))
                      ((lambda (_L106451_ _L106452_ _L106453_ _L106454_)
                         (let ((__tmp114746
                                (let ((__tmp114754
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _self106378_
                                          _L106452_)))
                                      (__tmp114747
                                       (let ((__tmp114753
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _self106378_
                                                 _L106451_)))
                                             (__tmp114748
                                              (let ((__tmp114752
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _self106378_
                                                        _L106453_)))
                                                    (__tmp114749
                                                     (let ((__tmp114751
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _self106378_
                                                               _L106454_)))
                                                           (__tmp114750
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons ''#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp114751 __tmp114750))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp114752
                                                      __tmp114749))))
                                         (declare (not safe))
                                         (cons __tmp114753 __tmp114748))))
                                  (declare (not safe))
                                  (cons __tmp114754 __tmp114747))))
                           (declare (not safe))
                           (cons '##direct-structure-set! __tmp114746)))
                       _hd106400106446_
                       _hd106397106438_
                       _hd106394106430_
                       _hd106391106422_)
                      (let ()
                        (declare (not safe))
                        (_g106381106406_ _g106382106409_)))))
              (let ()
                (declare (not safe))
                (_g106381106406_ _g106382106409_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106381106406_
                                                 _g106382106409_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106381106406_ _g106382106409_)))))
                              (let ()
                                (declare (not safe))
                                (_g106381106406_ _g106382106409_)))))
                      (let ()
                        (declare (not safe))
                        (_g106381106406_ _g106382106409_))))))
          (declare (not safe))
          (_g106380106475_ _stx106379_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_self106173_ _stx106174_)
        (let* ((_g106176106197_
                (lambda (_g106177106194_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g106177106194_))))
               (_g106175106375_
                (lambda (_g106177106200_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g106177106200_))
                      (let ((_e106183106202_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g106177106200_))))
                        (let ((_hd106182106205_
                               (let ()
                                 (declare (not safe))
                                 (##car _e106183106202_)))
                              (_tl106181106207_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e106183106202_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl106181106207_))
                              (let ((_e106186106210_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl106181106207_))))
                                (let ((_hd106185106213_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e106186106210_)))
                                      (_tl106184106215_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e106186106210_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl106184106215_))
                                      (let ((_e106189106218_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl106184106215_))))
                                        (let ((_hd106188106221_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e106189106218_)))
                                              (_tl106187106223_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e106189106218_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl106187106223_))
                                              (let ((_e106192106226_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl106187106223_))))
                                                (let ((_hd106191106229_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e106192106226_)))
                                                      (_tl106190106231_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e106192106226_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl106190106231_))
                                                      ((lambda (_L106234_
                                                                _L106235_
                                                                _L106236_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-decls-unsafe?))
                     (let ((__tmp114773
                            (let ((__tmp114779
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _self106173_
                                      _L106234_)))
                                  (__tmp114774
                                   (let ((__tmp114778
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _self106173_
                                             _L106235_)))
                                         (__tmp114775
                                          (let ((__tmp114777
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _self106173_
                                                    _L106236_)))
                                                (__tmp114776
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons ''#f '()))))
                                            (declare (not safe))
                                            (cons __tmp114777 __tmp114776))))
                                     (declare (not safe))
                                     (cons __tmp114778 __tmp114775))))
                              (declare (not safe))
                              (cons __tmp114779 __tmp114774))))
                       (declare (not safe))
                       (cons '##unchecked-structure-ref __tmp114773))
                     (let _lp106254_ ((_rest106257_
                                       (let ((__tmp114771
                                              (let ((__tmp114772
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L106234_ '()))))
                                                (declare (not safe))
                                                (cons _L106235_ __tmp114772))))
                                         (declare (not safe))
                                         (cons _L106236_ __tmp114771)))
                                      (_bind106259_ '())
                                      (_args106260_ '()))
                       (let* ((_rest106261106269_ _rest106257_)
                              (_else106263106277_
                               (lambda ()
                                 (let ((__tmp114755
                                        (let ((__tmp114756
                                               (let ((__tmp114757
                                                      (let ((__tmp114758
                                                             (let ((__tmp114759
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114760
                                   (let ()
                                     (declare (not safe))
                                     (cons ''#f '()))))
                              (declare (not safe))
                              (foldr1 cons __tmp114760 _args106260_))))
                       (declare (not safe))
                       (cons '##unchecked-structure-ref __tmp114759))))
                (declare (not safe))
                (cons __tmp114758 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '(declare (not safe))
                                                       __tmp114757))))
                                          (declare (not safe))
                                          (cons _bind106259_ __tmp114756))))
                                   (declare (not safe))
                                   (cons 'let __tmp114755))))
                              (_K106265106363_
                               (lambda (_rest106280_ _e106281_)
                                 (let* ((___stx113989113990_ _e106281_)
                                        (_g106286106304_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              ___stx113989113990_)))))
                                   (let ((___kont113991113992_
                                          (lambda ()
                                            (let ((__tmp114761
                                                   (let ((__tmp114762
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _e106281_))))
                                                     (declare (not safe))
                                                     (cons __tmp114762
                                                           _args106260_))))
                                              (declare (not safe))
                                              (_lp106254_
                                               _rest106280_
                                               _bind106259_
                                               __tmp114761))))
                                         (___kont113993113994_
                                          (lambda ()
                                            (let ((__tmp114763
                                                   (let ((__tmp114764
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gxc#compile-e__0
                                                             _e106281_))))
                                                     (declare (not safe))
                                                     (cons __tmp114764
                                                           _args106260_))))
                                              (declare (not safe))
                                              (_lp106254_
                                               _rest106280_
                                               _bind106259_
                                               __tmp114763))))
                                         (___kont113995113996_
                                          (lambda ()
                                            (let ((_tmp106311_
                                                   (let ((__tmp114765
                                                          (gensym '__tmp)))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp114765))))
                                              (let ((__tmp114767
                                                     (let ((__tmp114768
                                                            (let ((__tmp114769
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114770
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__0 _e106281_))))
                             (declare (not safe))
                             (cons __tmp114770 '()))))
                      (declare (not safe))
                      (cons _tmp106311_ __tmp114769))))
               (declare (not safe))
               (cons __tmp114768 _bind106259_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp114766
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _tmp106311_
                                                             _args106260_))))
                                                (declare (not safe))
                                                (_lp106254_
                                                 _rest106280_
                                                 __tmp114767
                                                 __tmp114766))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? ___stx113989113990_))
                                         (let ((_e106290106342_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   ___stx113989113990_))))
                                           (let ((_tl106288106347_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e106290106342_)))
                                                 (_hd106289106345_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e106290106342_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _hd106289106345_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _hd106289106345_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _tl106288106347_))
                                                         (let ((_e106293106350_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _tl106288106347_))))
                   (let ((_tl106291106355_
                          (let ()
                            (declare (not safe))
                            (##cdr _e106293106350_)))
                         (_hd106292106353_
                          (let ()
                            (declare (not safe))
                            (##car _e106293106350_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl106291106355_))
                         (___kont113991113992_)
                         (___kont113995113996_))))
                 (___kont113995113996_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _hd106289106345_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _tl106288106347_))
                     (let ((_e106299106327_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _tl106288106347_))))
                       (let ((_tl106297106332_
                              (let ()
                                (declare (not safe))
                                (##cdr _e106299106327_)))
                             (_hd106298106330_
                              (let ()
                                (declare (not safe))
                                (##car _e106299106327_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _tl106297106332_))
                             (___kont113993113994_)
                             (___kont113995113996_))))
                     (___kont113995113996_))
                 (___kont113995113996_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont113995113996_))))
                                         (___kont113995113996_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _rest106261106269_))
                             (let ((_hd106266106366_
                                    (let ()
                                      (declare (not safe))
                                      (##car _rest106261106269_)))
                                   (_tl106267106368_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _rest106261106269_))))
                               (let* ((_e106371_ _hd106266106366_)
                                      (_rest106373_ _tl106267106368_))
                                 (declare (not safe))
                                 (_K106265106363_ _rest106373_ _e106371_)))
                             (let ()
                               (declare (not safe))
                               (_else106263106277_)))))))
               _hd106191106229_
               _hd106188106221_
               _hd106185106213_)
              (let ()
                (declare (not safe))
                (_g106176106197_ _g106177106200_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g106176106197_
                                                 _g106177106200_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g106176106197_ _g106177106200_)))))
                              (let ()
                                (declare (not safe))
                                (_g106176106197_ _g106177106200_)))))
                      (let ()
                        (declare (not safe))
                        (_g106176106197_ _g106177106200_))))))
          (declare (not safe))
          (_g106175106375_ _stx106174_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_self105952_ _stx105953_)
        (let* ((_g105955105980_
                (lambda (_g105956105977_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105956105977_))))
               (_g105954106170_
                (lambda (_g105956105983_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105956105983_))
                      (let ((_e105963105985_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105956105983_))))
                        (let ((_hd105962105988_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105963105985_)))
                              (_tl105961105990_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105963105985_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105961105990_))
                              (let ((_e105966105993_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105961105990_))))
                                (let ((_hd105965105996_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105966105993_)))
                                      (_tl105964105998_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105966105993_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl105964105998_))
                                      (let ((_e105969106001_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl105964105998_))))
                                        (let ((_hd105968106004_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e105969106001_)))
                                              (_tl105967106006_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e105969106001_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl105967106006_))
                                              (let ((_e105972106009_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl105967106006_))))
                                                (let ((_hd105971106012_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e105972106009_)))
                                                      (_tl105970106014_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e105972106009_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _tl105970106014_))
                                                      (let ((_e105975106017_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _tl105970106014_))))
                (let ((_hd105974106020_
                       (let () (declare (not safe)) (##car _e105975106017_)))
                      (_tl105973106022_
                       (let () (declare (not safe)) (##cdr _e105975106017_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl105973106022_))
                      ((lambda (_L106025_ _L106026_ _L106027_ _L106028_)
                         (if (let ()
                               (declare (not safe))
                               (gxc#current-compile-decls-unsafe?))
                             (let ((__tmp114799
                                    (let ((__tmp114807
                                           (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _self105952_
                                              _L106026_)))
                                          (__tmp114800
                                           (let ((__tmp114806
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _self105952_
                                                     _L106025_)))
                                                 (__tmp114801
                                                  (let ((__tmp114805
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__1
                                                            _self105952_
                                                            _L106027_)))
                                                        (__tmp114802
                                                         (let ((__tmp114804
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _self105952_ _L106028_)))
                       (__tmp114803
                        (let () (declare (not safe)) (cons ''#f '()))))
                   (declare (not safe))
                   (cons __tmp114804 __tmp114803))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114805
                                                          __tmp114802))))
                                             (declare (not safe))
                                             (cons __tmp114806 __tmp114801))))
                                      (declare (not safe))
                                      (cons __tmp114807 __tmp114800))))
                               (declare (not safe))
                               (cons '##unchecked-structure-set! __tmp114799))
                             (let _lp106049_ ((_rest106052_
                                               (let ((__tmp114796
                                                      (let ((__tmp114797
                                                             (let ((__tmp114798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _L106026_ '()))))
                       (declare (not safe))
                       (cons _L106025_ __tmp114798))))
                (declare (not safe))
                (cons _L106027_ __tmp114797))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L106028_ __tmp114796)))
                                              (_bind106054_ '())
                                              (_args106055_ '()))
                               (let* ((_rest106056106064_ _rest106052_)
                                      (_else106058106072_
                                       (lambda ()
                                         (let ((__tmp114780
                                                (let ((__tmp114781
                                                       (let ((__tmp114782
                                                              (let ((__tmp114783
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp114784
                                    (let ((__tmp114785
                                           (let ()
                                             (declare (not safe))
                                             (cons ''#f '()))))
                                      (declare (not safe))
                                      (foldr1 cons __tmp114785 _args106055_))))
                               (declare (not safe))
                               (cons '##unchecked-structure-set!
                                     __tmp114784))))
                        (declare (not safe))
                        (cons __tmp114783 '()))))
                 (declare (not safe))
                 (cons '(declare (not safe)) __tmp114782))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _bind106054_
                                                        __tmp114781))))
                                           (declare (not safe))
                                           (cons 'let __tmp114780))))
                                      (_K106060106158_
                                       (lambda (_rest106075_ _e106076_)
                                         (let* ((___stx114035114036_ _e106076_)
                                                (_g106081106099_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      ___stx114035114036_)))))
                                           (let ((___kont114037114038_
                                                  (lambda ()
                                                    (let ((__tmp114786
                                                           (let ((__tmp114787
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e106076_))))
                     (declare (not safe))
                     (cons __tmp114787 _args106055_))))
              (declare (not safe))
              (_lp106049_ _rest106075_ _bind106054_ __tmp114786))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont114039114040_
                                                  (lambda ()
                                                    (let ((__tmp114788
                                                           (let ((__tmp114789
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#compile-e__0 _e106076_))))
                     (declare (not safe))
                     (cons __tmp114789 _args106055_))))
              (declare (not safe))
              (_lp106049_ _rest106075_ _bind106054_ __tmp114788))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont114041114042_
                                                  (lambda ()
                                                    (let ((_tmp106106_
                                                           (let ((__tmp114790
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym '__tmp)))
                     (declare (not safe))
                     (make-symbol__0 __tmp114790))))
              (let ((__tmp114792
                     (let ((__tmp114793
                            (let ((__tmp114794
                                   (let ((__tmp114795
                                          (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _e106076_))))
                                     (declare (not safe))
                                     (cons __tmp114795 '()))))
                              (declare (not safe))
                              (cons _tmp106106_ __tmp114794))))
                       (declare (not safe))
                       (cons __tmp114793 _bind106054_)))
                    (__tmp114791
                     (let ()
                       (declare (not safe))
                       (cons _tmp106106_ _args106055_))))
                (declare (not safe))
                (_lp106049_ _rest106075_ __tmp114792 __tmp114791))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    ___stx114035114036_))
                                                 (let ((_e106085106137_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           ___stx114035114036_))))
                                                   (let ((_tl106083106142_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e106085106137_)))
                                                         (_hd106084106140_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e106085106137_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _hd106084106140_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _hd106084106140_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _tl106083106142_))
                         (let ((_e106088106145_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _tl106083106142_))))
                           (let ((_tl106086106150_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e106088106145_)))
                                 (_hd106087106148_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e106088106145_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _tl106086106150_))
                                 (___kont114037114038_)
                                 (___kont114041114042_))))
                         (___kont114041114042_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _hd106084106140_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _tl106083106142_))
                             (let ((_e106094106122_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _tl106083106142_))))
                               (let ((_tl106092106127_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _e106094106122_)))
                                     (_hd106093106125_
                                      (let ()
                                        (declare (not safe))
                                        (##car _e106094106122_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _tl106092106127_))
                                     (___kont114039114040_)
                                     (___kont114041114042_))))
                             (___kont114041114042_))
                         (___kont114041114042_)))
                 (___kont114041114042_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (___kont114041114042_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _rest106056106064_))
                                     (let ((_hd106061106161_
                                            (let ()
                                              (declare (not safe))
                                              (##car _rest106056106064_)))
                                           (_tl106062106163_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _rest106056106064_))))
                                       (let* ((_e106166_ _hd106061106161_)
                                              (_rest106168_ _tl106062106163_))
                                         (declare (not safe))
                                         (_K106060106158_
                                          _rest106168_
                                          _e106166_)))
                                     (let ()
                                       (declare (not safe))
                                       (_else106058106072_)))))))
                       _hd105974106020_
                       _hd105971106012_
                       _hd105968106004_
                       _hd105965105996_)
                      (let ()
                        (declare (not safe))
                        (_g105955105980_ _g105956105983_)))))
              (let ()
                (declare (not safe))
                (_g105955105980_ _g105956105983_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g105955105980_
                                                 _g105956105983_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g105955105980_ _g105956105983_)))))
                              (let ()
                                (declare (not safe))
                                (_g105955105980_ _g105956105983_)))))
                      (let ()
                        (declare (not safe))
                        (_g105955105980_ _g105956105983_))))))
          (declare (not safe))
          (_g105954106170_ _stx105953_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_self105805_ _stx105806_)
        (letrec ((_import-set-template105808_
                  (lambda (_in105904_ _phi105905_)
                    (let ((_iphi105907_
                           (fx+ _phi105905_
                                (##direct-structure-ref
                                 _in105904_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_imports105908_
                           (##structure-ref
                            (##direct-structure-ref
                             _in105904_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _lp105910_ ((_rest105912_ _imports105908_)
                                       (_r105913_ '()))
                        (let* ((_rest105914105922_ _rest105912_)
                               (_else105916105930_ (lambda () _r105913_))
                               (_K105918105940_
                                (lambda (_rest105933_ _in105934_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _in105934_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (fxzero? _iphi105907_))
                                          (let ((__tmp114814
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _in105934_
                                                         _r105913_))))
                                            (declare (not safe))
                                            (_lp105910_
                                             _rest105933_
                                             __tmp114814))
                                          (let ()
                                            (declare (not safe))
                                            (_lp105910_
                                             _rest105933_
                                             _r105913_)))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _in105934_
                                             'gx#module-import::t))
                                          (let ((_iphi105936_
                                                 (fx+ _phi105905_
                                                      (##direct-structure-ref
                                                       _in105934_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (fxzero? _iphi105936_))
                                                (let ((__tmp114812
                                                       (let ((__tmp114813
                                                              (##direct-structure-ref
                                                               (##direct-structure-ref
                                                                _in105934_
                                                                '1
                                                                gx#module-import::t
                                                                '#f)
                                                               '1
                                                               gx#module-export::t
                                                               '#f)))
                                                         (declare (not safe))
                                                         (cons __tmp114813
                                                               _r105913_))))
                                                  (declare (not safe))
                                                  (_lp105910_
                                                   _rest105933_
                                                   __tmp114812))
                                                (let ()
                                                  (declare (not safe))
                                                  (_lp105910_
                                                   _rest105933_
                                                   _r105913_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _in105934_
                                                 'gx#import-set::t))
                                              (let ((_xphi105938_
                                                     (fx+ _iphi105907_
                                                          (##direct-structure-ref
                                                           _in105934_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (fxzero? _xphi105938_))
                                                    (let ((__tmp114810
                                                           (let ((__tmp114811
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##direct-structure-ref
                           _in105934_
                           '1
                           gx#import-set::t
                           '#f)))
                     (declare (not safe))
                     (cons __tmp114811 _r105913_))))
              (declare (not safe))
              (_lp105910_ _rest105933_ __tmp114810))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (fxpositive?
                                                         _xphi105938_)
                                                        (let ((__tmp114808
                                                               (let ((__tmp114809
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (_import-set-template105808_
                                 _in105934_
                                 _iphi105907_))))
                         (declare (not safe))
                         (foldl1 cons _r105913_ __tmp114809))))
                  (declare (not safe))
                  (_lp105910_ _rest105933_ __tmp114808))
                (let ()
                  (declare (not safe))
                  (_lp105910_ _rest105933_ _r105913_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_lp105910_
                                                 _rest105933_
                                                 _r105913_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _rest105914105922_))
                              (let ((_hd105919105943_
                                     (let ()
                                       (declare (not safe))
                                       (##car _rest105914105922_)))
                                    (_tl105920105945_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _rest105914105922_))))
                                (let* ((_in105948_ _hd105919105943_)
                                       (_rest105950_ _tl105920105945_))
                                  (declare (not safe))
                                  (_K105918105940_ _rest105950_ _in105948_)))
                              (let ()
                                (declare (not safe))
                                (_else105916105930_)))))))))
          (let* ((_g105810105820_
                  (lambda (_g105811105817_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g105811105817_))))
                 (_g105809105901_
                  (lambda (_g105811105823_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g105811105823_))
                        (let ((_e105815105825_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g105811105823_))))
                          (let ((_hd105814105828_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105815105825_)))
                                (_tl105813105830_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105815105825_))))
                            ((lambda (_L105833_)
                               (let ((_ht105844_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _lp105846_ ((_rest105848_ _L105833_)
                                                  (_loads105849_ '()))
                                   (letrec ((_K105851_
                                             (lambda (_ctx105894_ _rest105895_)
                                               (let ((_id105897_
                                                      (##structure-ref
                                                       _ctx105894_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (hash-get
                                                        _ht105844_
                                                        _id105897_))
                                                     (let ()
                                                       (declare (not safe))
                                                       (_lp105846_
                                                        _rest105895_
                                                        _loads105849_))
                                                     (let ((_rt105899_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _id105897_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _ht105844_
                                                          _id105897_
                                                          _rt105899_))
                                                       (let ((__tmp114815
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _rt105899_ _loads105849_))))
                 (declare (not safe))
                 (_lp105846_ _rest105895_ __tmp114815))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let* ((_rest105852105860_ _rest105848_)
                                            (_else105854105872_
                                             (lambda ()
                                               (let ((__tmp114816
                                                      (map (lambda (_g105867105869_)
                                                             (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g105867105869_))
                   (reverse _loads105849_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons 'begin __tmp114816))))
                                            (_K105856105882_
                                             (lambda (_rest105875_ _in105876_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _in105876_
                                                      'gx#module-context::t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_K105851_
                                                      _in105876_
                                                      _rest105875_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _in105876_
                                                          'gx#module-import::t))
                                                       (if (let ((__tmp114820
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##direct-structure-ref
                           _in105876_
                           '3
                           gx#module-import::t
                           '#f)))
                     (declare (not safe))
                     (fxzero? __tmp114820))
                   (let ((__tmp114819
                          (##direct-structure-ref
                           (##direct-structure-ref
                            _in105876_
                            '1
                            gx#module-import::t
                            '#f)
                           '1
                           gx#module-export::t
                           '#f)))
                     (declare (not safe))
                     (_K105851_ __tmp114819 _rest105875_))
                   (let ()
                     (declare (not safe))
                     (_lp105846_ _rest105875_ _loads105849_)))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _in105876_
                      'gx#import-set::t))
                   (let ((_phi105878_
                          (##direct-structure-ref
                           _in105876_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (let () (declare (not safe)) (fxzero? _phi105878_))
                         (let ((__tmp114818
                                (##direct-structure-ref
                                 _in105876_
                                 '1
                                 gx#import-set::t
                                 '#f)))
                           (declare (not safe))
                           (_K105851_ __tmp114818 _rest105875_))
                         (if (fxpositive? _phi105878_)
                             (let* ((_deps105880_
                                     (let ()
                                       (declare (not safe))
                                       (_import-set-template105808_
                                        _in105876_
                                        '0)))
                                    (__tmp114817
                                     (let ()
                                       (declare (not safe))
                                       (foldl1 cons
                                               _rest105875_
                                               _deps105880_))))
                               (declare (not safe))
                               (_lp105846_ __tmp114817 _loads105849_))
                             (let ()
                               (declare (not safe))
                               (_lp105846_ _rest105875_ _loads105849_)))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _stx105806_
                      _in105876_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _rest105852105860_))
                                           (let ((_hd105857105885_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _rest105852105860_)))
                                                 (_tl105858105887_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _rest105852105860_))))
                                             (let* ((_in105890_
                                                     _hd105857105885_)
                                                    (_rest105892_
                                                     _tl105858105887_))
                                               (declare (not safe))
                                               (_K105856105882_
                                                _rest105892_
                                                _in105890_)))
                                           (let ()
                                             (declare (not safe))
                                             (_else105854105872_))))))))
                             _tl105813105830_)))
                        (let ()
                          (declare (not safe))
                          (_g105810105820_ _g105811105823_))))))
            (declare (not safe))
            (_g105809105901_ _stx105806_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_self105620_ _stx105621_)
        (letrec ((_add-lift!105623_
                  (lambda (_expr105803_)
                    (set-box!
                     (gxc#current-compile-lift)
                     (let ((__tmp114821 (unbox (gxc#current-compile-lift))))
                       (declare (not safe))
                       (cons _expr105803_ __tmp114821)))))
                 (_generate-syntax-quote105624_
                  (lambda (_id105800_ _marks105801_)
                    (let ((__tmp114822
                           (let ((__tmp114823
                                  (let ((__tmp114827
                                         (let ((__tmp114828
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _id105800_ '()))))
                                           (declare (not safe))
                                           (cons 'quote __tmp114828)))
                                        (__tmp114824
                                         (let ((__tmp114825
                                                (let ((__tmp114826
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _marks105801_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '(gx#current-expander-context)
                                                        __tmp114826))))
                                           (declare (not safe))
                                           (cons '#f __tmp114825))))
                                    (declare (not safe))
                                    (cons __tmp114827 __tmp114824))))
                             (declare (not safe))
                             (cons 'gx#syntax-quote::t __tmp114823))))
                      (declare (not safe))
                      (cons '##structure __tmp114822))))
                 (_generate-simple105625_
                  (lambda (_stxq105795_)
                    (let ((_gid105797_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_qid105798_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _stxq105795_))))
                      (let ((__tmp114829
                             (let ((__tmp114830
                                    (let ((__tmp114831
                                           (let ((__tmp114832
                                                  (let ()
                                                    (declare (not safe))
                                                    (_generate-syntax-quote105624_
                                                     _qid105798_
                                                     ''()))))
                                             (declare (not safe))
                                             (cons __tmp114832 '()))))
                                      (declare (not safe))
                                      (cons _gid105797_ __tmp114831))))
                               (declare (not safe))
                               (cons 'define __tmp114830))))
                        (declare (not safe))
                        (_add-lift!105623_ __tmp114829))
                      (let ((__tmp114833 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (hash-put! __tmp114833 _stxq105795_ _gid105797_))
                      _gid105797_)))
                 (_generate-serialized105626_
                  (lambda (_stxq105785_ _marks105786_)
                    (let* ((_mark-refs105788_
                            (map _generate-mark105627_ _marks105786_))
                           (_gid105790_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_qid105792_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _stxq105785_))))
                      (let ((__tmp114834
                             (let ((__tmp114835
                                    (let ((__tmp114836
                                           (let ((__tmp114837
                                                  (let ((__tmp114838
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _mark-refs105788_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (_generate-syntax-quote105624_
                                                     _qid105792_
                                                     __tmp114838))))
                                             (declare (not safe))
                                             (cons __tmp114837 '()))))
                                      (declare (not safe))
                                      (cons _gid105790_ __tmp114836))))
                               (declare (not safe))
                               (cons 'define __tmp114835))))
                        (declare (not safe))
                        (_add-lift!105623_ __tmp114834))
                      (let ((__tmp114839 (gxc#current-compile-identifiers)))
                        (declare (not safe))
                        (hash-put! __tmp114839 _stxq105785_ _gid105790_))
                      _gid105790_)))
                 (_generate-mark105627_
                  (lambda (_mark105771_)
                    (let ((_$e105773_
                           (let ((__tmp114840 (gxc#current-compile-marks)))
                             (declare (not safe))
                             (hash-get __tmp114840 _mark105771_))))
                      (if _$e105773_
                          (values _$e105773_)
                          (let* ((_gid105776_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_repr105778_
                                  (let ()
                                    (declare (not safe))
                                    (_serialize-mark105628_ _mark105771_)))
                                 (_ctx105780_
                                  (let ((__tmp114841
                                         (##structure-ref
                                          _mark105771_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp114841)))
                                 (_ctx-ref105782_
                                  (if (let ((__tmp114846
                                             (gx#current-expander-context)))
                                        (declare (not safe))
                                        (eq? _ctx105780_ __tmp114846))
                                      '(gx#current-expander-context)
                                      (let ((__tmp114842
                                             (let ((__tmp114843
                                                    (let ((__tmp114844
                                                           (let ((__tmp114845
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (_context-ref105629_ _ctx105780_))))
                     (declare (not safe))
                     (cons __tmp114845 '()))))
              (declare (not safe))
              (cons 'quote __tmp114844))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp114843 '()))))
                                        (declare (not safe))
                                        (cons 'gx#import-module
                                              __tmp114842)))))
                            (let ((__tmp114847 (gxc#current-compile-marks)))
                              (declare (not safe))
                              (hash-put! __tmp114847 _mark105771_ _gid105776_))
                            (let ((__tmp114848
                                   (let ((__tmp114849
                                          (let ((__tmp114850
                                                 (let ((__tmp114851
                                                        (let ((__tmp114852
                                                               (let ((__tmp114854
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp114855
                                     (let ()
                                       (declare (not safe))
                                       (cons _repr105778_ '()))))
                                (declare (not safe))
                                (cons 'quote __tmp114855)))
                             (__tmp114853
                              (let ()
                                (declare (not safe))
                                (cons _ctx-ref105782_ '()))))
                         (declare (not safe))
                         (cons __tmp114854 __tmp114853))))
                  (declare (not safe))
                  (cons 'gx#core-deserialize-mark __tmp114852))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp114851 '()))))
                                            (declare (not safe))
                                            (cons _gid105776_ __tmp114850))))
                                     (declare (not safe))
                                     (cons 'define __tmp114849))))
                              (declare (not safe))
                              (_add-lift!105623_ __tmp114848))
                            _gid105776_)))))
                 (_serialize-mark105628_
                  (lambda (_mark105718_)
                    (letrec ((_quote-e105720_
                              (lambda (_sym105769_)
                                (if (interned-symbol? _sym105769_)
                                    _sym105769_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _sym105769_))))))
                      (let* ((_mark105721105730_ _mark105718_)
                             (_E105723105734_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _mark105721105730_))))
                             (_K105724105746_
                              (lambda (_trace105737_
                                       _phi105738_
                                       _ctx105739_
                                       _subst105740_)
                                (let* ((_subs105742_
                                        (if _subst105740_
                                            (let ()
                                              (declare (not safe))
                                              (hash->list _subst105740_))
                                            '()))
                                       (__tmp114856
                                        (map (lambda (_pair105744_)
                                               (let ((__tmp114859
                                                      (let ((__tmp114860
                                                             (car _pair105744_)))
                                                        (declare (not safe))
                                                        (_quote-e105720_
                                                         __tmp114860)))
                                                     (__tmp114857
                                                      (let ((__tmp114858
                                                             (cdr _pair105744_)))
                                                        (declare (not safe))
                                                        (_quote-e105720_
                                                         __tmp114858))))
                                                 (declare (not safe))
                                                 (cons __tmp114859
                                                       __tmp114857)))
                                             _subs105742_)))
                                  (declare (not safe))
                                  (cons _phi105738_ __tmp114856)))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _mark105721105730_
                               'gx#expander-mark::t))
                            (let* ((_e105725105749_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark105721105730_
                                       '1
                                       gx#expander-mark::t
                                       '#f)))
                                   (_subst105752_ _e105725105749_)
                                   (_e105726105754_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark105721105730_
                                       '2
                                       gx#expander-mark::t
                                       '#f)))
                                   (_ctx105757_ _e105726105754_)
                                   (_e105727105759_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark105721105730_
                                       '3
                                       gx#expander-mark::t
                                       '#f)))
                                   (_phi105762_ _e105727105759_)
                                   (_e105728105764_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _mark105721105730_
                                       '4
                                       gx#expander-mark::t
                                       '#f)))
                                   (_trace105767_ _e105728105764_))
                              (declare (not safe))
                              (_K105724105746_
                               _trace105767_
                               _phi105762_
                               _ctx105757_
                               _subst105752_))
                            (let ()
                              (declare (not safe))
                              (_E105723105734_)))))))
                 (_context-ref105629_
                  (lambda (_ctx105705_)
                    (if (let ((__tmp114868
                               (##structure-ref
                                _ctx105705_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp114868
                           'gx#module-context::t))
                        (let ((_ctx-ref105707_
                               (let ()
                                 (declare (not safe))
                                 (_context-ref-nested105631_ _ctx105705_)))
                              (_ctx-origin105708_
                               (let ()
                                 (declare (not safe))
                                 (_context-ref-origin105630_ _ctx105705_)))
                              (_origin105709_
                               (let ((__tmp114862
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (_context-ref-origin105630_ __tmp114862))))
                          (if (let ()
                                (declare (not safe))
                                (eq? _origin105709_ _ctx-origin105708_))
                              (let ((_ref105711_
                                     (let ((__tmp114863
                                            (gx#current-expander-context)))
                                       (declare (not safe))
                                       (_context-ref-nested105631_
                                        __tmp114863))))
                                (let _lp105713_ ((_ref105715_
                                                  (cdr _ref105711_))
                                                 (_ctx-ref105716_
                                                  (cdr _ctx-ref105707_)))
                                  (if (and (let ()
                                             (declare (not safe))
                                             (pair? _ref105715_))
                                           (let ((__tmp114867
                                                  (car _ref105715_))
                                                 (__tmp114866
                                                  (car _ctx-ref105716_)))
                                             (declare (not safe))
                                             (eq? __tmp114867 __tmp114866)))
                                      (let ((__tmp114865 (cdr _ref105715_))
                                            (__tmp114864
                                             (cdr _ctx-ref105716_)))
                                        (declare (not safe))
                                        (_lp105713_ __tmp114865 __tmp114864))
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f _ctx-ref105716_)))))
                              _ctx-ref105707_))
                        (let ((__tmp114861
                               (##structure-ref
                                _ctx105705_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp114861)))))
                 (_context-ref-origin105630_
                  (lambda (_ctx105697_)
                    (let _lp105699_ ((_ctx105701_ _ctx105697_))
                      (let ((_super105703_
                             (##structure-ref
                              _ctx105701_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super105703_
                               'gx#module-context::t))
                            (let ()
                              (declare (not safe))
                              (_lp105699_ _super105703_))
                            _ctx105701_)))))
                 (_context-ref-nested105631_
                  (lambda (_ctx105688_)
                    (let _lp105690_ ((_ctx105692_ _ctx105688_) (_r105693_ '()))
                      (let ((_super105695_
                             (##structure-ref
                              _ctx105692_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _super105695_
                               'gx#module-context::t))
                            (let ((__tmp114871
                                   (let ((__tmp114872
                                          (car (##structure-ref
                                                _ctx105692_
                                                '7
                                                gx#module-context::t
                                                '#f))))
                                     (declare (not safe))
                                     (cons __tmp114872 _r105693_))))
                              (declare (not safe))
                              (_lp105690_ _super105695_ __tmp114871))
                            (let ((__tmp114869
                                   (let ((__tmp114870
                                          (##structure-ref
                                           _ctx105692_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (make-symbol__1 '":" __tmp114870))))
                              (declare (not safe))
                              (cons __tmp114869 _r105693_))))))))
          (let* ((_g105633105646_
                  (lambda (_g105634105643_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g105634105643_))))
                 (_g105632105685_
                  (lambda (_g105634105649_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g105634105649_))
                        (let ((_e105638105651_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g105634105649_))))
                          (let ((_hd105637105654_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105638105651_)))
                                (_tl105636105656_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105638105651_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl105636105656_))
                                (let ((_e105641105659_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl105636105656_))))
                                  (let ((_hd105640105662_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e105641105659_)))
                                        (_tl105639105664_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e105641105659_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl105639105664_))
                                        ((lambda (_L105667_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _L105667_))
                                               (let ((_$e105680_
                                                      (let ((__tmp114873
                                                             (gxc#current-compile-identifiers)))
                                                        (declare (not safe))
                                                        (hash-get
                                                         __tmp114873
                                                         _L105667_))))
                                                 (if _$e105680_
                                                     (values _$e105680_)
                                                     (let ((_marks105683_
                                                            (##direct-structure-ref
                                                             _L105667_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (null? _marks105683_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-simple105625_
                                                              _L105667_))
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_generate-serialized105626_
                                                              _L105667_
                                                              _marks105683_))))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _L105667_))))
                                         _hd105640105662_)
                                        (let ()
                                          (declare (not safe))
                                          (_g105633105646_ _g105634105649_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g105633105646_ _g105634105649_)))))
                        (let ()
                          (declare (not safe))
                          (_g105633105646_ _g105634105649_))))))
            (declare (not safe))
            (_g105632105685_ _stx105621_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_self105552_ _stx105553_)
        (let* ((_g105555105572_
                (lambda (_g105556105569_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105556105569_))))
               (_g105554105617_
                (lambda (_g105556105575_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105556105575_))
                      (let ((_e105561105577_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105556105575_))))
                        (let ((_hd105560105580_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105561105577_)))
                              (_tl105559105582_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105561105577_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105559105582_))
                              (let ((_e105564105585_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105559105582_))))
                                (let ((_hd105563105588_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105564105585_)))
                                      (_tl105562105590_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105564105585_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl105562105590_))
                                      (let ((_e105567105593_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl105562105590_))))
                                        (let ((_hd105566105596_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e105567105593_)))
                                              (_tl105565105598_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e105567105593_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl105565105598_))
                                              ((lambda (_L105601_ _L105602_)
                                                 (let ((__tmp114874
                                                        (let ((__tmp114877
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _L105602_)))
                      (__tmp114875
                       (let ((__tmp114876
                              (let ()
                                (declare (not safe))
                                (gxc#compile-e__1 _self105552_ _L105601_))))
                         (declare (not safe))
                         (cons __tmp114876 '()))))
                  (declare (not safe))
                  (cons __tmp114877 __tmp114875))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons 'define __tmp114874)))
                                               _hd105566105596_
                                               _hd105563105588_)
                                              (let ()
                                                (declare (not safe))
                                                (_g105555105572_
                                                 _g105556105575_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g105555105572_ _g105556105575_)))))
                              (let ()
                                (declare (not safe))
                                (_g105555105572_ _g105556105575_)))))
                      (let ()
                        (declare (not safe))
                        (_g105555105572_ _g105556105575_))))))
          (declare (not safe))
          (_g105554105617_ _stx105553_))))
    (define gxc#generate-meta-begin%
      (lambda (_self105501_ _stx105502_)
        (let* ((_g105504105514_
                (lambda (_g105505105511_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105505105511_))))
               (_g105503105549_
                (lambda (_g105505105517_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105505105517_))
                      (let ((_e105509105519_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105505105517_))))
                        (let ((_hd105508105522_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105509105519_)))
                              (_tl105507105524_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105509105519_))))
                          ((lambda (_L105527_)
                             (let* ((_c-body105541_
                                     (map (lambda (_g105536105538_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _self105501_
                                               _g105536105538_)))
                                          _L105527_))
                                    (_c-body105546_
                                     (filter (lambda (_$obj105543_)
                                               (let ((__tmp114878
                                                      (let ()
                                                        (declare (not safe))
                                                        (eq? _$obj105543_
                                                             '#!void))))
                                                 (declare (not safe))
                                                 (not __tmp114878)))
                                             _c-body105541_)))
                               (let ()
                                 (declare (not safe))
                                 (cons '%#begin _c-body105546_))))
                           _tl105507105524_)))
                      (let ()
                        (declare (not safe))
                        (_g105504105514_ _g105505105517_))))))
          (declare (not safe))
          (_g105503105549_ _stx105502_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_self105409_ _stx105410_)
        (let* ((_g105412105422_
                (lambda (_g105413105419_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105413105419_))))
               (_g105411105498_
                (lambda (_g105413105425_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105413105425_))
                      (let ((_e105417105427_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105413105425_))))
                        (let ((_hd105416105430_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105417105427_)))
                              (_tl105415105432_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105417105427_))))
                          ((lambda (_L105435_)
                             (let* ((_phi105445_
                                     (let ((__tmp114879
                                            (gx#current-expander-phi)))
                                       (declare (not safe))
                                       (fx+ __tmp114879 '1)))
                                    (_block105447_
                                     (let ((__tmp114880
                                            (let ()
                                              (declare (not safe))
                                              (slot-ref__0
                                               _self105409_
                                               'state))))
                                       (declare (not safe))
                                       (gxc#meta-state-begin-phi!
                                        __tmp114880
                                        _phi105445_)))
                                    (_compiled105450_
                                     (let ((__tmp114881
                                            (lambda ()
                                              (let ((__tmp114883
                                                     (let ((__tmp114884
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '%#begin))))
                                                       (declare (not safe))
                                                       (cons __tmp114884
                                                             _L105435_)))
                                                    (__tmp114882
                                                     (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _self105409_
                                                        'state))))
                                                (declare (not safe))
                                                (gxc#apply-generate-meta-phi
                                                 __tmp114883
                                                 'state:
                                                 __tmp114882)))))
                                       (declare (not safe))
                                       (call-with-parameters
                                        __tmp114881
                                        gx#current-expander-phi
                                        _phi105445_))))
                               (let* ((_g105453105463_
                                       (lambda (_g105454105460_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g105454105460_))))
                                      (_g105452105495_
                                       (lambda (_g105454105466_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _g105454105466_))
                                             (let ((_e105458105468_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _g105454105466_))))
                                               (let ((_hd105457105471_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e105458105468_)))
                                                     (_tl105456105473_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e105458105468_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _hd105457105471_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#begin
                                                            _hd105457105471_))
                                                         ((lambda (_L105476_)
                                                            (let ((_c-body105493_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (filter (lambda (_$obj105490_)
                                     (let ((__tmp114885
                                            (let ()
                                              (declare (not safe))
                                              (eq? _$obj105490_ '#!void))))
                                       (declare (not safe))
                                       (not __tmp114885)))
                                   _L105476_)))
                      (if _block105447_
                          (let ((__tmp114886
                                 (let ((__tmp114887
                                        (let ((__tmp114888
                                               (let ((__tmp114892
                                                      (let ((__tmp114893
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons 'load-module '()))))
                (declare (not safe))
                (cons '%#ref __tmp114893)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp114889
                                                      (let ((__tmp114890
                                                             (let ((__tmp114891
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _block105447_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp114891))))
                (declare (not safe))
                (cons __tmp114890 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp114892
                                                       __tmp114889))))
                                          (declare (not safe))
                                          (cons '%#call __tmp114888))))
                                   (declare (not safe))
                                   (cons __tmp114887 _c-body105493_))))
                            (declare (not safe))
                            (cons '%#begin-syntax __tmp114886))
                          (if (let ()
                                (declare (not safe))
                                (null? _c-body105493_))
                              '#!void
                              (let ()
                                (declare (not safe))
                                (cons '%#begin-syntax _c-body105493_))))))
                  _tl105456105473_)
                 (let ()
                   (declare (not safe))
                   (_g105453105463_ _g105454105466_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_g105453105463_
                                                        _g105454105466_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_g105453105463_
                                                _g105454105466_))))))
                                 (declare (not safe))
                                 (_g105452105495_ _compiled105450_))))
                           _tl105415105432_)))
                      (let ()
                        (declare (not safe))
                        (_g105412105422_ _g105413105425_))))))
          (declare (not safe))
          (_g105411105498_ _stx105410_))))
    (define gxc#generate-meta-module%
      (lambda (_self105340_ _stx105341_)
        (let ((__tmp114894
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _self105340_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp114894))
        (let* ((_g105343105357_
                (lambda (_g105344105354_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g105344105354_))))
               (_g105342105406_
                (lambda (_g105344105360_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g105344105360_))
                      (let ((_e105349105362_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g105344105360_))))
                        (let ((_hd105348105365_
                               (let ()
                                 (declare (not safe))
                                 (##car _e105349105362_)))
                              (_tl105347105367_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e105349105362_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl105347105367_))
                              (let ((_e105352105370_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl105347105367_))))
                                (let ((_hd105351105373_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e105352105370_)))
                                      (_tl105350105375_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e105352105370_))))
                                  ((lambda (_L105378_ _L105379_)
                                     (let ((_key105392_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _L105379_))))
                                       (if (interned-symbol? _key105392_)
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _stx105341_
                                              _L105379_
                                              _key105392_)))
                                       (let* ((_ctx105394_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _L105379_)))
                                              (_code105397_
                                               (let ((__tmp114895
                                                      (lambda ()
                                                        (let ((__tmp114896
                                                               (##structure-ref
                                                                _ctx105394_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _self105340_
                                                           __tmp114896)))))
                                                 (declare (not safe))
                                                 (call-with-parameters
                                                  __tmp114895
                                                  gx#current-expander-context
                                                  _ctx105394_)))
                                              (_rt105399_
                                               (let ((__tmp114897
                                                      (gxc#current-compile-runtime-sections)))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp114897
                                                  _ctx105394_)))
                                              (_loader105401_
                                               (if _rt105399_
                                                   (let ((__tmp114898
                                                          (let ((__tmp114899
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp114903
                                (let ((__tmp114904
                                       (let ()
                                         (declare (not safe))
                                         (cons 'load-module '()))))
                                  (declare (not safe))
                                  (cons '%#ref __tmp114904)))
                               (__tmp114900
                                (let ((__tmp114901
                                       (let ((__tmp114902
                                              (let ()
                                                (declare (not safe))
                                                (cons _rt105399_ '()))))
                                         (declare (not safe))
                                         (cons '%#quote __tmp114902))))
                                  (declare (not safe))
                                  (cons __tmp114901 '()))))
                           (declare (not safe))
                           (cons __tmp114903 __tmp114900))))
                    (declare (not safe))
                    (cons '%#call __tmp114899))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp114898 '()))
                                                   '()))
                                              (_modid105403_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _L105379_))))
                                         (let ((__tmp114905
                                                (let ()
                                                  (declare (not safe))
                                                  (slot-ref__0
                                                   _self105340_
                                                   'state))))
                                           (declare (not safe))
                                           (gxc#meta-state-end-phi!
                                            __tmp114905))
                                         (let ((__tmp114906
                                                (let ((__tmp114907
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _code105397_
                                                               _loader105401_))))
                                                  (declare (not safe))
                                                  (cons _modid105403_
                                                        __tmp114907))))
                                           (declare (not safe))
                                           (cons '%#module __tmp114906)))))
                                   _tl105350105375_
                                   _hd105351105373_)))
                              (let ()
                                (declare (not safe))
                                (_g105343105357_ _g105344105360_)))))
                      (let ()
                        (declare (not safe))
                        (_g105343105357_ _g105344105360_))))))
          (declare (not safe))
          (_g105342105406_ _stx105341_))))
    (define gxc#generate-meta-import-path
      (lambda (_ctx105330_ _context-chain105331_)
        (let _lp105333_ ((_ctx105335_ _ctx105330_) (_path105336_ '()))
          (let ((_super105338_
                 (##structure-ref _ctx105335_ '3 gx#phi-context::t '#f)))
            (if (memq _super105338_ _context-chain105331_)
                (let ((__tmp114912
                       (let ((__tmp114913
                              (car (##structure-ref
                                    _ctx105335_
                                    '7
                                    gx#module-context::t
                                    '#f))))
                         (declare (not safe))
                         (cons __tmp114913 _path105336_))))
                  (declare (not safe))
                  (cons '#f __tmp114912))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _super105338_
                       'gx#module-context::t))
                    (let ((__tmp114910
                           (let ((__tmp114911
                                  (car (##structure-ref
                                        _ctx105335_
                                        '7
                                        gx#module-context::t
                                        '#f))))
                             (declare (not safe))
                             (cons __tmp114911 _path105336_))))
                      (declare (not safe))
                      (_lp105333_ _super105338_ __tmp114910))
                    (let ((__tmp114908
                           (let ((__tmp114909
                                  (##structure-ref
                                   _ctx105335_
                                   '1
                                   gx#expander-context::t
                                   '#f)))
                             (declare (not safe))
                             (make-symbol__1 '":" __tmp114909))))
                      (declare (not safe))
                      (cons __tmp114908 _path105336_))))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _lp105325_ ((_ctx105327_ (gx#current-expander-context))
                         (_r105328_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _ctx105327_ 'gx#module-context::t))
              (let ((__tmp114915
                     (##structure-ref _ctx105327_ '3 gx#phi-context::t '#f))
                    (__tmp114914
                     (let ()
                       (declare (not safe))
                       (cons _ctx105327_ _r105328_))))
                (declare (not safe))
                (_lp105325_ __tmp114915 __tmp114914))
              _r105328_))))
    (define gxc#generate-meta-import%
      (lambda (_self105094_ _stx105095_)
        (letrec* ((_context-chain105097_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_make-import-spec105098_
                   (lambda (_in105261_)
                     (let* ((_in105262105274_ _in105261_)
                            (_E105264105278_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _in105262105274_))))
                            (_K105265105288_
                             (lambda (_phi105281_
                                      _name105282_
                                      _src-name105283_
                                      _src-phi105284_
                                      _src-key105285_
                                      _src-ctx105286_)
                               (let ((__tmp114916
                                      (let ((__tmp114920
                                             (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _name105282_)))
                                            (__tmp114917
                                             (let ((__tmp114918
                                                    (let ((__tmp114919
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#generate-runtime-identifier-key
                                                              _src-name105283_))))
                                                      (declare (not safe))
                                                      (cons __tmp114919 '()))))
                                               (declare (not safe))
                                               (cons _src-phi105284_
                                                     __tmp114918))))
                                        (declare (not safe))
                                        (cons __tmp114920 __tmp114917))))
                                 (declare (not safe))
                                 (cons _phi105281_ __tmp114916)))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _in105262105274_
                              'gx#module-import::t))
                           (let ((_e105266105291_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _in105262105274_
                                     '1
                                     gx#module-import::t
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _e105266105291_
                                    'gx#module-export::t))
                                 (let* ((_e105269105294_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e105266105291_
                                            '1
                                            gx#module-export::t
                                            '#f)))
                                        (_src-ctx105297_ _e105269105294_)
                                        (_e105270105299_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e105266105291_
                                            '2
                                            gx#module-export::t
                                            '#f)))
                                        (_src-key105302_ _e105270105299_)
                                        (_e105271105304_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e105266105291_
                                            '3
                                            gx#module-export::t
                                            '#f)))
                                        (_src-phi105307_ _e105271105304_)
                                        (_e105272105309_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _e105266105291_
                                            '4
                                            gx#module-export::t
                                            '#f)))
                                        (_src-name105312_ _e105272105309_)
                                        (_e105267105314_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _in105262105274_
                                            '2
                                            gx#module-import::t
                                            '#f)))
                                        (_name105317_ _e105267105314_)
                                        (_e105268105319_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _in105262105274_
                                            '3
                                            gx#module-import::t
                                            '#f)))
                                        (_phi105322_ _e105268105319_))
                                   (declare (not safe))
                                   (_K105265105288_
                                    _phi105322_
                                    _name105317_
                                    _src-name105312_
                                    _src-phi105307_
                                    _src-key105302_
                                    _src-ctx105297_))
                                 (let ()
                                   (declare (not safe))
                                   (_E105264105278_))))
                           (let () (declare (not safe)) (_E105264105278_))))))
                  (_make-import-path105099_
                   (lambda (_ctx105259_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _ctx105259_
                        _context-chain105097_))))
                  (_make-import-spec-in105100_
                   (lambda (_ctx105256_ _in105257_)
                     (let ((__tmp114921
                            (let ((__tmp114923
                                   (let ()
                                     (declare (not safe))
                                     (_make-import-path105099_ _ctx105256_)))
                                  (__tmp114922 (reverse _in105257_)))
                              (declare (not safe))
                              (cons __tmp114923 __tmp114922))))
                       (declare (not safe))
                       (cons 'spec: __tmp114921)))))
          (let ((__tmp114924
                 (let ()
                   (declare (not safe))
                   (slot-ref__0 _self105094_ 'state))))
            (declare (not safe))
            (gxc#meta-state-end-phi! __tmp114924))
          (let* ((_g105102105112_
                  (lambda (_g105103105109_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g105103105109_))))
                 (_g105101105253_
                  (lambda (_g105103105115_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g105103105115_))
                        (let ((_e105107105117_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g105103105115_))))
                          (let ((_hd105106105120_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e105107105117_)))
                                (_tl105105105122_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e105107105117_))))
                            ((lambda (_L105125_)
                               (let _lp105136_ ((_rest105138_ _L105125_)
                                                (_current-src105139_ '#f)
                                                (_current-in105140_ '())
                                                (_r105141_ '()))
                                 (let* ((_rest105142105150_ _rest105138_)
                                        (_else105144105160_
                                         (lambda ()
                                           (let* ((_r105158_
                                                   (if _current-src105139_
                                                       (let ((__tmp114925
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (_make-import-spec-in105100_
                         _current-src105139_
                         _current-in105140_))))
                 (declare (not safe))
                 (cons __tmp114925 _r105141_))
               _r105141_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp114926
                                                   (reverse _r105158_)))
                                             (declare (not safe))
                                             (cons '%#import __tmp114926))))
                                        (_K105146105241_
                                         (lambda (_rest105163_ _in105164_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _in105164_
                                                  'gx#module-import::t))
                                               (let* ((_in105165105172_
                                                       _in105164_)
                                                      (_E105167105176_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _in105165105172_))))
              (_K105168105181_
               (lambda (_src-ctx105179_)
                 (if (let ()
                       (declare (not safe))
                       (eq? _current-src105139_ _src-ctx105179_))
                     (let ((__tmp114942
                            (let ((__tmp114943
                                   (let ()
                                     (declare (not safe))
                                     (_make-import-spec105098_ _in105164_))))
                              (declare (not safe))
                              (cons __tmp114943 _current-in105140_))))
                       (declare (not safe))
                       (_lp105136_
                        _rest105163_
                        _current-src105139_
                        __tmp114942
                        _r105141_))
                     (if _current-src105139_
                         (let ((__tmp114940
                                (let ((__tmp114941
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec105098_
                                          _in105164_))))
                                  (declare (not safe))
                                  (cons __tmp114941 '())))
                               (__tmp114938
                                (let ((__tmp114939
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec-in105100_
                                          _current-src105139_
                                          _current-in105140_))))
                                  (declare (not safe))
                                  (cons __tmp114939 _r105141_))))
                           (declare (not safe))
                           (_lp105136_
                            _rest105163_
                            _src-ctx105179_
                            __tmp114940
                            __tmp114938))
                         (let ((__tmp114936
                                (let ((__tmp114937
                                       (let ()
                                         (declare (not safe))
                                         (_make-import-spec105098_
                                          _in105164_))))
                                  (declare (not safe))
                                  (cons __tmp114937 '()))))
                           (declare (not safe))
                           (_lp105136_
                            _rest105163_
                            _src-ctx105179_
                            __tmp114936
                            _r105141_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _in105165105172_
                                                        'gx#module-import::t))
                                                     (let ((_e105169105184_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _in105165105172_
                                                               '1
                                                               gx#module-import::t
                                                               '#f))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              _e105169105184_
                                                              'gx#module-export::t))
                                                           (let* ((_e105170105187_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _e105169105184_
                              '1
                              gx#module-export::t
                              '#f)))
                          (_src-ctx105190_ _e105170105187_))
                     (declare (not safe))
                     (_K105168105181_ _src-ctx105190_))
                   (let () (declare (not safe)) (_E105167105176_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_E105167105176_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _in105164_
                                                      'gx#import-set::t))
                                                   (let* ((_phi105192_
                                                           (##direct-structure-ref
                                                            _in105164_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src105194_
                                                           (##direct-structure-ref
                                                            _in105164_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_src-in105234_
                                                           (let* ((_g105195105204_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (_make-import-path105099_ _src105194_)))
                          (_E105198105208_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _g105195105204_)))))
                     (let ((_K105200105224_
                            (lambda (_path105222_) _path105222_))
                           (_K105199105214_
                            (lambda (_path105212_)
                              (let ()
                                (declare (not safe))
                                (cons 'in: _path105212_)))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _g105195105204_))
                           (let ((_tl105202105229_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _g105195105204_)))
                                 (_hd105201105227_
                                  (let ()
                                    (declare (not safe))
                                    (##car _g105195105204_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _tl105202105229_))
                                 (let ((_path105232_ _hd105201105227_))
                                   (declare (not safe))
                                   (_K105200105224_ _path105232_))
                                 (let ((_path105217_ _g105195105204_))
                                   (declare (not safe))
                                   (_K105199105214_ _path105217_))))
                           (let ((_path105217_ _g105195105204_))
                             (declare (not safe))
                             (_K105199105214_ _path105217_))))))
                  (_r105236_
                   (if _current-src105139_
                       (let ((__tmp114931
                              (let ()
                                (declare (not safe))
                                (_make-import-spec-in105100_
                                 _current-src105139_
                                 _current-in105140_))))
                         (declare (not safe))
                         (cons __tmp114931 _r105141_))
                       _r105141_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((__tmp114932
                                                            (let ((__tmp114933
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (if (let ()
                                 (declare (not safe))
                                 (fxzero? _phi105192_))
                               _src-in105234_
                               (let ((__tmp114934
                                      (let ((__tmp114935
                                             (let ()
                                               (declare (not safe))
                                               (cons _src-in105234_ '()))))
                                        (declare (not safe))
                                        (cons _phi105192_ __tmp114935))))
                                 (declare (not safe))
                                 (cons 'phi: __tmp114934)))))
                      (declare (not safe))
                      (cons __tmp114933 _r105236_))))
               (declare (not safe))
               (_lp105136_ _rest105163_ '#f '() __tmp114932)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _in105164_
                                                          'gx#module-context::t))
                                                       (let* ((_r105239_
                                                               (if _current-src105139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp114927
                                  (let ()
                                    (declare (not safe))
                                    (_make-import-spec-in105100_
                                     _current-src105139_
                                     _current-in105140_))))
                             (declare (not safe))
                             (cons __tmp114927 _r105141_))
                           _r105141_))
                      (__tmp114928
                       (let ((__tmp114929
                              (let ((__tmp114930
                                     (let ()
                                       (declare (not safe))
                                       (_make-import-path105099_ _in105164_))))
                                (declare (not safe))
                                (cons 'runtime: __tmp114930))))
                         (declare (not safe))
                         (cons __tmp114929 _r105239_))))
                 (declare (not safe))
                 (_lp105136_ _rest105163_ '#f '() __tmp114928))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest105142105150_))
                                       (let ((_hd105147105244_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest105142105150_)))
                                             (_tl105148105246_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest105142105150_))))
                                         (let* ((_in105249_ _hd105147105244_)
                                                (_rest105251_
                                                 _tl105148105246_))
                                           (declare (not safe))
                                           (_K105146105241_
                                            _rest105251_
                                            _in105249_)))
                                       (let ()
                                         (declare (not safe))
                                         (_else105144105160_))))))
                             _tl105105105122_)))
                        (let ()
                          (declare (not safe))
                          (_g105102105112_ _g105103105115_))))))
            (declare (not safe))
            (_g105101105253_ _stx105095_)))))
    (define gxc#generate-meta-export%
      (lambda (_self104904_ _stx104905_)
        (letrec* ((_context-chain104907_
                   (let () (declare (not safe)) (gxc#current-context-chain)))
                  (_make-import-path104908_
                   (lambda (_ctx105092_)
                     (let ()
                       (declare (not safe))
                       (gxc#generate-meta-import-path
                        _ctx105092_
                        _context-chain104907_)))))
          (let* ((_g104910104920_
                  (lambda (_g104911104917_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104911104917_))))
                 (_g104909105089_
                  (lambda (_g104911104923_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104911104923_))
                        (let ((_e104915104925_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104911104923_))))
                          (let ((_hd104914104928_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104915104925_)))
                                (_tl104913104930_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104915104925_))))
                            ((lambda (_L104933_)
                               (let _lp104944_ ((_rest104946_ _L104933_)
                                                (_r104947_ '()))
                                 (let* ((_rest104948104956_ _rest104946_)
                                        (_else104950104964_
                                         (lambda ()
                                           (let ((__tmp114944
                                                  (reverse _r104947_)))
                                             (declare (not safe))
                                             (cons '%#export __tmp114944))))
                                        (_K104952105077_
                                         (lambda (_rest104967_ _out104968_)
                                           (let* ((_out104969104982_
                                                   _out104968_)
                                                  (_E104972104986_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _out104969104982_)))))
                                             (let ((_K104976105056_
                                                    (lambda (_name105052_
                                                             _phi105053_
                                                             _key105054_)
                                                      (let ((__tmp114945
                                                             (let ((__tmp114946
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp114947
                                   (let ((__tmp114948
                                          (let ((__tmp114951
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#generate-runtime-identifier-key
                                                    _key105054_)))
                                                (__tmp114949
                                                 (let ((__tmp114950
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#generate-runtime-identifier-key
                                                           _name105052_))))
                                                   (declare (not safe))
                                                   (cons __tmp114950 '()))))
                                            (declare (not safe))
                                            (cons __tmp114951 __tmp114949))))
                                     (declare (not safe))
                                     (cons _phi105053_ __tmp114948))))
                              (declare (not safe))
                              (cons 'spec: __tmp114947))))
                       (declare (not safe))
                       (cons __tmp114946 _r104947_))))
                (declare (not safe))
                (_lp104944_ _rest104967_ __tmp114945))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_K104973105036_
                                                    (lambda (_phi104990_
                                                             _src104991_)
                                                      (let* ((_out105031_
                                                              (if _src104991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp114952
                                 (let ((__tmp114953
                                        (let* ((_g104992105001_
                                                (let ()
                                                  (declare (not safe))
                                                  (_make-import-path104908_
                                                   _src104991_)))
                                               (_E104995105005_
                                                (lambda ()
                                                  (let ()
                                                    (declare (not safe))
                                                    (error '"No clause matching"
                                                           _g104992105001_)))))
                                          (let ((_K104997105021_
                                                 (lambda (_path105019_)
                                                   _path105019_))
                                                (_K104996105011_
                                                 (lambda (_path105009_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'in:
                                                           _path105009_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _g104992105001_))
                                                (let ((_tl104999105026_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _g104992105001_)))
                                                      (_hd104998105024_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _g104992105001_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##null? _tl104999105026_))
                                                      (let ((_path105029_
                                                             _hd104998105024_))
                                                        (declare (not safe))
                                                        (_K104997105021_
                                                         _path105029_))
                                                      (let ((_path105014_
                                                             _g104992105001_))
                                                        (declare (not safe))
                                                        (_K104996105011_
                                                         _path105014_))))
                                                (let ((_path105014_
                                                       _g104992105001_))
                                                  (declare (not safe))
                                                  (_K104996105011_
                                                   _path105014_)))))))
                                   (declare (not safe))
                                   (cons __tmp114953 '()))))
                            (declare (not safe))
                            (cons 'import: __tmp114952))
                          '#t))
                     (_out105033_
                      (if (let () (declare (not safe)) (fxzero? _phi104990_))
                          _out105031_
                          (let ((__tmp114954
                                 (let ((__tmp114955
                                        (let ()
                                          (declare (not safe))
                                          (cons _out105031_ '()))))
                                   (declare (not safe))
                                   (cons _phi104990_ __tmp114955))))
                            (declare (not safe))
                            (cons 'phi: __tmp114954)))))
                (let ((__tmp114956
                       (let ()
                         (declare (not safe))
                         (cons _out105033_ _r104947_))))
                  (declare (not safe))
                  (_lp104944_ _rest104967_ __tmp114956))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_try-match104971105049_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _out104969104982_
                                                               'gx#export-set::t))
                                                            (let* ((_e104974105039_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _out104969104982_
                               '1
                               gx#export-set::t
                               '#f)))
                           (_e104975105044_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _out104969104982_
                               '2
                               gx#export-set::t
                               '#f))))
                      (let ((_src105042_ _e104974105039_)
                            (_phi105047_ _e104975105044_))
                        (let ()
                          (declare (not safe))
                          (_K104973105036_ _phi105047_ _src105042_))))
                    (let () (declare (not safe)) (_E104972104986_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _out104969104982_
                                                        'gx#module-export::t))
                                                     (let* ((_e104977105059_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _out104969104982_
                        '1
                        gx#module-export::t
                        '#f)))
                    (_e104978105062_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out104969104982_
                        '2
                        gx#module-export::t
                        '#f)))
                    (_e104979105067_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out104969104982_
                        '3
                        gx#module-export::t
                        '#f)))
                    (_e104980105072_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _out104969104982_
                        '4
                        gx#module-export::t
                        '#f))))
               (let ((_key105065_ _e104978105062_)
                     (_phi105070_ _e104979105067_)
                     (_name105075_ _e104980105072_))
                 (let ()
                   (declare (not safe))
                   (_K104976105056_ _name105075_ _phi105070_ _key105065_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_try-match104971105049_)))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _rest104948104956_))
                                       (let ((_hd104953105080_
                                              (let ()
                                                (declare (not safe))
                                                (##car _rest104948104956_)))
                                             (_tl104954105082_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _rest104948104956_))))
                                         (let* ((_out105085_ _hd104953105080_)
                                                (_rest105087_
                                                 _tl104954105082_))
                                           (declare (not safe))
                                           (_K104952105077_
                                            _rest105087_
                                            _out105085_)))
                                       (let ()
                                         (declare (not safe))
                                         (_else104950104964_))))))
                             _tl104913104930_)))
                        (let ()
                          (declare (not safe))
                          (_g104910104920_ _g104911104923_))))))
            (declare (not safe))
            (_g104909105089_ _stx104905_)))))
    (define gxc#generate-meta-provide%
      (lambda (_self104865_ _stx104866_)
        (let ((__tmp114957
               (let ()
                 (declare (not safe))
                 (slot-ref__0 _self104865_ 'state))))
          (declare (not safe))
          (gxc#meta-state-end-phi! __tmp114957))
        (let* ((_g104868104878_
                (lambda (_g104869104875_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104869104875_))))
               (_g104867104901_
                (lambda (_g104869104881_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104869104881_))
                      (let ((_e104873104883_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104869104881_))))
                        (let ((_hd104872104886_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104873104883_)))
                              (_tl104871104888_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104873104883_))))
                          ((lambda (_L104891_)
                             (let ((__tmp114958
                                    (map gxc#generate-runtime-identifier
                                         _L104891_)))
                               (declare (not safe))
                               (cons '%#provide __tmp114958)))
                           _tl104871104888_)))
                      (let ()
                        (declare (not safe))
                        (_g104868104878_ _g104869104881_))))))
          (declare (not safe))
          (_g104867104901_ _stx104866_))))
    (define gxc#generate-meta-extern%
      (lambda (_self104736_ _stx104737_)
        (letrec ((_generate1104739_
                  (lambda (_id104860_ _eid104861_)
                    (let ((_eid104863_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _eid104861_))))
                      (if (interned-symbol? _eid104863_)
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _stx104737_
                             _eid104863_)))
                      (let ((__tmp114960
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-identifier _id104860_)))
                            (__tmp114959
                             (let ()
                               (declare (not safe))
                               (cons _eid104863_ '()))))
                        (declare (not safe))
                        (cons __tmp114960 __tmp114959))))))
          (let* ((_g104741104769_
                  (lambda (_g104742104766_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104742104766_))))
                 (_g104740104857_
                  (lambda (_g104742104772_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104742104772_))
                        (let ((_e104747104774_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104742104772_))))
                          (let ((_hd104746104777_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104747104774_)))
                                (_tl104745104779_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104747104774_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _tl104745104779_))
                                (let ((_g114961_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _tl104745104779_
                                          '0))))
                                  (begin
                                    (let ((_g114962_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g114961_)
                                                 (##vector-length _g114961_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g114962_ 2)))
                                          (error "Context expects 2 values"
                                                 _g114962_)))
                                    (let ((_target104748104782_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g114961_ 0)))
                                          (_tl104750104784_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g114961_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl104750104784_))
                                          (letrec ((_loop104751104787_
                                                    (lambda (_hd104749104790_
                                                             _eid104755104792_
                                                             _id104756104794_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd104749104790_))
                                                          (let ((_e104752104797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd104749104790_))))
                    (let ((_lp-hd104753104800_
                           (let ()
                             (declare (not safe))
                             (##car _e104752104797_)))
                          (_lp-tl104754104802_
                           (let ()
                             (declare (not safe))
                             (##cdr _e104752104797_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _lp-hd104753104800_))
                          (let ((_e104761104805_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _lp-hd104753104800_))))
                            (let ((_hd104760104808_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e104761104805_)))
                                  (_tl104759104810_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e104761104805_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _tl104759104810_))
                                  (let ((_e104764104813_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _tl104759104810_))))
                                    (let ((_hd104763104816_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e104764104813_)))
                                          (_tl104762104818_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e104764104813_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl104762104818_))
                                          (let ((__tmp114967
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd104763104816_
                                                         _eid104755104792_)))
                                                (__tmp114966
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _hd104760104808_
                                                         _id104756104794_))))
                                            (declare (not safe))
                                            (_loop104751104787_
                                             _lp-tl104754104802_
                                             __tmp114967
                                             __tmp114966))
                                          (let ()
                                            (declare (not safe))
                                            (_g104741104769_
                                             _g104742104772_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g104741104769_ _g104742104772_)))))
                          (let ()
                            (declare (not safe))
                            (_g104741104769_ _g104742104772_)))))
                  (let ((_eid104757104821_ (reverse _eid104755104792_))
                        (_id104758104823_ (reverse _id104756104794_)))
                    ((lambda (_L104826_ _L104827_)
                       (let ((__tmp114963
                              (map _generate1104739_
                                   (let ((__tmp114964
                                          (lambda (_g104842104845_
                                                   _g104843104847_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g104842104845_
                                                    _g104843104847_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp114964 '() _L104827_))
                                   (let ((__tmp114965
                                          (lambda (_g104849104852_
                                                   _g104850104854_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g104849104852_
                                                    _g104850104854_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp114965 '() _L104826_)))))
                         (declare (not safe))
                         (cons '%#extern __tmp114963)))
                     _eid104757104821_
                     _id104758104823_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ()
                                              (declare (not safe))
                                              (_loop104751104787_
                                               _target104748104782_
                                               '()
                                               '())))
                                          (let ()
                                            (declare (not safe))
                                            (_g104741104769_
                                             _g104742104772_))))))
                                (let ()
                                  (declare (not safe))
                                  (_g104741104769_ _g104742104772_)))))
                        (let ()
                          (declare (not safe))
                          (_g104741104769_ _g104742104772_))))))
            (declare (not safe))
            (_g104740104857_ _stx104737_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_self104526_ _stx104527_)
        (letrec ((_generate1104529_
                  (lambda (_id104731_)
                    (let ((_eid104733_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _id104731_)))
                          (_ident104734_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _id104731_))))
                      (let ((__tmp114968
                             (let ((__tmp114969
                                    (let ()
                                      (declare (not safe))
                                      (cons _eid104733_ '()))))
                               (declare (not safe))
                               (cons _ident104734_ __tmp114969))))
                        (declare (not safe))
                        (cons '%#define-runtime __tmp114968)))))
                 (_generate*104530_
                  (lambda (_all104699_)
                    (let* ((_all104700104708_ _all104699_)
                           (_else104702104716_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (cons '%#begin _all104699_))))
                           (_K104704104721_
                            (lambda (_one104719_) _one104719_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _all104700104708_))
                          (let ((_hd104705104724_
                                 (let ()
                                   (declare (not safe))
                                   (##car _all104700104708_)))
                                (_tl104706104726_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _all104700104708_))))
                            (let ((_one104729_ _hd104705104724_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _tl104706104726_))
                                  (let ()
                                    (declare (not safe))
                                    (_K104704104721_ _one104729_))
                                  (let ()
                                    (declare (not safe))
                                    (_else104702104716_)))))
                          (let ()
                            (declare (not safe))
                            (_else104702104716_)))))))
          (let* ((_g104532104549_
                  (lambda (_g104533104546_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _g104533104546_))))
                 (_g104531104696_
                  (lambda (_g104533104552_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _g104533104552_))
                        (let ((_e104538104554_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _g104533104552_))))
                          (let ((_hd104537104557_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e104538104554_)))
                                (_tl104536104559_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e104538104554_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl104536104559_))
                                (let ((_e104541104562_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl104536104559_))))
                                  (let ((_hd104540104565_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e104541104562_)))
                                        (_tl104539104567_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e104541104562_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl104539104567_))
                                        (let ((_e104544104570_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl104539104567_))))
                                          (let ((_hd104543104573_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e104544104570_)))
                                                (_tl104542104575_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e104544104570_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl104542104575_))
                                                ((lambda (_L104578_ _L104579_)
                                                   (let _lp104595_ ((_rest104597_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L104579_)
                            (_r104598_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((___stx114112114113_
                                                             _rest104597_)
                                                            (_g104603104620_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          ___stx114112114113_)))))
               (let ((___kont114114114115_
                      (lambda (_L104683_)
                        (let ()
                          (declare (not safe))
                          (_lp104595_ _L104683_ _r104598_))))
                     (___kont114116114117_
                      (lambda (_L104656_ _L104657_)
                        (let ((__tmp114970
                               (let ((__tmp114971
                                      (let ()
                                        (declare (not safe))
                                        (_generate1104529_ _L104657_))))
                                 (declare (not safe))
                                 (cons __tmp114971 _r104598_))))
                          (declare (not safe))
                          (_lp104595_ _L104656_ __tmp114970))))
                     (___kont114118114119_
                      (lambda (_L104632_)
                        (let ((__tmp114972
                               (let ((__tmp114973
                                      (let ((__tmp114974
                                             (let ()
                                               (declare (not safe))
                                               (_generate1104529_ _L104632_))))
                                        (declare (not safe))
                                        (cons __tmp114974 '()))))
                                 (declare (not safe))
                                 (foldl1 cons __tmp114973 _r104598_))))
                          (declare (not safe))
                          (_generate*104530_ __tmp114972))))
                     (___kont114120114121_
                      (lambda ()
                        (let ((__tmp114975 (reverse _r104598_)))
                          (declare (not safe))
                          (_generate*104530_ __tmp114975)))))
                 (let ((_g104601104643_
                        (lambda ()
                          (let ((_L104632_ ___stx114112114113_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _L104632_))
                                (___kont114118114119_ _L104632_)
                                (___kont114120114121_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? ___stx114112114113_))
                       (let ((_e104608104672_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e ___stx114112114113_))))
                         (let ((_tl104606104677_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e104608104672_)))
                               (_hd104607104675_
                                (let ()
                                  (declare (not safe))
                                  (##car _e104608104672_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _hd104607104675_))
                               (let ((_e104609104680_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd104607104675_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (equal? _e104609104680_ '#f))
                                     (___kont114114114115_ _tl104606104677_)
                                     (___kont114116114117_
                                      _tl104606104677_
                                      _hd104607104675_)))
                               (___kont114116114117_
                                _tl104606104677_
                                _hd104607104675_))))
                       (let () (declare (not safe)) (_g104601104643_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _hd104543104573_
                                                 _hd104540104565_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_g104532104549_
                                                   _g104533104552_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g104532104549_ _g104533104552_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g104532104549_ _g104533104552_)))))
                        (let ()
                          (declare (not safe))
                          (_g104532104549_ _g104533104552_))))))
            (declare (not safe))
            (_g104531104696_ _stx104527_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_self104423_ _stx104424_)
        (let* ((_g104426104443_
                (lambda (_g104427104440_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104427104440_))))
               (_g104425104523_
                (lambda (_g104427104446_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104427104446_))
                      (let ((_e104432104448_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104427104446_))))
                        (let ((_hd104431104451_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104432104448_)))
                              (_tl104430104453_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104432104448_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104430104453_))
                              (let ((_e104435104456_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104430104453_))))
                                (let ((_hd104434104459_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104435104456_)))
                                      (_tl104433104461_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104435104456_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104433104461_))
                                      (let ((_e104438104464_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104433104461_))))
                                        (let ((_hd104437104467_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104438104464_)))
                                              (_tl104436104469_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104438104464_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl104436104469_))
                                              ((lambda (_L104472_ _L104473_)
                                                 (let* ((_eid104488_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _L104473_)))
                                                        (_phi104490_
                                                         (let ((__tmp114976
                                                                (gx#current-expander-phi)))
                                                           (declare (not safe))
                                                           (fx+ __tmp114976
                                                                '1)))
                                                        (_block104492_
                                                         (let ((__tmp114977
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (slot-ref__0 _self104423_ 'state))))
                   (declare (not safe))
                   (gxc#meta-state-begin-phi! __tmp114977 _phi104490_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_g104495104502_
                                                           (lambda (_g104496104499_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _g104496104499_))))
                  (_g104494104520_
                   (lambda (_g104496104505_)
                     ((lambda (_L104507_)
                        (let ()
                          (let ((__tmp114982
                                 (let ()
                                   (declare (not safe))
                                   (slot-ref__0 _self104423_ 'state)))
                                (__tmp114978
                                 (let ((__tmp114981
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0
                                           '#f
                                           '%#define-runtime)))
                                       (__tmp114979
                                        (let ((__tmp114980
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L104472_ '()))))
                                          (declare (not safe))
                                          (cons _L104507_ __tmp114980))))
                                   (declare (not safe))
                                   (cons __tmp114981 __tmp114979))))
                            (declare (not safe))
                            (gxc#meta-state-add-phi!
                             __tmp114982
                             _phi104490_
                             __tmp114978))))
                      _g104496104505_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (_g104494104520_
                                                      _eid104488_))
                                                   (if _block104492_
                                                       (let ((__tmp114986
                                                              (let ((__tmp114992
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp114993
                                    (let ((__tmp114994
                                           (let ((__tmp114995
                                                  (let ((__tmp114999
                                                         (let ((__tmp115000
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons 'load-module '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp115000)))
                (__tmp114996
                 (let ((__tmp114997
                        (let ((__tmp114998
                               (let ()
                                 (declare (not safe))
                                 (cons _block104492_ '()))))
                          (declare (not safe))
                          (cons '%#quote __tmp114998))))
                   (declare (not safe))
                   (cons __tmp114997 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp114999
                                                          __tmp114996))))
                                             (declare (not safe))
                                             (cons '%#call __tmp114995))))
                                      (declare (not safe))
                                      (cons __tmp114994 '()))))
                               (declare (not safe))
                               (cons '%#begin-syntax __tmp114993)))
                            (__tmp114987
                             (let ((__tmp114988
                                    (let ((__tmp114989
                                           (let ((__tmp114991
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-identifier
                                                     _L104473_)))
                                                 (__tmp114990
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _eid104488_ '()))))
                                             (declare (not safe))
                                             (cons __tmp114991 __tmp114990))))
                                      (declare (not safe))
                                      (cons '%#define-syntax __tmp114989))))
                               (declare (not safe))
                               (cons __tmp114988 '()))))
                        (declare (not safe))
                        (cons __tmp114992 __tmp114987))))
                 (declare (not safe))
                 (cons '%#begin __tmp114986))
               (let ((__tmp114983
                      (let ((__tmp114985
                             (let ()
                               (declare (not safe))
                               (gxc#generate-runtime-identifier _L104473_)))
                            (__tmp114984
                             (let ()
                               (declare (not safe))
                               (cons _eid104488_ '()))))
                        (declare (not safe))
                        (cons __tmp114985 __tmp114984))))
                 (declare (not safe))
                 (cons '%#define-syntax __tmp114983)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd104437104467_
                                               _hd104434104459_)
                                              (let ()
                                                (declare (not safe))
                                                (_g104426104443_
                                                 _g104427104446_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g104426104443_ _g104427104446_)))))
                              (let ()
                                (declare (not safe))
                                (_g104426104443_ _g104427104446_)))))
                      (let ()
                        (declare (not safe))
                        (_g104426104443_ _g104427104446_))))))
          (declare (not safe))
          (_g104425104523_ _stx104424_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_self104355_ _stx104356_)
        (let* ((_g104358104375_
                (lambda (_g104359104372_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104359104372_))))
               (_g104357104420_
                (lambda (_g104359104378_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104359104378_))
                      (let ((_e104364104380_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104359104378_))))
                        (let ((_hd104363104383_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104364104380_)))
                              (_tl104362104385_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104364104380_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104362104385_))
                              (let ((_e104367104388_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104362104385_))))
                                (let ((_hd104366104391_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104367104388_)))
                                      (_tl104365104393_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104367104388_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl104365104393_))
                                      (let ((_e104370104396_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl104365104393_))))
                                        (let ((_hd104369104399_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e104370104396_)))
                                              (_tl104368104401_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e104370104396_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl104368104401_))
                                              ((lambda (_L104404_ _L104405_)
                                                 (let ((__tmp115001
                                                        (let ((__tmp115004
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gxc#generate-runtime-identifier _L104405_)))
                      (__tmp115002
                       (let ((__tmp115003
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-identifier _L104404_))))
                         (declare (not safe))
                         (cons __tmp115003 '()))))
                  (declare (not safe))
                  (cons __tmp115004 __tmp115002))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '%#define-alias
                                                         __tmp115001)))
                                               _hd104369104399_
                                               _hd104366104391_)
                                              (let ()
                                                (declare (not safe))
                                                (_g104358104375_
                                                 _g104359104378_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g104358104375_ _g104359104378_)))))
                              (let ()
                                (declare (not safe))
                                (_g104358104375_ _g104359104378_)))))
                      (let ()
                        (declare (not safe))
                        (_g104358104375_ _g104359104378_))))))
          (declare (not safe))
          (_g104357104420_ _stx104356_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_self104352_ _stx104353_)
        (let ((__tmp115006
               (let () (declare (not safe)) (slot-ref__0 _self104352_ 'state)))
              (__tmp115005 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp115006 __tmp115005 _stx104353_))
        (let ()
          (declare (not safe))
          (gxc#generate-meta-define-values% _self104352_ _stx104353_))))
    (define gxc#generate-meta-phi-expr
      (lambda (_self104349_ _stx104350_)
        (let ((__tmp115008
               (let () (declare (not safe)) (slot-ref__0 _self104349_ 'state)))
              (__tmp115007 (gx#current-expander-phi)))
          (declare (not safe))
          (gxc#meta-state-add-phi! __tmp115008 __tmp115007 _stx104350_))
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp115011 (list))
            (__tmp115009
             (let ((__tmp115010
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115010 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp115011
         '(src n open blocks)
         __tmp115009
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _$args104346_
        (apply make-instance gxc#meta-state::t _$args104346_)))
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
      (lambda (_self104343_ _ctx104344_)
        (if (let ((__tmp115020
                   (let ()
                     (declare (not safe))
                     (##structure-length _self104343_))))
              (declare (not safe))
              (##fx< '4 __tmp115020))
            (begin
              (let ((__tmp115014
                     (let ((__tmp115015
                            (##structure-ref
                             _ctx104344_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp115015)))
                    (__tmp115013
                     (let ()
                       (declare (not safe))
                       (##structure-type _self104343_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self104343_
                 __tmp115014
                 '1
                 __tmp115013
                 '#f))
              (let ((__tmp115016
                     (let ()
                       (declare (not safe))
                       (##structure-type _self104343_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self104343_
                 '1
                 '2
                 __tmp115016
                 '#f))
              (let ((__tmp115018
                     (let () (declare (not safe)) (make-hash-table-eq)))
                    (__tmp115017
                     (let ()
                       (declare (not safe))
                       (##structure-type _self104343_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self104343_
                 __tmp115018
                 '3
                 __tmp115017
                 '#f))
              (let ((__tmp115019
                     (let ()
                       (declare (not safe))
                       (##structure-type _self104343_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _self104343_
                 '()
                 '4
                 __tmp115019
                 '#f)))
            (let ((__tmp115012
                   (let ()
                     (declare (not safe))
                     (##vector-length _self104343_))))
              (declare (not safe))
              (error '"struct-instance-init!: too many arguments for struct"
                     _self104343_
                     '4
                     __tmp115012)))))
    (let ()
      (declare (not safe))
      (bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp115023 (list))
            (__tmp115021
             (let ((__tmp115022
                    (let () (declare (not safe)) (cons 'struct: '#t))))
               (declare (not safe))
               (cons __tmp115022 '()))))
        (declare (not safe))
        (make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp115023
         '(ctx phi n code)
         __tmp115021
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _$args104218_
        (apply make-instance gxc#meta-state-block::t _$args104218_)))
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
      (lambda (_state104177_ _phi104178_)
        (let* ((_state104179104187_ _state104177_)
               (_E104181104191_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching" _state104179104187_))))
               (_K104182104200_
                (lambda (_open104194_ _n104195_ _src104196_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _open104194_ _phi104178_))
                      '#f
                      (let ((_block-ref104198_
                             (string-append
                              _src104196_
                              '"~"
                              (number->string _n104195_))))
                        (##structure-set!
                         _state104177_
                         (let () (declare (not safe)) (fx+ _n104195_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp115024
                               (let ((__tmp115025
                                      (gx#current-expander-context)))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp115025
                                  _phi104178_
                                  _n104195_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _open104194_ _phi104178_ __tmp115024))
                        _block-ref104198_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _state104179104187_
                 'gxc#meta-state::t))
              (let* ((_e104183104203_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state104179104187_
                         '1
                         gxc#meta-state::t
                         '#f)))
                     (_src104206_ _e104183104203_)
                     (_e104184104208_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state104179104187_
                         '2
                         gxc#meta-state::t
                         '#f)))
                     (_n104211_ _e104184104208_)
                     (_e104185104213_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _state104179104187_
                         '3
                         gxc#meta-state::t
                         '#f)))
                     (_open104216_ _e104185104213_))
                (declare (not safe))
                (_K104182104200_ _open104216_ _n104211_ _src104206_))
              (let () (declare (not safe)) (_E104181104191_))))))
    (define gxc#meta-state-add-phi!
      (lambda (_state104171_ _phi104172_ _stx104173_)
        (let ((_block104175_
               (let ((__tmp115026
                      (##structure-ref
                       _state104171_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp115026 _phi104172_))))
          (##structure-set!
           _block104175_
           (let ((__tmp115027
                  (##structure-ref
                   _block104175_
                   '4
                   gxc#meta-state-block::t
                   '#f)))
             (declare (not safe))
             (cons _stx104173_ __tmp115027))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_state104166_)
        (##structure-set!
         _state104166_
         (let ((__tmp115030
                (lambda (_g115031_ _block104168_ _r104169_)
                  (let ()
                    (declare (not safe))
                    (cons _block104168_ _r104169_))))
               (__tmp115029
                (##structure-ref _state104166_ '4 gxc#meta-state::t '#f))
               (__tmp115028
                (##structure-ref _state104166_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp115030 __tmp115029 __tmp115028))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _state104166_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_state104118_)
        (let () (declare (not safe)) (gxc#meta-state-end-phi! _state104118_))
        (let ((__tmp115033
               (lambda (_block104120_ _r104121_)
                 (let* ((_block104122104131_ _block104120_)
                        (_E104124104135_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _block104122104131_))))
                        (_K104125104143_
                         (lambda (_code104138_
                                  _n104139_
                                  _phi104140_
                                  _ctx104141_)
                           (if (let ()
                                 (declare (not safe))
                                 (null? _code104138_))
                               _r104121_
                               (let ((__tmp115034
                                      (let ((__tmp115035
                                             (let ((__tmp115036
                                                    (let ((__tmp115037
                                                           (let ((__tmp115038
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp115039 (reverse _code104138_)))
                            (declare (not safe))
                            (cons '%#begin __tmp115039))))
                     (declare (not safe))
                     (cons __tmp115038 '()))))
              (declare (not safe))
              (cons _n104139_ __tmp115037))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _phi104140_
                                                     __tmp115036))))
                                        (declare (not safe))
                                        (cons _ctx104141_ __tmp115035))))
                                 (declare (not safe))
                                 (cons __tmp115034 _r104121_))))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _block104122104131_
                          'gxc#meta-state-block::t))
                       (let* ((_e104126104146_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block104122104131_
                                  '1
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_ctx104149_ _e104126104146_)
                              (_e104127104151_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block104122104131_
                                  '2
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_phi104154_ _e104127104151_)
                              (_e104128104156_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block104122104131_
                                  '3
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_n104159_ _e104128104156_)
                              (_e104129104161_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _block104122104131_
                                  '4
                                  gxc#meta-state-block::t
                                  '#f)))
                              (_code104164_ _e104129104161_))
                         (declare (not safe))
                         (_K104125104143_
                          _code104164_
                          _n104159_
                          _phi104154_
                          _ctx104149_))
                       (let () (declare (not safe)) (_E104124104135_))))))
              (__tmp115032
               (##structure-ref _state104118_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl1 __tmp115033 '() __tmp115032))))
    (define gxc#collect-expression-refs
      (lambda (_stx104114_)
        (let ((_ht104116_ (let () (declare (not safe)) (make-hash-table-eq))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-expression-refs _stx104114_ 'table: _ht104116_))
          _ht104116_)))
    (define gxc#collect-refs-ref%
      (lambda (_self104057_ _stx104058_)
        (let* ((_g104060104073_
                (lambda (_g104061104070_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g104061104070_))))
               (_g104059104111_
                (lambda (_g104061104076_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g104061104076_))
                      (let ((_e104065104078_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g104061104076_))))
                        (let ((_hd104064104081_
                               (let ()
                                 (declare (not safe))
                                 (##car _e104065104078_)))
                              (_tl104063104083_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e104065104078_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl104063104083_))
                              (let ((_e104068104086_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl104063104083_))))
                                (let ((_hd104067104089_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e104068104086_)))
                                      (_tl104066104091_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e104068104086_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl104066104091_))
                                      ((lambda (_L104094_)
                                         (let* ((_bind104106_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _L104094_)))
                                                (_eid104108_
                                                 (if _bind104106_
                                                     (##structure-ref
                                                      _bind104106_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L104094_)))))
                                           (let ((__tmp115040
                                                  (let ()
                                                    (declare (not safe))
                                                    (slot-ref__0
                                                     _self104057_
                                                     'table))))
                                             (declare (not safe))
                                             (hash-put!
                                              __tmp115040
                                              _eid104108_
                                              _eid104108_))))
                                       _hd104067104089_)
                                      (let ()
                                        (declare (not safe))
                                        (_g104060104073_ _g104061104076_)))))
                              (let ()
                                (declare (not safe))
                                (_g104060104073_ _g104061104076_)))))
                      (let ()
                        (declare (not safe))
                        (_g104060104073_ _g104061104076_))))))
          (declare (not safe))
          (_g104059104111_ _stx104058_))))
    (define gxc#collect-refs-setq%
      (lambda (_self103984_ _stx103985_)
        (let* ((_g103987104004_
                (lambda (_g103988104001_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103988104001_))))
               (_g103986104054_
                (lambda (_g103988104007_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103988104007_))
                      (let ((_e103993104009_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103988104007_))))
                        (let ((_hd103992104012_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103993104009_)))
                              (_tl103991104014_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103993104009_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103991104014_))
                              (let ((_e103996104017_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103991104014_))))
                                (let ((_hd103995104020_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103996104017_)))
                                      (_tl103994104022_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103996104017_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl103994104022_))
                                      (let ((_e103999104025_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl103994104022_))))
                                        (let ((_hd103998104028_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e103999104025_)))
                                              (_tl103997104030_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e103999104025_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl103997104030_))
                                              ((lambda (_L104033_ _L104034_)
                                                 (let* ((_bind104049_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _L104034_)))
                                                        (_eid104051_
                                                         (if _bind104049_
                                                             (##structure-ref
                                                              _bind104049_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _L104034_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp115041
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _self103984_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp115041
                                                      _eid104051_
                                                      _eid104051_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _self103984_
                                                      _L104033_))))
                                               _hd103998104028_
                                               _hd103995104020_)
                                              (let ()
                                                (declare (not safe))
                                                (_g103987104004_
                                                 _g103988104007_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103987104004_ _g103988104007_)))))
                              (let ()
                                (declare (not safe))
                                (_g103987104004_ _g103988104007_)))))
                      (let ()
                        (declare (not safe))
                        (_g103987104004_ _g103988104007_))))))
          (declare (not safe))
          (_g103986104054_ _stx103985_))))
    (define gxc#find-runtime-begin%
      (lambda (_self103941_ _stx103942_)
        (let* ((_g103944103954_
                (lambda (_g103945103951_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103945103951_))))
               (_g103943103981_
                (lambda (_g103945103957_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103945103957_))
                      (let ((_e103949103959_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103945103957_))))
                        (let ((_hd103948103962_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103949103959_)))
                              (_tl103947103964_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103949103959_))))
                          ((lambda (_L103967_)
                             (let ((__tmp115042
                                    (lambda (_g103976103978_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _self103941_
                                         _g103976103978_)))))
                               (declare (not safe))
                               (ormap1 __tmp115042 _L103967_)))
                           _tl103947103964_)))
                      (let ()
                        (declare (not safe))
                        (_g103944103954_ _g103945103957_))))))
          (declare (not safe))
          (_g103943103981_ _stx103942_))))
    (define gxc#count-values-single% (lambda (_self103938_ _stx103939_) '1))
    (define gxc#count-values-call%
      (lambda (_self103804_ _stx103805_)
        (let* ((___stx114142114143_ _stx103805_)
               (_g103808103837_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx114142114143_)))))
          (let ((___kont114144114145_
                 (lambda (_L103905_ _L103906_)
                   (length (let ((__tmp115043
                                  (lambda (_g103927103930_ _g103928103932_)
                                    (let ()
                                      (declare (not safe))
                                      (cons _g103927103930_
                                            _g103928103932_)))))
                             (declare (not safe))
                             (foldr1 __tmp115043 '() _L103905_)))))
                (___kont114148114149_ (lambda () '#f)))
            (let ((___match114187114188_
                   (lambda (_e103814103849_
                            _hd103813103852_
                            _tl103812103854_
                            _e103817103857_
                            _hd103816103860_
                            _tl103815103862_
                            _e103820103865_
                            _hd103819103868_
                            _tl103818103870_
                            _e103823103873_
                            _hd103822103876_
                            _tl103821103878_
                            ___splice114146114147_
                            _target103824103881_
                            _tl103826103883_)
                     (letrec ((_loop103827103886_
                               (lambda (_hd103825103889_ _rand103831103891_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _hd103825103889_))
                                     (let ((_e103828103894_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _hd103825103889_))))
                                       (let ((_lp-tl103830103899_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e103828103894_)))
                                             (_lp-hd103829103897_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e103828103894_))))
                                         (let ((__tmp115044
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _lp-hd103829103897_
                                                        _rand103831103891_))))
                                           (declare (not safe))
                                           (_loop103827103886_
                                            _lp-tl103830103899_
                                            __tmp115044))))
                                     (let ((_rand103832103902_
                                            (reverse _rand103831103891_)))
                                       (let ((_L103905_ _rand103832103902_)
                                             (_L103906_ _hd103822103876_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _L103906_
                                                'values))
                                             (___kont114144114145_
                                              _L103905_
                                              _L103906_)
                                             (___kont114148114149_))))))))
                       (let ()
                         (declare (not safe))
                         (_loop103827103886_ _target103824103881_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx114142114143_))
                  (let ((_e103814103849_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx114142114143_))))
                    (let ((_tl103812103854_
                           (let ()
                             (declare (not safe))
                             (##cdr _e103814103849_)))
                          (_hd103813103852_
                           (let ()
                             (declare (not safe))
                             (##car _e103814103849_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl103812103854_))
                          (let ((_e103817103857_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl103812103854_))))
                            (let ((_tl103815103862_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e103817103857_)))
                                  (_hd103816103860_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e103817103857_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd103816103860_))
                                  (let ((_e103820103865_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd103816103860_))))
                                    (let ((_tl103818103870_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e103820103865_)))
                                          (_hd103819103868_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e103820103865_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd103819103868_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd103819103868_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl103818103870_))
                                                  (let ((_e103823103873_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl103818103870_))))
                                                    (let ((_tl103821103878_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e103823103873_)))
                                                          (_hd103822103876_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e103823103873_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl103821103878_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl103815103862_))
                      (let ((___splice114146114147_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl103815103862_ '0))))
                        (let ((_tl103826103883_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice114146114147_ '1)))
                              (_target103824103881_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice114146114147_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl103826103883_))
                              (___match114187114188_
                               _e103814103849_
                               _hd103813103852_
                               _tl103812103854_
                               _e103817103857_
                               _hd103816103860_
                               _tl103815103862_
                               _e103820103865_
                               _hd103819103868_
                               _tl103818103870_
                               _e103823103873_
                               _hd103822103876_
                               _tl103821103878_
                               ___splice114146114147_
                               _target103824103881_
                               _tl103826103883_)
                              (___kont114148114149_))))
                      (___kont114148114149_))
                  (___kont114148114149_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont114148114149_))
                                              (___kont114148114149_))
                                          (___kont114148114149_))))
                                  (___kont114148114149_))))
                          (___kont114148114149_))))
                  (___kont114148114149_)))))))
    (define gxc#count-values-if%
      (lambda (_self103707_ _stx103708_)
        (let* ((_g103710103731_
                (lambda (_g103711103728_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g103711103728_))))
               (_g103709103801_
                (lambda (_g103711103734_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _g103711103734_))
                      (let ((_e103717103736_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g103711103734_))))
                        (let ((_hd103716103739_
                               (let ()
                                 (declare (not safe))
                                 (##car _e103717103736_)))
                              (_tl103715103741_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e103717103736_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl103715103741_))
                              (let ((_e103720103744_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl103715103741_))))
                                (let ((_hd103719103747_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e103720103744_)))
                                      (_tl103718103749_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e103720103744_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl103718103749_))
                                      (let ((_e103723103752_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl103718103749_))))
                                        (let ((_hd103722103755_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e103723103752_)))
                                              (_tl103721103757_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e103723103752_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl103721103757_))
                                              (let ((_e103726103760_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl103721103757_))))
                                                (let ((_hd103725103763_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e103726103760_)))
                                                      (_tl103724103765_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e103726103760_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl103724103765_))
                                                      ((lambda (_L103768_
                                                                _L103769_
                                                                _L103770_)
                                                         (let ((_c1103787103789_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _self103707_ _L103769_))))
                   (if _c1103787103789_
                       (let* ((_c1103792_ _c1103787103789_)
                              (_c2103793103795_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _self103707_ _L103768_))))
                         (if _c2103793103795_
                             (let ((_c2103798_ _c2103793103795_))
                               (if (fx= _c1103792_ _c2103798_) _c1103792_ '#f))
                             '#f))
                       '#f)))
               _hd103725103763_
               _hd103722103755_
               _hd103719103747_)
              (let ()
                (declare (not safe))
                (_g103710103731_ _g103711103734_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g103710103731_
                                                 _g103711103734_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g103710103731_ _g103711103734_)))))
                              (let ()
                                (declare (not safe))
                                (_g103710103731_ _g103711103734_)))))
                      (let ()
                        (declare (not safe))
                        (_g103710103731_ _g103711103734_))))))
          (declare (not safe))
          (_g103709103801_ _stx103708_))))))
